package MyBlockDesign;

import javax.swing.*;
import java.awt.Color;
import javax.swing.JButton;

public class Frame extends LFrame.MainWindow {

    private JButton cmdCircuit;

    private final Project project;
    private final Canvas layoutCanvas;

    private final BasicZoomModel layoutZoomModel;

    public Frame(Project project) {
        super(project);
        this.project = project;

        initComponents();

        setBackground(Color.white);
//        setDefaultCloseOperation(WindowConstants.DO_NOTHING_ON_CLOSE);


        layoutCanvas = new Canvas(project);
        final CanvasPane canvasPane = new CanvasPane(layoutCanvas);

        layoutZoomModel = new BasicZoomModel(
                AppPreferences.LAYOUT_SHOW_GRID,
                AppPreferences.LAYOUT_ZOOM,
                buildZoomSteps(),
                canvasPane);
    }

    public void initComponents() {

    }

    public Canvas getCanvas() {
        return layoutCanvas;
    }
}
