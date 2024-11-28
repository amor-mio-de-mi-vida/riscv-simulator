package MyBlockDesign.drmips.gui.generic;

import javax.swing.*;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;
import java.awt.*;
import java.util.ArrayList;

public class CardPanel extends JPanel {
    private static final long serialVersionUID = 1L;
    private final ArrayList<ChangeListener> listeners;
    private String current;

    public CardPanel() {
        super(new CardLayout());
        listeners = new ArrayList<>();
        current = "";
    }

    public void addView(String name, Component comp) { add(comp, name); }

    public void setView(String choice) {
        if (choice == null) choice = "";
        final var oldChoice = current;
        if (!oldChoice.equals(choice)) {
            current = choice;
            ((CardLayout) getLayout()).show(this, choice);
            final var e = new ChangeEvent(this);
            for (final var listener: listeners) {
                listener.stateChanged(e);
            }
        }
    }
}
