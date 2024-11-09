import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public abstract class Component {
    /** The unique identifier of the component. */
    private String id;
    /** The inputs of the component. */
    protected Map<String, Input> in;
    /** The outputs of the component. */
    protected Map<String, Output> out;
    /** The name displayed on the GUI. */
    private String displayName;
    /** The key of the component's description on the language file. */
    private String descriptionKey = null;
    /** The key of the component's name on the language file. */
    private String nameKey = null;
    /** The default name, in case {@code nameKey == null} (useful for custom components). */
    private String defaultName = "";
    /** The default descripting, in case {@code descriptionKey == null} (useful for custom components). */
    private String defaultDescription = "";
    /** The position of the component on the GUI. */
    private Point position;
    /** The size of the component on the GUI. */
//    private Dimension size;
    /** The latency of the component. */
    private int latency = 0;
    /** The original latency of the component. */
    private int originalLatency = 0;
    /** The accumulated latency from the first component up to this one. */
    private int accumulatedLatency = 0;
    /** The component's custom description, if any, for each language. */
    private Map<String, String> customDescriptions = null;
    /** Whether this component is in the control path. */
    private boolean inControlPath = false;



    public abstract void execute();

    public void setInControlPath() {
        inControlPath = true;
        for(Input i: getInputs())
            i.setInControlPath();
        for(Output o: getOutputs())
            o.setInControlPath();
    }


    public final Input getInput(String id) {
        return in.get(id);
    }

    public final List<Input> getInputs() {
        return new ArrayList<>(in.values());
    }

    public final Output getOutput(String id) {
        return out.get(id);
    }
    public final List<Output> getOutputs() {
        return new ArrayList<>(out.values());
    }

}
