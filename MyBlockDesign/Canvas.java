package MyBlockDesign;

import javax.swing.*;
import java.awt.*;
import java.awt.event.AdjustmentEvent;
import java.awt.event.AdjustmentListener;
import java.awt.event.MouseWheelListener;

public class Canvas extends JPanel implements CanvasPaneContents, AdjustmentListener {


    private static final int THRESH_SIZE_UPDATE = 10;

    private final Project proj;
    private CanvasPainter painter;

    private final MyViewport viewport = new MyViewport();
    private CanvasPane canvasPane;
    private Bounds oldPreferredSize;

    public Canvas(Project proj) {
        this.proj = proj;
        this.canvasPane = null;
    }


    @Override
    public Dimension getPreferredScrollableViewportSize() {
        return getPreferredSize();
    }

    @Override
    public int getScrollableBlockIncrement(final Rectangle visibleRect,
                                           final int orientation, final int direction) {
        return canvasPane.supportScrollableBlockIncrement(visibleRect, orientation, direction);
    }

    @Override
    public boolean getScrollableTracksViewportHeight() {
        return false;
    }


    @Override
    public boolean getScrollableTracksViewportWidth() {
        return false;
    }


    @Override
    public int getScrollableUnitIncrement(final Rectangle visibleRect,
                                          final int orientation, final int direction) {
        return canvasPane.supportScrollableUnitIncrement(visibleRect, orientation, direction);
    }

    @Override
    public void recomputeSize() {
        computeSize(true);
    }


    @Override
    public void setCanvasPane(final CanvasPane value) {
        canvasPane = value;
        canvasPane.setViewport(viewport);
        canvasPane.getHorizontalScrollBar().addAdjustmentListener(this);
        canvasPane.getVerticalScrollBar().addAdjustmentListener(this);
        viewport.setView(this);
        setOpaque(false);
        computeSize(true);
    }

    @Override
    public void adjustmentValueChanged(AdjustmentEvent e) {
//        updateArrows();
    }


    @Override
    public void center() {
//        final var g = getGraphics();
//        final Bound bounds = (g != null)
//                ? proj.getCurrentCircuit().getBounds(getGraphics())
//                : proj.getCurrentCircuit().getBounds();
//        if (bounds.getHeight() == 0 || bounds.getWidth() == 0) {
//            setScrollBar(0, 0);
//            return;
//        }
//        final var xpos =
//                (int)
//                        (Math.round(
//                                bounds.getX() * getZoomFactor()
//                                        - (canvasPane.getViewport().getSize().getWidth()
//                                        - bounds.getWidth() * getZoomFactor())
//                                        / 2));
//        final var ypos =
//                (int)
//                        (Math.round(
//                                bounds.getY() * getZoomFactor()
//                                        - (canvasPane.getViewport().getSize().getHeight()
//                                        - bounds.getHeight() * getZoomFactor())
//                                        / 2));
//        setScrollBar(xpos, ypos);
    }

    public void setScrollBar(int posX, int posY) {
        setHorizontalScrollBar(posX);
        setVerticalScrollBar(posY);
    }

    public void setVerticalScrollBar(int posY) {
        canvasPane.getVerticalScrollBar().setValue(posY);
    }

    public void setHorizontalScrollBar(int posX) {
        canvasPane.getHorizontalScrollBar().setValue(posX);
    }

    public void computeSize(final boolean immediate) {
//        if (proj.getCurrentCircuit() == null) return;
//        final var g = getGraphics();
//        final Bounds bounds = (g != null)
//                ? proj.getCurrentCircuit().getBounds(getGraphics())
//                : proj.getCurrentCircuit().getBounds();
//        var height = 0;
//        var width = 0;
//        if (bounds != null && viewport != null) {
//            width = bounds.getX() + bounds.getWidth() + viewport.getWidth();
//            height = bounds.getY() + bounds.getHeight() + viewport.getHeight();
//        }
//        final var dim = (canvasPane == null)
//                ? new Dimension(width, height)
//                : canvasPane.supportPreferredSize(width, height);
//        if (!immediate) {
//            final var old = oldPreferredSize;
//            if (old != null
//                    && Math.abs(old.getWidth() - dim.width) < THRESH_SIZE_UPDATE
//                    && Math.abs(old.getHeight() - dim.height) < THRESH_SIZE_UPDATE) {
//                return;
//            }
//        }
//        oldPreferredSize = Bounds.create(0, 0, dim.width, dim.height);
//        setPreferredSize(dim);
//        revalidate();
    }

//    public void updateArrows() {
//        /* Disable for VHDL content */
//        if (proj.getCurrentCircuit() == null) return;
//        final var g = getGraphics();
//        final var circBds = (g != null)
//                ? proj.getCurrentCircuit().getBounds(getGraphics())
//                : proj.getCurrentCircuit().getBounds();
//        // no circuit
//        if (circBds == null || circBds.getHeight() == 0 || circBds.getWidth() == 0) return;
//        var x = circBds.getX();
//        var y = circBds.getY();
//        if (x < 0) x = 0;
//        if (y < 0) y = 0;
//        setArrows(x, y, x + circBds.getWidth(), y + circBds.getHeight());
//    }

    GridPainter getGridPainter() {
        return painter.getGridPainter();
    }

    private class MyViewport extends JViewport {

    }
}
