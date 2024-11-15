package MyBlockDesign;

import javax.swing.*;

import java.awt.Dimension;
import java.awt.Rectangle;
import java.awt.event.MouseWheelListener;
import javax.swing.Scrollable;

public interface CanvasPaneContents extends Scrollable {
    Dimension getPreferredScrollableViewportSize();

    int getScrollableBlockIncrement(final Rectangle visibleRect, final int orientation, final int direction);

    boolean getScrollableTracksViewportHeight();

    boolean getScrollableTracksViewportWidth();

    @Override
    int getScrollableUnitIncrement(final Rectangle visibleRect, final int orientation, final int direction);

    void recomputeSize();

    void setCanvasPane(final CanvasPane pane);

    void addMouseWheelListener(final MouseWheelListener listener);

    void center();
}

