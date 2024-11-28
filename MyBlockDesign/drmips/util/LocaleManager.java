package MyBlockDesign.drmips.util;

import java.util.*;

public class LocaleManager {

    private static class LocaleGetter implements StringGetter {
        final LocaleManager source;
        final String key;

        LocaleGetter(LocaleManager source, String key) {
            this.source = source;
            this.key = key;
        }

        @Override
        public String toString() {
            return source.get(key);
        }
    }

    private static final String SETTINGS_NAME = "settings";
    private final String dirName;
    private final String fileStart;
    private ResourceBundle settings = null;
    private ResourceBundle locale = null;
    private static final HashMap<Character, String> repl = null;

    public LocaleManager(String dirName, String fileStart) {
        this.dirName = dirName;
        this.fileStart = fileStart;

    }

    public String get(String key) {
        String ret;
        try {
            ret = locale.getString(key);
        } catch (MissingResourceException e) {
            ret = key;
        }
        final var repl = LocaleManager.repl;
        if (repl != null) ret = replaceAccents(ret, repl);
        return ret;
    }

    private static String replaceAccents(String src, HashMap<Character, String> repl) {
        // find first non-standard character - so we can avoid the
        // replacement process if possible
        var i = 0;
        var n = src.length();
        for (; i < n; i++) {
            final var ci = src.charAt(i);
            if (ci < 32 || ci >= 127) break;
        }
        if (i == n) return src;

        // ok, we'll have to consider replacing accents
        char[] cs = src.toCharArray();
        final var ret = new StringBuilder(src.substring(0, i));
        for (int j = i; j < cs.length; j++) {
            char cj = cs[j];
            if (cj < 32 || cj >= 127) {
                String out = repl.get(cj);
                if (out != null) {
                    ret.append(out);
                } else {
                    ret.append(cj);
                }
            } else {
                ret.append(cj);
            }
        }
        return ret.toString();
    }

    public StringGetter getter(String key) {
        return new LocaleGetter(this, key);
    }

    private void loadDefault() {
        if (settings == null) {
            try {
                settings = ResourceBundle.getBundle(dirName + "/" + SETTINGS_NAME);
            } catch (MissingResourceException ignored) {
                // Do nothing.
            }
        }

        try {
            loadLocale(Locale.getDefault());
            if (locale != null) return;
        } catch (MissingResourceException ignored) {
            // Do nothing.
        }
        try {
            loadLocale(Locale.ENGLISH);
            if (locale != null) return;
        } catch (MissingResourceException ignored) {
            // Do nothing.
        }
        Locale[] choices = getLocaleOptions();
        if (choices != null && choices.length > 0) loadLocale(choices[0]);
        if (locale != null) return;
        throw new RuntimeException("No locale bundles are available");
    }

    public Locale[] getLocaleOptions() {
        String locs = null;
        try {
            if (settings != null) locs = settings.getString("locales");
        } catch (MissingResourceException ignored) {
            // Do nothing.
        }
        if (locs == null) return new Locale[] {};

        final var retl = new ArrayList<Locale>();
        final var toks = new StringTokenizer(locs);
        while (toks.hasMoreTokens()) {
            final var f = toks.nextToken();
            String language;
            String country;
            if (f.length() >= 2) {
                language = f.substring(0, 2);
                country = (f.length() >= 5 ? f.substring(3, 5) : null);
            } else {
                language = null;
                country = null;
            }
            if (language != null) {
                final var loc = new Locale.Builder().setLanguage(language).setRegion(country).build();
                retl.add(loc);
            }
        }

        return retl.toArray(new Locale[0]);
    }

    private void loadLocale(Locale loc) {
        final var bundleName = dirName + "/strings/" + fileStart + "/" + fileStart;
        locale = ResourceBundle.getBundle(bundleName, loc);
    }
}
