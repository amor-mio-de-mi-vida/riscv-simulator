package MyBlockDesign.drmips.data;

import javafx.scene.control.ColorPicker;
import MyBlockDesign.drmips.gui.generic.ComboBox;
import MyBlockDesign.drmips.util.StringGetter;

import javax.swing.*;
import javax.swing.plaf.basic.BasicComboBoxRenderer;
import java.awt.*;

public class Attributes {

    public static Attribute<Direction> forDirection(String name) {
        return forDirection(name, getter(name));
    }

    public static Attribute<Direction> forDirection(String name, StringGetter disp) {
        return new DirectionAttribute(name, disp);
    }

    public static Attribute<?> forOption(String name, Object[] vals) {
        return forOption(name, getter(name), vals);
    }

    public static <V> Attribute<V> forOption(String name, StringGetter disp, V[] vals) {
        return new OptionAttribute<>(name, disp, vals);
    }

    public static Attribute<Color> forColor(String name) {
        return forColor(name, getter(name));
    }

    public static Attribute<Color> forColor(String name, StringGetter disp) {
        return new ColorAttribute(name, disp);
    }


    private static class OptionAttribute<V> extends Attribute<V> {
        private final V[] vals;

        private OptionAttribute(String name, StringGetter disp, V[] vals) {
            super(name, disp);
            this.vals = vals;
        }

        @Override
        public Component getCellEditor(Object value) {
            final var combo = new ComboBox<>(vals);
            combo.setRenderer(new OptionComboRenderer<>(this));
            if (value == null) combo.setSelectedIndex(-1);
            else combo.setSelectedItem(value);
            return combo;
        }

        @Override
        public V parse(String value) {
            for (V val : vals) {
                if (value.equals(val.toString())) {
                    return val;
                }
            }
            throw new NumberFormatException("value not among choices");
        }

        @Override
        public String toDisplayString(V value) {
            return (value instanceof AttributeOptionInterface iface)
                    ? iface.toDisplayString()
                    : value.toString();
        }
    }

    private static class OptionComboRenderer<V> extends BasicComboBoxRenderer {
        private static final long serialVersionUID = 1L;
        final Attribute<V> attr;

        OptionComboRenderer(Attribute<V> attr) {
            this.attr = attr;
        }

        @Override
        public Component getListCellRendererComponent(
                JList<?> list, Object value, int index, boolean isSelected, boolean cellHasFocus) {
            final var ret =
                    super.getListCellRendererComponent(list, value, index, isSelected, cellHasFocus);
            if (ret instanceof JLabel) {
                @SuppressWarnings("unchecked")
                V val = (V) value;
                ((JLabel) ret).setText(value == null ? "" : attr.toDisplayString(val));
            }
            return ret;
        }
    }

    private static class DirectionAttribute extends OptionAttribute<Direction> {
        private static final Direction[] vals = {
                Direction.NORTH, Direction.SOUTH, Direction.EAST, Direction.WEST,
        };

        public DirectionAttribute(String name, StringGetter disp) {
            super(name, disp, vals);
        }
    }

    private static class ConstantGetter implements StringGetter {
        private final String str;

        public ConstantGetter(String str) {
            this.str = str;
        }

        /*
         * public String get() { return str; }
         *
         * @Override public String toString() { return get(); }
         */
        public String toString() {
            return str;
        }
    }

    private static class ColorChooser extends ColorPicker implements JInputComponent {
        private static final long serialVersionUID = 1L;

        ColorChooser(Color initial) {
            if (initial != null) setColor(initial);
            setOpacityVisible(true);
        }

        public Object getValue() {
            return getColor();
        }

        public void setValue(Object value) {
            setColor((Color) value);
        }
    }

    private static class ColorAttribute extends Attribute<Color> {
        public ColorAttribute(String name, StringGetter desc) {
            super(name, desc);
        }

        @Override
        public java.awt.Component getCellEditor(Color value) {
            final var init = (value == null) ? Color.WHITE : value;
            return new ColorChooser(init);
        }

        private String hex(int value) {
            if (value >= 16) return Integer.toHexString(value);
            else return "0" + Integer.toHexString(value);
        }

        @Override
        public Color parse(String value) {
            if (value.length() == 9) {
                int r = Integer.parseInt(value.substring(1, 3), 16);
                int g = Integer.parseInt(value.substring(3, 5), 16);
                int b = Integer.parseInt(value.substring(5, 7), 16);
                int a = Integer.parseInt(value.substring(7, 9), 16);
                return new Color(r, g, b, a);
            } else {
                return Color.decode(value);
            }
        }

        @Override
        public String toDisplayString(Color value) {
            return toStandardString(value);
        }

        @Override
        public String toStandardString(Color c) {
            final var ret = "#" + hex(c.getRed()) + hex(c.getGreen()) + hex(c.getBlue());
            return c.getAlpha() == 255 ? ret : ret + hex(c.getAlpha());
        }
    }

    private static StringGetter getter(String s) {
        return new ConstantGetter(s);
    }

    private Attributes() {}
}
