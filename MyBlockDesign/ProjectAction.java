package MyBlockDesign;

import javax.swing.*;

public class ProjectAction {

    public static void main(String[] args) {
        DrMIPSFile file = ProjectAction.createEmptyFile(null);
        final Project ret = new Project(file);
        SwingUtilities.invokeLater(new CreateFrame(ret));
    }

    public static Frame createFrame(Project sourceProject, Project newProject) {
//        if (sourceProject != null) {
//            final var frame = sourceProject.getFrame();
//            if (frame != null) {
//                frame.savePreferences();
//            }
//        }
        final Frame newFrame = new Frame(newProject);
        newProject.setFrame(newFrame);
        return newFrame;
    }

    public static DrMIPSFile createEmptyFile(Project proj) {
        return null;
    }
}
