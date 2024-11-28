package MyBlockDesign.drmips.data;

public interface AttributeListener {
    default void attributeListChanged(AttributeEvent e) {
        // no-op implementation
    }

    default void attributeValueChanged(AttributeEvent e) {
        // no-op implementation
    }
}
