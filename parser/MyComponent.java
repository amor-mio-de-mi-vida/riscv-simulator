import java.util.Stack;

public class MyComponent extends Component implements Synchronous {

    private final Stack<Integer> states = new Stack<>();
    
    public void execute() {

    }

    public void executeSynchronous() {

    }

    public void pushState() {

    }

    public void popState() {

    }

    public boolean hasSavedStates() {
        return false;
    }

    public void clearSavedStates() {

    }

    public void resetFirstState() {

    }

    public boolean isWritingState() {
        return false;
    }
}
