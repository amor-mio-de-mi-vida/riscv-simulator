package MyBlockDesign;

import javax.swing.*;
import java.awt.Color;
import java.util.ArrayList;
import javax.swing.JButton;

public class Frame extends LFrame.MainWindow {

    private JButton cmdCircuit;

    private final Project project;
    private final Canvas layoutCanvas;

    private final BasicZoomModel layoutZoomModel;

    public Frame(Project project) {
        super(project);
        this.project = project;

        setBackground(Color.white);
//        setDefaultCloseOperation(WindowConstants.DO_NOTHING_ON_CLOSE);


        layoutCanvas = new Canvas(project);
        final CanvasPane canvasPane = new CanvasPane(layoutCanvas);

        layoutZoomModel = new BasicZoomModel(
                AppPreferences.LAYOUT_SHOW_GRID,
                AppPreferences.LAYOUT_ZOOM,
                buildZoomSteps(),
                canvasPane);
        layoutCanvas.getGridPainter().setZoomModel(layoutZoomModel);
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


}
