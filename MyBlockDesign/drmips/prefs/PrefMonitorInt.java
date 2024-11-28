package MyBlockDesign.drmips.prefs;

import java.util.prefs.PreferenceChangeEvent;

public class PrefMonitorInt extends AbstractPrefMonitor<Integer> {

    private final int dflt;

    private int value;


    public PrefMonitorInt(String name, int dflt) {
        super(name);
        this.dflt = dflt;
        this.value = dflt;
        final var prefs = AppPreferences.getPrefs();
        set(prefs.getInt(name, dflt));
        prefs.addPreferenceChangeListener(this);
    }

    @Override
    public Integer get() {
        return value;
    }

    @Override
    public void preferenceChange(PreferenceChangeEvent event) {
        final var prefs = event.getNode();
        final var prop = event.getKey();
        final var name = getIdentifier();
        if (prop.equals(name)) {
            final var oldValue = value;
            final var newValue = prefs.getInt(name, dflt);
            if (newValue != oldValue) {
                value = newValue;
                AppPreferences.firePropertyChange(name, oldValue, newValue);
            }
        }
    }

    @Override
    public void set(Integer newValue) {
        final var newVal = newValue;
        if (value != newVal) {
            AppPreferences.getPrefs().putInt(getIdentifier(), newVal);
        }
    }
}
