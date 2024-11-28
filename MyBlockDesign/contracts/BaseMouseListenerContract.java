package MyBlockDesign.contracts;

import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

public interface BaseMouseListenerContract extends MouseListener {
    @Override
        // No default implementation provided intentionally.
    void mouseClicked(MouseEvent mouseEvent);

    @Override
    default void mousePressed(MouseEvent mouseEvent) {
        // no-op implementation
    }

    @Override
    default void mouseReleased(MouseEvent mouseEvent) {
        // no-op implementation
    }

    @Override
    default void mouseEntered(MouseEvent mouseEvent) {
        // no-op implementation
    }

    @Override
    default void mouseExited(MouseEvent mouseEvent) {
        // no-op implementation
    }
}
