package MyBlockDesign.drmips.circuit;

import MyBlockDesign.drmips.data.*;
import MyBlockDesign.drmips.instance.StdAttr;
import MyBlockDesign.drmips.prefs.AppPreferences;

import static MyBlockDesign.drmips.gui.Strings.S;
import static MyBlockDesign.drmips.instance.StdAttr.*;

public class CircuitAttributes extends AbstractAttributeSet {



    static AttributeSet createBaseAttrs(Circuit source, String name) {
        final var ret = AttributeSets.fixedSet(STATIC_ATTRS, STATIC_DEFAULTS);
        ret.setValue(APPEARANCE_ATTR, AppPreferences.getDefaultCircuitAppearance());
        ret.setValue(CircuitAttributes.NAME_ATTR, name);
        ret.addAttributeListener(new StaticListener(source));
        return ret;
    }

    private static final Attribute<?>[] STATIC_ATTRS = {
            NAME_ATTR,
            CIRCUIT_LABEL_ATTR,
            CIRCUIT_LABEL_FACING_ATTR,
            CIRCUIT_LABEL_FONT_ATTR,
            APPEARANCE_ATTR,
            NAMED_CIRCUIT_BOX_FIXED_SIZE,
            SIMULATION_FREQUENCY,
            DOWNLOAD_FREQUENCY,
            DOWNLOAD_BOARD
    };

    private static final Object[] STATIC_DEFAULTS = {
            "", "", Direction.EAST, StdAttr.DEFAULT_LABEL_FONT, APPEAR_CLASSIC, false, -1d, -1d, ""
    };

    public static final Attribute<AttributeOption> APPEARANCE_ATTR =
            Attributes.forOption(
                    "appearance",
                    S.getter("circuitAppearanceAttr"),
                    new AttributeOption[] {APPEAR_CLASSIC, APPEAR_FPGA, APPEAR_EVOLUTION, APPEAR_CUSTOM});
}
