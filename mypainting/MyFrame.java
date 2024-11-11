package mypainting;

import javax.swing.*;

public class MyFrame extends JFrame {

    private JMenuBar mnuBar;
    private DlgCircuitTool dlgCircuitTool;
    private JMenu mnuCircuit;
    private JMenuItem mnuCircuitDesign;

    public MyFrame(String title) {
        super(title);

        mnuBar = new JMenuBar();
        mnuCircuitDesign = new JMenuItem();

        mnuCircuit = new JMenu();
        dlgCircuitTool = new DlgCircuitTool(this);


        mnuCircuit.setText("Circuit");
        mnuCircuit.add(mnuCircuitDesign);

        mnuCircuitDesign.setText("CircuitDesign");
        mnuCircuitDesign.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mnuCircuitDesignActionPerformed(evt);
            }
        });

        mnuBar.add(mnuCircuit);


        setJMenuBar(mnuBar);
        pack();
    }

    private void mnuCircuitDesignActionPerformed(java.awt.event.ActionEvent evt) {
        dlgCircuitTool.setVisible(true);
    }
}
