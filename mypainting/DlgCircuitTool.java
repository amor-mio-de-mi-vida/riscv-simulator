package mypainting;

import javax.swing.*;

public class DlgCircuitTool extends JDialog {

//    private JButton cmdClose;

    private JPanel jPanel1;

    public DlgCircuitTool(MyFrame parent) {
        super(parent, false);
        initComponents();

//        getRootPane().setDefaultButton(cmdClose);
        Util.centerWindow(this);
        Util.enableCloseWindowWithEscape(this);

        setSize(1000, 1000);
    }

    private void initComponents() {
        jPanel1 = new JPanel();

//        cmdClose = new JButton();
//        cmdClose.setText("close");
//        cmdClose.addActionListener(new java.awt.event.ActionListener() {
//            public void actionPerformed(java.awt.event.ActionEvent evt) {
//                cmdCloseActionPerformed(evt);
//            }
//        });
//        jPanel1.add(cmdClose);



        getContentPane().add(jPanel1);
        pack();
    }

//    private void cmdCloseActionPerformed(java.awt.event.ActionEvent evt) {
//        close();
//    }
//
//    private void close() {
//        setVisible(false);
//    }

}
