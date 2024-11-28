package MyBlockDesign.drmips.util;

import MyBlockDesign.contracts.BaseLayoutManagerContract;
import MyBlockDesign.contracts.BaseMouseListenerContract;
import MyBlockDesign.contracts.BaseMouseMotionListenerContract;
import MyBlockDesign.drmips.prefs.AppPreferences;

import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseEvent;
import java.awt.event.MouseMotionListener;

public class HorizontalSplitPane extends JPanel {
    abstract static class Dragbar extends JComponent
            implements BaseMouseListenerContract, BaseMouseMotionListenerContract {
        private static final long serialVersionUID = 1L;
        private boolean dragging = false;
        private int curValue;

        Dragbar() {
            addMouseListener(this);
            addMouseMotionListener((MouseMotionListener) this);
        }

        abstract int getDragValue(MouseEvent e);

        @Override
        public void mouseDragged(MouseEvent e) {
            if (dragging) {
                int newValue = getDragValue(e);
                if (newValue != curValue) setDragValue(newValue);
            }
        }

        @Override
        public void mousePressed(MouseEvent e) {
            if (!dragging) {
                curValue = getDragValue(e);
                dragging = true;
                repaint();
            }
        }

        @Override
        public void mouseReleased(MouseEvent e) {
            if (dragging) {
                dragging = false;
                int newValue = getDragValue(e);
                if (newValue != curValue) setDragValue(newValue);
                repaint();
            }
        }

        @Override
        public void paintComponent(Graphics g) {
            if (AppPreferences.AntiAliassing.getBoolean()) {
                final var g2 = (Graphics2D) g;
                g2.setRenderingHint(
                        RenderingHints.KEY_TEXT_ANTIALIASING, RenderingHints.VALUE_TEXT_ANTIALIAS_ON);
                g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
            }
            if (dragging) {
                g.setColor(DRAG_COLOR);
                g.fillRect(0, 0, getWidth(), getHeight());
            }
        }

        abstract void setDragValue(int value);
    }

    private class MyDragbar extends Dragbar {
        private static final long serialVersionUID = 1L;

        MyDragbar() {
            setCursor(Cursor.getPredefinedCursor(Cursor.S_RESIZE_CURSOR));
        }

        @Override
        int getDragValue(MouseEvent e) {
            return getY() + e.getY() - HorizontalSplitPane.this.getInsets().top;
        }

        @Override
        void setDragValue(int value) {
            final var in = HorizontalSplitPane.this.getInsets();
            setFraction((double) value / (HorizontalSplitPane.this.getHeight() - in.bottom - in.top));
            revalidate();
        }

        @Override
        public void mouseClicked(MouseEvent mouseEvent) {
            // do nothing
        }
    }

    private class MyLayout implements BaseLayoutManagerContract {
        @Override
        public void layoutContainer(Container parent) {
            final var in = parent.getInsets();
            final var maxWidth = parent.getWidth() - (in.left + in.right);
            final var maxHeight = parent.getHeight() - (in.top + in.bottom);
            int split;
            if (fraction <= 0.0) {
                split = 0;
                dragbar.setVisible(false);
            } else if (fraction >= 1.0) {
                split = maxHeight;
                dragbar.setVisible(false);
            } else {
                split = (int) Math.round(maxHeight * fraction);
                split = Math.min(split, maxHeight - comp1.getMinimumSize().height);
                split = Math.max(split, comp0.getMinimumSize().height);
                dragbar.setVisible(true);
            }

            comp0.setBounds(in.left, in.top, maxWidth, split);
            comp1.setBounds(in.left, in.top + split, maxWidth, maxHeight - split);
            dragbar.setBounds(in.left, in.top + split - DRAG_TOLERANCE, maxWidth, 2 * DRAG_TOLERANCE);
        }

        @Override
        public Dimension minimumLayoutSize(Container parent) {
            if (fraction <= 0.0) return comp1.getMinimumSize();
            if (fraction >= 1.0) return comp0.getMinimumSize();
            final var in = parent.getInsets();
            final var d0 = comp0.getMinimumSize();
            final var d1 = comp1.getMinimumSize();
            return new Dimension(
                    in.left + Math.max(d0.width, d1.width) + in.right,
                    in.top + d0.height + d1.height + in.bottom);
        }

        @Override
        public Dimension preferredLayoutSize(Container parent) {
            if (fraction <= 0.0) return comp1.getPreferredSize();
            if (fraction >= 1.0) return comp0.getPreferredSize();
            final var in = parent.getInsets();
            final var d0 = comp0.getPreferredSize();
            final var d1 = comp1.getPreferredSize();
            return new Dimension(
                    in.left + Math.max(d0.width, d1.width) + in.right,
                    in.top + d0.height + d1.height + in.bottom);
        }
    }

    private static final long serialVersionUID = 1L;
    static final int DRAG_TOLERANCE = 3;
    private static final Color DRAG_COLOR = new Color(0,0,0,128);
    private final JComponent comp0;
    private final JComponent comp1;
    private final MyDragbar dragbar;
    private double fraction;

    public HorizontalSplitPane(JComponent comp0, JComponent comp1, double fraction) {
        this.comp0 = comp0;
        this.comp1 = comp1;
        this.dragbar = new MyDragbar();
        this.fraction = fraction;

        setLayout(new MyLayout());
        add(dragbar); // above the other components
        add(comp0);
        add(comp1);
    }

    public void setFraction(double value) {
        if (value < 0.0) value = 0.0;
        if (value > 1.0) value = 1.0;
        if (fraction != value) {
            fraction = value;
            revalidate();
        }
    }
}