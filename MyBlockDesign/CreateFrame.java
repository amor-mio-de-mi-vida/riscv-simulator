package MyBlockDesign;

public class CreateFrame implements Runnable{

    private final Project proj;


    public CreateFrame(Project proj) {
        this.proj = proj;
    }

    public void run() {
        try{
            final Frame frame = MainClass.createFrame(null, proj);
            frame.setVisible(true);
            frame.toFront();
            frame.getCanvas().requestFocus();
        } catch (Exception e) {
            System.out.println("Create MyBlockDesign.Frame error!");
        }
    }

}