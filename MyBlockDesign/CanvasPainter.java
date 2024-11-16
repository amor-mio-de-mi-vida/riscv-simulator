package MyBlockDesign;

public class CanvasPainter {
    private final Canvas canvas;
    private final GridPainter grid;


    CanvasPainter(Canvas canvas) {
        this.canvas = canvas;
        this.grid = new GridPainter(canvas);
    }


    GridPainter getGridPainter() {
        return grid;
    }
}
