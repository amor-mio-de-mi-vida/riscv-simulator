package MyBlockDesign;

import MyBlockDesign.drmips.data.Bounds;

import java.util.HashSet;

public class CircuitWires {
    private Bounds bounds = Bounds.EMPTY_BOUNDS;
    private final HashSet<Wire> wires = new HashSet<>();

    Bounds getWireBounds() {
        var bds = bounds;
        if (bds == Bounds.EMPTY_BOUNDS) {
            bds = recomputeBounds();
        }
        return bds;
    }

    private Bounds recomputeBounds() {
        final var it = wires.iterator();
        if (!it.hasNext()) {
            bounds = Bounds.EMPTY_BOUNDS;
            return Bounds.EMPTY_BOUNDS;
        }

        var w = it.next();
        var xmin = w.e0.getX();
        var ymin = w.e0.getY();
        var xmax = w.e1.getX();
        var ymax = w.e1.getY();
        while (it.hasNext()) {
            w = it.next();
            final var x0 = w.e0.getX();
            if (x0 < xmin) xmin = x0;
            final var x1 = w.e1.getX();
            if (x1 > xmax) xmax = x1;
            final var y0 = w.e0.getY();
            if (y0 < ymin) ymin = y0;
            final var y1 = w.e1.getY();
            if (y1 > ymax) ymax = y1;
        }
        bounds = Bounds.create(xmin, ymin, xmax - xmin + 1, ymax - ymin + 1);
        return bounds;
    }
}
