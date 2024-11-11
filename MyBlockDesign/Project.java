package MyBlockDesign;


public class Project {

    private Frame frame = null;
    private DrMIPSFile file;

    public Project(DrMIPSFile file) {
        setDrMIPSFile(file);
    }

    public void setDrMIPSFile(DrMIPSFile file) {}

    public void setFrame(Frame value) {
        if (frame == value) return;
        final Frame oldValue = frame;
        frame = value;
    }

}
