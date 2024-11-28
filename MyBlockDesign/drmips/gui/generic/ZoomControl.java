package MyBlockDesign.drmips.gui.generic;

import MyBlockDesign.contracts.BaseMouseListenerContract;
import MyBlockDesign.drmips.gui.icons.ZoomIcon;
import MyBlockDesign.drmips.gui.main.Canvas;
import MyBlockDesign.drmips.prefs.AppPreferences;

import javax.swing.*;
import javax.swing.border.Border;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.text.DecimalFormat;

import static MyBlockDesign.drmips.gui.Strings.S;

public class ZoomControl extends JPanel {
    private static final long serialVersionUID = 1L;
    private ZoomLabel label;
    private final JSlider slider;
    private final GridIcon grid;
    private final JButton plus;
    private final JButton minus;
    public final AutoZoomButton zoomButton;
    public final JPanel zoomContainer;
    public final PredefinedZoomButton predefinedZoom1;
    public final PredefinedZoomButton predefinedZoom2;
    public final PredefinedZoomButton predefinedZoom3;
    private final Canvas canvas;
    private ZoomModel model;
    private SliderModel sliderModel;

    public ZoomControl(ZoomModel model, Canvas canvas) {
        super(new BorderLayout());
        this.model = model;
        this.canvas = canvas;

        label = new ZoomLabel();
        sliderModel = new SliderModel(model);

        plus = new ZoomButton(new ZoomIcon(ZoomIcon.ZOOMIN), false);
        minus = new ZoomButton(new ZoomIcon(ZoomIcon.ZOOMOUT), true);
        slider = new JSlider(sliderModel);

        final var zoom = new JPanel(new BorderLayout());
        zoom.add(minus, BorderLayout.WEST);
        zoom.add(label, BorderLayout.CENTER);
        zoom.add(plus, BorderLayout.EAST);
        zoom.add(slider, BorderLayout.SOUTH);

        this.add(zoom, BorderLayout.NORTH);

        grid = new GridIcon();
        this.add(grid, BorderLayout.EAST);
        grid.update();

        zoomButton = new AutoZoomButton(model);
        this.add(zoomButton, BorderLayout.WEST);

        zoomContainer = new JPanel(new GridLayout());
        predefinedZoom1 = new PredefinedZoomButton(model, "\u00D7" + "\u00BD", 0.5);
        zoomContainer.add(predefinedZoom1);
        predefinedZoom2 = new PredefinedZoomButton(model, "\u00D7" + "1", 1.0);
        zoomContainer.add(predefinedZoom2);
        predefinedZoom3 = new PredefinedZoomButton(model, "\u00D7" + "2", 2.0);
        zoomContainer.add(predefinedZoom3);
        this.add(zoomContainer, BorderLayout.CENTER);

        model.addPropertyChangeListener(ZoomModel.SHOW_GRID, grid);
        model.addPropertyChangeListener(ZoomModel.ZOOM, sliderModel);
        model.addPropertyChangeListener(ZoomModel.ZOOM, label);

    }

    private int nearestZoomOption() {
        final var choices = model.getZoomOptions();
        final var factor = model.getZoomFactor() * 100.0;
        var closest = 0;
        for (var i = 1; i < choices.size(); i++) {
            if (Math.abs(choices.get(i) - factor) < Math.abs(choices.get(closest) - factor)) {
                closest = i;
            }
        }
        return closest;
    }

    public void zoomTo(int i) {
        final var choices = model.getZoomOptions();
        i = Math.max(Math.min(i, choices.size() - 1), 0);
        model.setZoomFactor(choices.get(i) / 100.0);
    }

    public void zoomOut() {
        final var zoom = model.getZoomFactor();
        final var choices = model.getZoomOptions();
        final var factor = zoom * 100.0 * 0.999;
        for (var i = choices.size() - 1; i >= 0; i--) {
            if (choices.get(i) < factor) {
                model.setZoomFactor(choices.get(i) / 100.0);
                break;
            }
        }
    }

    public void zoomIn() {
        final var zoom = model.getZoomFactor();
        final var choices = model.getZoomOptions();
        final var factor = zoom * 100.0 * 1.001;
        for (final var choice : choices) {
            if (choice > factor) {
                model.setZoomFactor(choice / 100.0);
                break;
            }
        }
    }

    public String zoomString() {
        DecimalFormat df = new DecimalFormat("###.##");
        return "\u00D7" + df.format(model.getZoomFactor());
    }

    private class ZoomLabel extends JLabel implements PropertyChangeListener {
        private static final long serialVersionUID = 1L;

        public ZoomLabel() {
            super(zoomString(), SwingConstants.CENTER);
        }

        @Override
        public void propertyChange(PropertyChangeEvent evt) {
            update();
        }

        public void update() {
            setText(zoomString());
        }
    }

    private class SliderModel extends DefaultBoundedRangeModel implements PropertyChangeListener {
        private static final long serialVersionUID = 1L;

        public SliderModel(ZoomModel model) {
            super(nearestZoomOption(), 0, 0, model.getZoomOptions().size() - 1);
        }

        @Override
        public int getValue() {
            return nearestZoomOption();
        }

        @Override
        public void setValue(int i) {
            zoomTo(i);
        }

        @Override
        public void propertyChange(PropertyChangeEvent evt) {
            fireStateChanged();
        }
    }

    private class ZoomButton extends JButton {
        private static final long serialVersionUID = 1L;
        final boolean out;

        public ZoomButton(Icon icon, boolean left) {
            super(icon);
            out = left;
            setOpaque(false);
            setBackground(new java.awt.Color(0, 0, 0, 0));
            setBorderPainted(false);
            if (left) {
                setMargin(new Insets(2, 1, 2, 0));
            } else {
                setMargin(new Insets(2, 0, 2, 1));
            }
            addMouseListener(new ZoomMouseListener());
            addActionListener(new ZoomActionListener());
            setFocusable(false);
        }

        protected class ZoomMouseListener extends MouseAdapter {
            @Override
            public void mouseEntered(MouseEvent ev) {
                setBorderPainted(true);
            }

            @Override
            public void mouseExited(MouseEvent ev) {
                setBorderPainted(false);
            }
        }

        protected class ZoomActionListener implements ActionListener {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (out) {
                    zoomOut();
                } else {
                    zoomIn();
                }
            }
        }
    }

    private class GridIcon extends JComponent
            implements BaseMouseListenerContract, PropertyChangeListener {
        private static final long serialVersionUID = 1L;
        boolean state = true;

        public GridIcon() {
            addMouseListener(this);
            setPreferredSize(
                    new Dimension(
                            (int) AppPreferences.getScaled(2 * AppPreferences.IconSize),
                            (int) AppPreferences.getScaled(AppPreferences.IconSize)));
            setToolTipText("");
            setFocusable(true);
        }

        @Override
        public String getToolTipText(MouseEvent e) {
            return S.get("zoomShowGrid");
        }

        @Override
        public void mouseClicked(MouseEvent mouseEvent) {
            // do nothing
        }

        @Override
        public void mousePressed(MouseEvent e) {
            if (model != null) model.setShowGrid(!state);
        }

        @Override
        protected void paintComponent(Graphics g) {
            if (AppPreferences.AntiAliassing.getBoolean()) {
                final var g2 = (Graphics2D) g;
                g2.setRenderingHint(
                        RenderingHints.KEY_TEXT_ANTIALIASING, RenderingHints.VALUE_TEXT_ANTIALIAS_ON);
                g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
            }
            final var width = getWidth();
            final var height = getHeight();
            g.setColor(state ? getBackground() : Color.BLACK);
            final var three = AppPreferences.getScaled(3);
            final var xdim = (width - AppPreferences.getScaled(4)) / three * three + 1;
            final var ydim = (height - AppPreferences.getScaled(4)) / three * three + 1;
            final var xoff = (width - xdim) / 2;
            final var yoff = (height - ydim) / 2;
            for (var x = 0; x < xdim; x += three) {
                for (var y = 0; y < ydim; y += three) {
                    g.drawLine((int) (x + xoff), (int) (y + yoff), (int) (x + xoff), (int) (y + yoff));
                }
            }
            g.setColor(Color.BLACK);
            g.drawLine((int) xoff, (int) yoff, (int) (xoff + three), (int) yoff);
            g.drawLine((int) xoff, (int) yoff, (int) xoff, (int) (yoff + three));
            g.drawLine((int) xoff, (int) (yoff + ydim), (int) xoff, (int) (yoff + ydim - three));
            g.drawLine((int) xoff, (int) (yoff + ydim), (int) (xoff + three), (int) (yoff + ydim));
            g.drawLine((int) (xoff + xdim), (int) yoff, (int) (xoff + xdim - three), (int) yoff);
            g.drawLine((int) (xoff + xdim), (int) yoff, (int) (xoff + xdim), (int) (yoff + three));
            g.drawLine((int) (xoff + xdim), (int) (yoff + ydim), (int) (xoff + xdim - three), (int) (yoff + ydim));
            g.drawLine((int) (xoff + xdim), (int) (yoff + ydim), (int) (xoff + xdim), (int) (yoff + ydim - three));
        }

        @Override
        public void propertyChange(PropertyChangeEvent evt) {
            update();
        }

        private void update() {
            final var grid = model.getShowGrid();
            if (grid != state) {
                state = grid;
                repaint();
            }
        }
    }

    public class AutoZoomButton extends JButton implements ActionListener {
        private static final long serialVersionUID = 1L;
        private ZoomModel zoomModel;

        public AutoZoomButton(ZoomModel model) {
            zoomModel = model;
            super.setText(S.get("zoomAuto"));
            addActionListener(this);
        }

        public void setZoomModel(ZoomModel model) {
            zoomModel = model;
        }

        @Override
        public void actionPerformed(ActionEvent e) {
            if (zoomModel != null) {
                final var g = getGraphics();
                if (canvas.getProject().getCurrentCircuit() == null) return;

                final var bounds =
                        (g != null)
                                ? canvas.getProject().getCurrentCircuit().getBounds(getGraphics())
                                : canvas.getProject().getCurrentCircuit().getBounds();
                if (bounds.getHeight() == 0 || bounds.getWidth() == 0) return;

                final var canvasPane = canvas.getCanvasPane();
                if (canvasPane == null) return;
                // the white space around
                final var padding = 50;
                // set autozoom
                final var zoomFactor = zoomModel.getZoomFactor();
                final var height = (bounds.getHeight() + 2 * padding) * zoomFactor;
                final var width = (bounds.getWidth() + 2 * padding) * zoomFactor;
                var autozoom = zoomFactor;
                autozoom *=
                        Math.min(
                                canvasPane.getViewport().getSize().getWidth() / width,
                                canvasPane.getViewport().getSize().getHeight() / height);
                final var max =
                        zoomModel.getZoomOptions().get(zoomModel.getZoomOptions().size() - 1) / 100.0;
                final var min = zoomModel.getZoomOptions().get(0) / 100.0;
                if (autozoom > max) autozoom = max;
                if (autozoom < min) autozoom = min;
                if (Math.abs(autozoom - zoomFactor) >= 0.01) {
                    zoomModel.setZoomFactorCenter(autozoom);
                }
            }
        }
    }

    public class PredefinedZoomButton extends JButton implements ActionListener {
        private static final long serialVersionUID = 1L;
        private ZoomModel zoomModel;
        final double zoomValue;

        public PredefinedZoomButton(ZoomModel model, String label, double zoomValue) {
            zoomModel = model;
            this.zoomValue = zoomValue;
            super.setText(label);
            addActionListener(this);
        }

        public void setZoomModel(ZoomModel model) {
            zoomModel = model;
        }

        @Override
        public void actionPerformed(ActionEvent e) {
            if (zoomModel != null && canvas.getProject().getCurrentCircuit() != null) {
                zoomModel.setZoomFactor(zoomValue);
            }
        }
    }
}
