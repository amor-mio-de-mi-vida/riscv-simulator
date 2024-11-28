package MyBlockDesign.drmips.gui.generic;

import javax.swing.*;

import MyBlockDesign.drmips.comp.Component;
import MyBlockDesign.drmips.gui.main.*;
import MyBlockDesign.drmips.gui.main.Frame;
import MyBlockDesign.drmips.proj.Project;

import java.awt.*;
import java.util.HashMap;

public class RegTabContent extends JScrollPane {
    private static final long serialVersionUID = 1L;
    private final JPanel panel = new JPanel(new GridBagLayout());
    private static final HashMap<String, Component> registers = new HashMap<>();
    private final GridBagConstraints gbc = new GridBagConstraints();
    private final Project proj;

    public RegTabContent(Frame frame) {
        super();
        setViewportView(panel);
        proj = frame.getProject();
        getVerticalScrollBar().setUnitIncrement(16);
//        proj.getSimulator().addSimulatorListener(this);

//        fillArray();
    }

//    private void fillArray() {
//        registers.clear();
//        panel.removeAll();
//        for (final var circ : proj.getLogisimFile().getCircuits()) {
//            getAllRegisters(circ);
//        }
//        if (proj.getLogisimFile().getLibrary("prodis_v1.3") instanceof LoadedLibrary loadedLib) {
//            if (loadedLib.getBase() instanceof LogisimFile lsFile) {
//                for (final var circ : lsFile.getCircuits()) {
//                    getAllRegisters(circ);
//                }
//            }
//        }
//
//        // FIXME: hardcoded strings
//        final var col1 = new MyLabel("Circuit", Font.ITALIC | Font.BOLD);
//        final var col2 = new MyLabel("Reg name", Font.BOLD);
//        final var col3 = new MyLabel("Value", Font.BOLD);
//
//        col1.setColor(Color.LIGHT_GRAY);
//        col2.setColor(Color.LIGHT_GRAY);
//        col3.setColor(Color.LIGHT_GRAY);
//
//        gbc.fill = GridBagConstraints.HORIZONTAL;
//        gbc.anchor = GridBagConstraints.FIRST_LINE_START;
//        gbc.ipady = 2;
//        gbc.weighty = 0;
//
//        var y = 0;
//        gbc.gridy = y;
//        gbc.gridx = 0;
//        gbc.weightx = 0.3;
//        panel.add(col1, gbc);
//        gbc.gridx++;
//        gbc.weightx = 0.5;
//        panel.add(col2, gbc);
//        gbc.gridx++;
//        gbc.weightx = 0.2;
//        panel.add(col3, gbc);
//        y++;
//
//        if (!registers.isEmpty()) {
//            final var keys = registers.keySet().stream().sorted(new AlphanumComparator()).toList();
//            for (final var key : keys) {
//                gbc.gridy = y;
//                gbc.gridx = 0;
//                final var circuitName = key.split("/")[0];
//                panel.add(new MyLabel(circuitName, Font.ITALIC, true), gbc);
//                gbc.gridx++;
//                final var registerName = key.split("/")[1];
//                panel.add(new MyLabel(registerName), gbc);
//                gbc.gridx++;
//                final var selReg = registers.get(key);
//                var mainCircState = proj.getCircuitState();
//                if (mainCircState == null) continue;
//                while (mainCircState.getParentState() != null) { // Get the main circuit
//                    mainCircState = mainCircState.getParentState();
//                }
//                final var val = findVal(mainCircState, circuitName, selReg.getEnd(0).getLocation()); // Get Q port location
//
//                if (val != null) {
//                    final var hexLabel = new MyLabel(val.toHexString());
//                    hexLabel.setFont(new Font(Font.MONOSPACED, Font.PLAIN, hexLabel.getFont().getSize()));
//                    panel.add(hexLabel, gbc);
//                } else {
//                    panel.add(new MyLabel("-"), gbc);
//                }
//                y++;
//            }
//        }
//        gbc.weighty = 1;
//        gbc.gridy++;
//        gbc.gridx = 0;
//        gbc.weightx = 1;
//        panel.add(new MyLabel(""), gbc);
//        panel.validate();
//    }
}
