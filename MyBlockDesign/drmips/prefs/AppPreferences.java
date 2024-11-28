package MyBlockDesign.drmips.prefs;

import MyBlockDesign.PropertyChangeWeakSupport;
import MyBlockDesign.drmips.data.AttributeOption;
import MyBlockDesign.drmips.data.Direction;
import MyBlockDesign.drmips.instance.StdAttr;
import mypainting.Main;

import java.awt.*;
import java.beans.PropertyChangeListener;
import java.util.prefs.BackingStoreException;
import java.util.prefs.PreferenceChangeEvent;
import java.util.prefs.PreferenceChangeListener;
import java.util.prefs.Preferences;

public class AppPreferences {
    private static Preferences prefs = null;
    private static MyListener myListener = null;

    public static final PrefMonitor<String> CANVAS_PLACEMENT =
            create(
                    new PrefMonitorStringOpts(
                            "canvasPlacement",
                            new String[] {
                                    Direction.EAST.toString(),
                                    Direction.WEST.toString()},
                            Direction.EAST.toString()));
    public static final PrefMonitor<Double> WINDOW_MAIN_SPLIT =
            create(new PrefMonitorDouble("windowMainSplit", 0.25));

    public static final PrefMonitor<Double> WINDOW_LEFT_SPLIT =
            create(new PrefMonitorDouble("windowLeftSplit", 0.5));

    public static final PrefMonitor<Integer> WINDOW_WIDTH =
            create(
                    new PrefMonitorInt(
                            "windowWidth",
                            ((!GraphicsEnvironment.isHeadless())
                                    ? Toolkit.getDefaultToolkit().getScreenSize().width
                                    : 0)
                                    / 2));

    public static final PrefMonitor<Integer> WINDOW_HEIGHT =
            create(
                    new PrefMonitorInt(
                            "windowHeight",
                            ((!GraphicsEnvironment.isHeadless())
                                    ? Toolkit.getDefaultToolkit().getScreenSize().height
                                    : 0)));

    public static final PrefMonitor<Boolean> AntiAliassing =
            create(new PrefMonitorBoolean("AntiAliassing", true));
    private static final PropertyChangeWeakSupport propertySupport =
            new PropertyChangeWeakSupport(AppPreferences.class);
    public static final PrefMonitor<Boolean> LAYOUT_SHOW_GRID =
            create(new PrefMonitorBoolean("layoutGrid", true));
    public static final PrefMonitor<Double> LAYOUT_ZOOM =
            create(new PrefMonitorDouble("layoutZoom", 1.0));
    private static <E> PrefMonitor<E> create(PrefMonitor<E> monitor) {
        return monitor;
    }

    public static Preferences getPrefs() {
        return getPrefs(false);
    }

    private static Preferences getPrefs(boolean shouldClear) {
        if (prefs == null) {
            synchronized (AppPreferences.class) {
                if (prefs == null) {
                    final var p = Preferences.userNodeForPackage(Main.class);
                    if (shouldClear) {
                        try {
                            p.clear();
                        } catch (BackingStoreException ignored) {
                        }
                    }
                    myListener = new MyListener();
                    p.addPreferenceChangeListener(myListener);
                    prefs = p;

//                    setTemplateFile(convertFile(p.get(TEMPLATE_FILE, null)));
//                    setTemplateType(p.getInt(TEMPLATE_TYPE, TEMPLATE_PLAIN));
                }
            }
        }
        return prefs;
    }

    public static AttributeOption getDefaultCircuitAppearance() {
        if (DefaultAppearance.get().equals(StdAttr.APPEAR_EVOLUTION.toString())) {
            return StdAttr.APPEAR_EVOLUTION;
        } else if (DefaultAppearance.get().equals(StdAttr.APPEAR_FPGA.toString())) {
            return StdAttr.APPEAR_FPGA;
        } else {
            return StdAttr.APPEAR_CLASSIC;
        }
    }

    public static void addPropertyChangeListener(
            String propertyName, PropertyChangeListener listener) {
        propertySupport.addPropertyChangeListener(propertyName, listener);
    }
    public static void addPropertyChangeListener(PropertyChangeListener listener) {
        propertySupport.addPropertyChangeListener(listener);
    }

    public static void removePropertyChangeListener(PropertyChangeListener listener) {
        propertySupport.removePropertyChangeListener(listener);
    }
    public static void removePropertyChangeListener(
            String propertyName, PropertyChangeListener listener) {
        propertySupport.removePropertyChangeListener(propertyName, listener);
    }
    static void firePropertyChange(String property, boolean oldVal, boolean newVal) {
        propertySupport.firePropertyChange(property, oldVal, newVal);
    }

    static void firePropertyChange(String property, Object oldVal, Object newVal) {
        propertySupport.firePropertyChange(property, oldVal, newVal);
    }
    public static final int DEFAULT_CANVAS_BG_COLOR = 0xFFFFFFFF;
    public static final int DEFAULT_GRID_BG_COLOR = 0xFFFFFFFF;
    public static final int DEFAULT_GRID_DOT_COLOR = 0xFF777777;
    public static final int DEFAULT_ZOOMED_DOT_COLOR = 0xFFCCCCCC;
    public static final int DEFAULT_COMPONENT_COLOR = 0x00000000;
    public static final int DEFAULT_COMPONENT_SECONDARY_COLOR = 0x99999999;
    public static final int DEFAULT_COMPONENT_GHOST_COLOR = 0x99999999;
    public static final int DEFAULT_COMPONENT_ICON_COLOR = 0x00000000;
    public static void setDefaultGridColors() {
        CANVAS_BG_COLOR.set(DEFAULT_CANVAS_BG_COLOR);
        GRID_BG_COLOR.set(DEFAULT_GRID_BG_COLOR);
        GRID_DOT_COLOR.set(DEFAULT_GRID_DOT_COLOR);
        GRID_ZOOMED_DOT_COLOR.set(DEFAULT_ZOOMED_DOT_COLOR);
        COMPONENT_COLOR.set(DEFAULT_COMPONENT_COLOR);
        COMPONENT_SECONDARY_COLOR.set(DEFAULT_COMPONENT_SECONDARY_COLOR);
        COMPONENT_GHOST_COLOR.set(DEFAULT_COMPONENT_GHOST_COLOR);
        COMPONENT_ICON_COLOR.set(DEFAULT_COMPONENT_ICON_COLOR);
    }

    public static final PrefMonitor<Integer> CANVAS_BG_COLOR =
            create(new PrefMonitorInt("canvasBgColor", DEFAULT_CANVAS_BG_COLOR));
    public static final PrefMonitor<Integer> GRID_BG_COLOR =
            create(new PrefMonitorInt("gridBgColor", DEFAULT_GRID_BG_COLOR));
    public static final PrefMonitor<Integer> GRID_DOT_COLOR =
            create(new PrefMonitorInt("gridDotColor", DEFAULT_GRID_DOT_COLOR));
    public static final PrefMonitor<Integer> GRID_ZOOMED_DOT_COLOR =
            create(new PrefMonitorInt("gridZoomedDotColor", DEFAULT_ZOOMED_DOT_COLOR));
    public static final PrefMonitor<Integer> COMPONENT_COLOR =
            create(new PrefMonitorInt("componentColor", DEFAULT_COMPONENT_COLOR));
    public static final PrefMonitor<Integer> COMPONENT_SECONDARY_COLOR =
            create(new PrefMonitorInt("componentSecondaryColor", DEFAULT_COMPONENT_SECONDARY_COLOR));
    public static final PrefMonitor<Integer> COMPONENT_GHOST_COLOR =
            create(new PrefMonitorInt("componentGhostColor", DEFAULT_COMPONENT_GHOST_COLOR));
    public static final PrefMonitor<Integer> COMPONENT_ICON_COLOR =
            create(new PrefMonitorInt("componentIconColor", DEFAULT_COMPONENT_ICON_COLOR));

    public static double getAutoScaleFactor() {
        return (((!GraphicsEnvironment.isHeadless())
                ? Toolkit.getDefaultToolkit().getScreenSize().getHeight()
                : 0)
                / 1000);
    }
    public static final PrefMonitor<Double> SCALE_FACTOR =
            create(
                    new PrefMonitorDouble(
                            "Scale",
                            Math.max(
                                    getAutoScaleFactor(),
                                    1.0)));
    public static Font getScaledFont(Font myfont) {
        if (myfont != null) {
            return myfont.deriveFont(getScaled((float) FONT_SIZE));
        } else {
            return null;
        }
    }

    public static float getScaled(float value) {
        getPrefs();
        float scale = ((float) ((int) (SCALE_FACTOR.get() * 10))) / (float) 10.0;
        return value * scale;
    }

    public static int getIconSize() {
        return (int) getScaled(IconSize);
    }

    // Layout preferences

    public static final PrefMonitor<String> DefaultAppearance =
            create(
                    new PrefMonitorStringOpts(
                            "defaultAppearance",
                            new String[] {
                                    StdAttr.APPEAR_CLASSIC.toString(),
                                    StdAttr.APPEAR_FPGA.toString(),
                                    StdAttr.APPEAR_EVOLUTION.toString()
                            },
                            StdAttr.APPEAR_EVOLUTION.toString()));



    // Template preferences
    public static final int FONT_SIZE = 14;
    public static final int IconSize = 16;

    private static class MyListener implements PreferenceChangeListener{
//        @Override
//        public void localeChanged() {
//            final var loc = LocaleManager.getLocale();
//            final var lang = loc.getLanguage();
//            if (LOCALE != null) {
//                LOCALE.set(lang);
//            }
//        }

        @Override
        public void preferenceChange(PreferenceChangeEvent event) {
//            final var prefs = event.getNode();
//            final var prop = event.getKey();
//            if (prop.equals(TEMPLATE_TYPE)) {
//                int oldValue = templateType;
//                int value = prefs.getInt(TEMPLATE_TYPE, TEMPLATE_UNKNOWN);
//                if (value != oldValue) {
//                    templateType = value;
//                    propertySupport.firePropertyChange(TEMPLATE, oldValue, value);
//                    propertySupport.firePropertyChange(TEMPLATE_TYPE, oldValue, value);
//                }
//            } else if (prop.equals(TEMPLATE_FILE)) {
//                final var oldValue = templateFile;
//                final var value = convertFile(prefs.get(TEMPLATE_FILE, null));
//                if (!Objects.equals(value, oldValue)) {
//                    templateFile = value;
//                    if (templateType == TEMPLATE_CUSTOM) {
//                        customTemplate = null;
//                        propertySupport.firePropertyChange(TEMPLATE, oldValue, value);
//                    }
//                    propertySupport.firePropertyChange(TEMPLATE_FILE, oldValue, value);
//                }
//            }
        }
    }
}
