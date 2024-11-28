package MyBlockDesign.drmips.gui.main;


import static MyBlockDesign.drmips.gui.Strings.S;
import MyBlockDesign.*;
import MyBlockDesign.drmips.data.Direction;
import MyBlockDesign.drmips.gui.generic.*;
import MyBlockDesign.drmips.prefs.AppPreferences;
import MyBlockDesign.drmips.proj.Project;
import MyBlockDesign.drmips.util.HorizontalSplitPane;
import MyBlockDesign.drmips.util.VerticalSplitPane;

import java.awt.*;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.util.ArrayList;
import javax.swing.*;

public class Frame extends LFrame.MainWindow {

    public static final String EDIT_LAYOUT = "layout";
    private JButton cmdCircuit;

//    private final MainRegionVerticalSplitPane mainRegion;
    private final Project project;
    private final Canvas layoutCanvas;
    private final HorizontalSplitPane leftRegion;
//    private final HorizontalSplitPane rightRegion;
//    private final JPanel rightPanel;
    private final JPanel mainPanelSuper;
    private final CardPanel mainPanel;
    private final BasicZoomModel layoutZoomModel;

    // left-side elements
    private final JTabbedPane topTab;
    private final JTabbedPane bottomTab;
    private final AttrTable attrTable;
    private final ZoomControl zoom;
    // for the Layout view.

    public Frame(Project project) {
        super(project);
        this.project = project;

        setBackground(Color.white);
//        setDefaultCloseOperation(WindowConstants.DO_NOTHING_ON_CLOSE);
//        addWindowListener(new MyWindowListener());

        layoutCanvas = new Canvas(project);
        final CanvasPane canvasPane = new CanvasPane(layoutCanvas);

        layoutZoomModel = new BasicZoomModel(
                AppPreferences.LAYOUT_SHOW_GRID,
                AppPreferences.LAYOUT_ZOOM,
                buildZoomSteps(),
                canvasPane);

        layoutCanvas.getGridPainter().setZoomModel(layoutZoomModel);


        // setup the left-side components
        bottomTab = new JTabbedPane();
        bottomTab.setFont(AppPreferences.getScaledFont(new Font("Dialog", Font.BOLD, 9)));
        bottomTab.add(attrTable = new AttrTable(this));
        bottomTab.add(new RegTabContent(this));

        zoom = new ZoomControl(layoutZoomModel, layoutCanvas);

        // setup the central area
        mainPanelSuper = new JPanel(new BorderLayout());
        canvasPane.setZoomModel(layoutZoomModel);
        mainPanel = new CardPanel();
        mainPanel.addView(EDIT_LAYOUT, canvasPane);
        mainPanel.setView(EDIT_LAYOUT);
        mainPanelSuper.add(mainPanel, BorderLayout.CENTER);

        // set up the contents, split down the middle, with the canvas
        // on the right and a split pane on the left containing the
        // explorer and attribute values.

        topTab = new JTabbedPane();
        topTab.setFont(new Font("Dialog", Font.BOLD,9));

        final var attrFooter = new JPanel(new BorderLayout());
        attrFooter.add(zoom);

        final var bottomTabAndZoom = new JPanel(new BorderLayout());
        bottomTabAndZoom.add(bottomTab, BorderLayout.CENTER);
        bottomTabAndZoom.add(attrFooter, BorderLayout.SOUTH);
        leftRegion = new HorizontalSplitPane(topTab, bottomTabAndZoom, AppPreferences.WINDOW_LEFT_SPLIT.get());

//        /* TODO fix it */
//        rightRegion = new HorizontalSplitPane(null, null, 1.0);
//
//        rightPanel = new JPanel(new BorderLayout());
//        rightPanel.add(rightRegion, BorderLayout.CENTER);
//
//        mainRegion = new MainRegionVerticalSplitPane(leftRegion, rightPanel);
        getContentPane().add(leftRegion, BorderLayout.CENTER);

        this.setSize(AppPreferences.WINDOW_WIDTH.get(), AppPreferences.WINDOW_HEIGHT.get());

        project.setFrame(this);


    }

    public Canvas getCanvas() {
        return layoutCanvas;
    }

    private ArrayList<Double> buildZoomSteps() {
        // Pairs must be in acending order (sorted by maxZoom value).
        final var config = new ZoomStepPair[] {new ZoomStepPair(50, 5), new ZoomStepPair(200, 10), new ZoomStepPair(1000, 20)};

        // Result zoomsteps.
        final var steps = new ArrayList<Double>();
        var zoom = 0D;
        for (final var pair : config) {
            while (zoom < pair.maxZoom()) {
                zoom += pair.step();
                steps.add(zoom);
            }
        }
        return steps;
    }


    private record ZoomStepPair(int maxZoom, int step) {}


    private static class MainRegionVerticalSplitPane extends VerticalSplitPane implements PropertyChangeListener {
        private final JComponent componentTree;
        private final JComponent mainCanvas;
        private Direction orientation;

        public MainRegionVerticalSplitPane(JComponent componentTree, JComponent mainCanvas) {
            this(componentTree, mainCanvas, AppPreferences.WINDOW_MAIN_SPLIT.get(),
                    Direction.parse(AppPreferences.CANVAS_PLACEMENT.get()));
        }

        public MainRegionVerticalSplitPane(JComponent componentTree, JComponent mainCanvas, double fraction,
                                           Direction orientation) {
            super();

            this.componentTree = componentTree;
            this.mainCanvas = mainCanvas;
            this.orientation = orientation;
            this.realFraction = fraction;

            if (orientation == Direction.EAST) {
                init(componentTree, mainCanvas, fraction);
            } else {
                init(mainCanvas, componentTree, fraction);
            }

            AppPreferences.CANVAS_PLACEMENT.addPropertyChangeListener(this);
        }

        public void setOrientation(Direction newOrientation) {
            if (newOrientation != orientation) {
                orientation = newOrientation;
            }
        }

        @Override
        public void propertyChange(PropertyChangeEvent event) {
            if (AppPreferences.CANVAS_PLACEMENT.isSource(event)) {
                swapComponents();
            }
        }

        /**
         * As pane swapping should be fully transparent to the outer world, we must facade real
         * fraction value here, as it must stay unaltered regardles of the real content order.
         */
        private double realFraction;

        @Override
        public double getFraction() {
            return realFraction;
        }

        @Override
        public void setFraction(double value) {
            realFraction = value;
            super.setFraction(orientation == Direction.EAST ? value : 1 - value);
        }

        protected void swapComponents() {
            final var tmpOrient = Direction.parse(AppPreferences.CANVAS_PLACEMENT.get());
            if (orientation != tmpOrient) {
                orientation = tmpOrient;

                final var isSwapped = (orientation == Direction.WEST);
                compLeft = isSwapped ? mainCanvas : componentTree;
                compRight = isSwapped ? componentTree : mainCanvas;

                setFraction(realFraction);

                // setFraction() calls revalidate() if fraction changed, so for value of 0.5
                // the swap needs manual trigger
                if (super.getFraction() == realFraction) {
                    revalidate();
                }
            }
        }
    }

//    // returns true if user is OK with proceeding
//    public boolean confirmClose(String title) {
//        if (!project.isFileDirty()) return true;
//
//        final var message = S.get("confirmDiscardMessage", project.getLogisimFile().getName());
//
//        toFront();
//        final String[] options = {S.get("saveOption"), S.get("discardOption"), S.get("cancelOption")};
//        final var result = OptionPane.showOptionDialog(this, message, title, 0, OptionPane.QUESTION_MESSAGE, null, options, options[0]);
//        var ret = false;
//        if (result == 0) {
//            ret = ProjectActions.doSave(project);
//            project.getLogisimFile().stopAutosaveThread(false);
//        } else if (result == 1) {
//            // Close the current project
//            dispose();
//            ret = true;
//            project.getLogisimFile().stopAutosaveThread(true);
//        }
//
//        return ret;
//    }
//
//    class MyWindowListener extends WindowAdapter {
//
//        @Override
//        public void windowClosing(WindowEvent e) {
//            if (confirmClose(S.get("confirmCloseTitle"))) {
//                layoutCanvas.closeCanvas();
//                timer.cancel();
//                Frame.this.dispose();
//            }
//        }
//
//        @Override
//        public void windowOpened(WindowEvent e) {
//            layoutCanvas.computeSize(true);
//        }
//    }
}
