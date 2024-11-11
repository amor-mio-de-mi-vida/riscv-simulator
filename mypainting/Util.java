package mypainting;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.KeyEvent;
import java.awt.event.WindowEvent;

public class Util {


    public static void centerWindow(Window window) {
        Dimension screen = Toolkit.getDefaultToolkit().getScreenSize();
        window.setLocation((int)screen.getWidth() / 2 - window.getWidth() / 2, (int)screen.getHeight() / 2 - window.getHeight() / 2);
    }

    public static <W extends Window & RootPaneContainer> void enableCloseWindowWithEscape(final W window) {
        Action closeAction = new AbstractAction() {
            @Override
            public void actionPerformed(ActionEvent e) {
                window.dispatchEvent(new WindowEvent(window, WindowEvent.WINDOW_CLOSING));
            }
        };

        window.getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), "close");
        window.getRootPane().getActionMap().put("close", closeAction);
    }
}
