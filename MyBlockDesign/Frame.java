package MyBlockDesign;

import javax.swing.*;
import java.awt.Color;
import javax.swing.JButton;

public class Frame extends LFrame.MainWindow {

    private JButton cmdCircuit;

    private final Project project;
    private final Canvas layoutCanvas;

    public Frame(Project project) {
        super(project);
        this.project = project;

        initComponents();

        setBackground(Color.white);
//        setDefaultCloseOperation(WindowConstants.DO_NOTHING_ON_CLOSE);


        layoutCanvas = new Canvas(project);
    }

    public void initComponents() {

    }

    public Canvas getCanvas() {
        return layoutCanvas;
    }
}
