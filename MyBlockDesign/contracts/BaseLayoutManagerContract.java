package MyBlockDesign.contracts;

import java.awt.*;

public interface BaseLayoutManagerContract extends LayoutManager {
    @Override
    default void addLayoutComponent(String var1, Component var2) {
        // no-op implementation
    }

    @Override
    default void removeLayoutComponent(Component var1) {
        // no-op implementation
    }

    @Override
    Dimension preferredLayoutSize(Container var1);

    @Override
    Dimension minimumLayoutSize(Container var1);

    @Override
    default void layoutContainer(Container var1) {
        // no-op implementation
    }
}