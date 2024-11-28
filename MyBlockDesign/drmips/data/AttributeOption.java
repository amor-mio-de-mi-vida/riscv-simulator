package MyBlockDesign.drmips.data;

import MyBlockDesign.drmips.util.StringGetter;

public class AttributeOption implements AttributeOptionInterface {
    private final Object value;
    private final String name;
    private final StringGetter desc;

    public AttributeOption(Object value, String name, StringGetter desc) {
        this.value = value;
        this.name = name;
        this.desc = desc;
    }

    public AttributeOption(Object value, StringGetter desc) {
        this.value = value;
        this.name = value.toString();
        this.desc = desc;
    }

    public Object getValue() {
        return value;
    }

    public String toDisplayString() {
        return desc.toString();
    }

    public StringGetter getDisplayGetter() {
        return desc;
    }

    @Override
    public String toString() {
        return name;
    }
}
