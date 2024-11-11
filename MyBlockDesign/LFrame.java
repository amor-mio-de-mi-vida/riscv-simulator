package MyBlockDesign;

import javax.swing.*;

public class LFrame extends JFrame {

    protected final Project project;

    private LFrame(Project p) {
        project = p;
    }

    public static class MainWindow extends LFrame {
        private static final long serialVersionUID = 1L;

        public MainWindow(Project p) {
            super(p);
            if (p == null) throw new IllegalArgumentException("project is null");
        }
    }
}