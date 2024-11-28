package MyBlockDesign.drmips.gui.generic;


import java.awt.event.MouseEvent;
import java.beans.PropertyChangeListener;
import java.util.List;

public interface ZoomModel {
    String ZOOM = "zoom";
    String SHOW_GRID = "grid";
    String CENTER = "center";

    boolean getShowGrid();

    void setShowGrid(boolean value);

    double getZoomFactor();

    List<Double> getZoomOptions();

    void setZoomFactor(double value);

    void setZoomFactor(double value, MouseEvent e);

    void setZoomFactorCenter(double value);

    void addPropertyChangeListener(String prop, PropertyChangeListener l);

    void removePropertyChangeListener(String prop, PropertyChangeListener l);
}
