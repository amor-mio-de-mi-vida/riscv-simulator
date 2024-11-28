package MyBlockDesign;

import MyBlockDesign.drmips.gui.main.Frame;
import MyBlockDesign.drmips.proj.Project;

public class CreateFrame implements Runnable{

    private final Project proj;


    public CreateFrame(Project proj) {
        this.proj = proj;
    }

    public void run() {
        try{
            final Frame frame = ProjectAction.createFrame(null, proj);
            frame.setVisible(true);
            frame.toFront();
            frame.getCanvas().requestFocus();
        } catch (Exception e) {
            System.out.println("Create MyBlockDesign.drmips.gui.main.Frame error!");
        }
    }

}