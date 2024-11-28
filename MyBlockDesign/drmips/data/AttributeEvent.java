package MyBlockDesign.drmips.data;

public record AttributeEvent(AttributeSet getSource, Attribute<?> getAttribute, Object getValue, Object getOldValue) {

    public AttributeEvent(AttributeSet source) {
        this(source, null, null, null);
    }

}
