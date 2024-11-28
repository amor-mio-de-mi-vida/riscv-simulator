package MyBlockDesign.contracts;

import java.awt.event.MouseEvent;
import java.awt.event.MouseMotionListener;


public interface BaseMouseMotionListenerContract extends MouseMotionListener {

    @Override
    default void mouseDragged(MouseEvent mouseEvent) {
        // no-op implementation
    }

    @Override
    default void mouseMoved(MouseEvent mouseEvent) {
        // no-op implementation
    }
}
