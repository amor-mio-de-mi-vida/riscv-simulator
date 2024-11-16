package MyBlockDesign;

import mypainting.Main;

import java.beans.PropertyChangeListener;
import java.util.Objects;
import java.util.prefs.BackingStoreException;
import java.util.prefs.PreferenceChangeEvent;
import java.util.prefs.PreferenceChangeListener;
import java.util.prefs.Preferences;

public class AppPreferences {
    private static Preferences prefs = null;
    private static MyListener myListener = null;
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
