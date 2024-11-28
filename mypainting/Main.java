package mypainting;

import MyBlockDesign.DrMIPSFile;
import MyBlockDesign.ProjectAction;
import MyBlockDesign.drmips.gui.main.Frame;
import MyBlockDesign.drmips.proj.Project;

import javax.swing.SwingUtilities;
import javax.swing.JFrame;

import static MyBlockDesign.ProjectAction.createFrame;

public class Main {
    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                createAndShowGUI();
            }
        });
    }

    private static void createAndShowGUI() {
        System.out.println("Created GUI on EDT? "+
                SwingUtilities.isEventDispatchThread());
//        MyFrame f = new MyFrame("Swing Paint Demo");
        DrMIPSFile file = ProjectAction.createEmptyFile(null);
        final Project prj = new Project(file);
        final Frame f = createFrame(null, prj);
        f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        f.setSize(2000,2000);
        f.setVisible(true);
    }
}
