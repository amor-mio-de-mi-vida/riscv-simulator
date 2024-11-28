package MyBlockDesign.drmips.proj;


import MyBlockDesign.drmips.circuit.Circuit;
import MyBlockDesign.DrMIPSFile;
import MyBlockDesign.drmips.gui.main.Frame;

public class Project {

    private Frame frame = null;
    private DrMIPSFile file;
//    private CircuitState circuitState;

    public Project(DrMIPSFile file) {
        setDrMIPSFile(file);
    }

    public void setDrMIPSFile(DrMIPSFile file) {}

    public void setFrame(Frame value) {
        if (frame == value) return;
        final Frame oldValue = frame;
        frame = value;
    }

    public Circuit getCurrentCircuit() {
        return null;
//        return circuitState == null ? null : circuitState.getCircuit();
    }

}
