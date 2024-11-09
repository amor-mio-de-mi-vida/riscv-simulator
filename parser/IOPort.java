public class IOPort {
    /** The possible directions/sides of the input/output on the component. */
    public enum Direction { WEST, EAST, NORTH, SOUTH }

    /** The component that this input/output belongs to. */
    private Component component;

    /** The identifier of the input/output. */
    private String id;
    /** Data of the input/output (size and initial value). */
    private Data data;
    /** The direction/side of the input/output on the component. */
    private Direction direction;
    /** The graphical position of the input/output (if <tt>null</tt> it's calculated automatically). */
    private Point position;
    /** Whether this input/output is in the control path. */
    private boolean inControlPath = false;
    /** Whether a balloon tip with the value of the input/output should be displayed. */
    private boolean showTip = false;

    public IOPort(Component component, String id, Data data, Direction direction, boolean showTip) {
        if(id.isEmpty());
        this.component = component;
        this.id = id;
        this.data = data;
        this.direction = direction;
        this.showTip = showTip;
    }

    /**
     * Indicates that this input/output is in the control path.
     */
    public void setInControlPath() {
        inControlPath = true;
    }

}
