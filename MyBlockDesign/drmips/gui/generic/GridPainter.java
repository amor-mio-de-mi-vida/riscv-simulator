package MyBlockDesign.drmips.gui.generic;

import MyBlockDesign.drmips.prefs.*;

import java.awt.*;
import java.awt.image.MemoryImageSource;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.util.Arrays;

public class GridPainter implements PropertyChangeListener{
    public static final String ZOOM_PROPERTY = "zoom";
    public static final String SHOW_GRID_PROPERTY = "showgrid";
    private final Component destination;
    private ZoomModel zoomModel;
    private double zoomFactor = 1.0;
    private boolean showGrid = true;
    private final int gridSize = 10;
    private final PropertyChangeSupport support;
    private Listener listener;
    private Image gridImage;
    private int gridImageWidth;

    public GridPainter(Component destination) {
        this.destination = destination;
        support = new PropertyChangeSupport(this);
        createGridImage(gridSize, zoomFactor);
    }

    private void createGridImage(int size, double f) {
        var ww = f * size * 5;
        while (2 * ww < 150) ww *= 2;
        final var w = (int) Math.round(ww);
        final var pix = new int[w * w];
        Arrays.fill(pix, AppPreferences.GRID_BG_COLOR.get());

        if (f == 1.0) {
            final var lineStep = size * w;
            for (var j = 0; j < pix.length; j += lineStep) {
                for (var i = 0; i < w; i += size) {
                    pix[i + j] = AppPreferences.GRID_DOT_COLOR.get();
                }
            }
        } else {
            int off0 = 0;
            int off1 = 1;
            if (f >= 2.0) { // we'll draw several pixels for each grid point
                int num = (int) (f + 0.001);
                off0 = -(num / 2);
                off1 = off0 + num;
            }

            final var dotColor =
                    f <= 0.5
                            ? AppPreferences.GRID_ZOOMED_DOT_COLOR.get()
                            : AppPreferences.GRID_DOT_COLOR.get();
            for (int j = 0; true; j += size) {
                int y = (int) Math.round(f * j);
                if (y + off0 >= w) break;

                for (int yo = y + off0; yo < y + off1; yo++) {
                    if (yo >= 0 && yo < w) {
                        int base = yo * w;
                        for (int i = 0; true; i += size) {
                            int x = (int) Math.round(f * i);
                            if (x + off0 >= w) break;
                            for (int xo = x + off0; xo < x + off1; xo++) {
                                if (xo >= 0 && xo < w) {
                                    pix[base + xo] = dotColor;
                                }
                            }
                        }
                    }
                }
            }
            if (f <= 0.5) { // repaint over every 5th pixel so it is darker
                int size5 = size * 5;
                for (int j = 0; true; j += size5) {
                    int y = (int) Math.round(f * j);
                    if (y >= w) break;
                    y *= w;

                    for (int i = 0; true; i += size5) {
                        int x = (int) Math.round(f * i);
                        if (x >= w) break;
                        pix[y + x] = AppPreferences.GRID_DOT_COLOR.get();
                    }
                }
            }
        }
        gridImage = destination.createImage(new MemoryImageSource(w, w, pix, 0, w));
        gridImageWidth = w;
    }

    public void setZoomModel(ZoomModel model) {
        final var old = zoomModel;
        if (model != old) {
            if (listener == null) {
                listener = new Listener();
            }
            if (old != null) {
                old.removePropertyChangeListener(ZoomModel.ZOOM, listener);
                old.removePropertyChangeListener(ZoomModel.SHOW_GRID, listener);
            }
            zoomModel = model;
            if (model != null) {
                model.addPropertyChangeListener(ZoomModel.ZOOM, listener);
                model.addPropertyChangeListener(ZoomModel.SHOW_GRID, listener);
            }
            setShowGrid(model.getShowGrid());
            setZoomFactor(model.getZoomFactor());
            destination.repaint();
        }
    }

    public void setZoomFactor(double value) {
        final var oldValue = zoomFactor;
        if (oldValue != value) {
            zoomFactor = value;
            createGridImage(gridSize, value);
            support.firePropertyChange(ZOOM_PROPERTY, oldValue, value);
        }
    }

    public void setShowGrid(boolean value) {
        if (showGrid != value) {
            showGrid = value;
            support.firePropertyChange(SHOW_GRID_PROPERTY, !value, value);
        }
    }

    @Override
    public void propertyChange(PropertyChangeEvent event) {
        if (AppPreferences.GRID_BG_COLOR.isSource(event)
                || AppPreferences.GRID_DOT_COLOR.isSource(event)
                || AppPreferences.GRID_ZOOMED_DOT_COLOR.isSource(event)) {
            createGridImage(gridSize, zoomFactor);
        }
    }

    private class Listener implements PropertyChangeListener {
        @Override
        public void propertyChange(PropertyChangeEvent event) {
            final var prop = event.getPropertyName();
            final var val = event.getNewValue();
            if (prop.equals(ZoomModel.ZOOM)) {
                setZoomFactor((Double) val);
                destination.repaint();
            } else if (prop.equals(ZoomModel.SHOW_GRID)) {
                setShowGrid((Boolean) val);
                destination.repaint();
            }
        }
    }
}
