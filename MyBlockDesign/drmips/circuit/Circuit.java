package MyBlockDesign.drmips.circuit;

import MyBlockDesign.DrMIPSFile;
import MyBlockDesign.drmips.data.AttributeSet;
import MyBlockDesign.drmips.data.Bounds;
import MyBlockDesign.CircuitWires;
import MyBlockDesign.drmips.proj.Project;

import java.awt.*;

public class Circuit {
    private final AttributeSet staticAttrs;
    private Project proj;
    CircuitWires wires = new CircuitWires();

    public Circuit(String name, DrMIPSFile file, Project proj) {
        staticAttrs = CircuitAttributes.createBaseAttrs(this, name);


        this.proj = proj;
    }

    public Bounds getBounds() {
        final var wireBounds = wires.getWireBounds();
        final var it = comps.iterator();
        if (!it.hasNext()) return wireBounds;
        final var first = it.next();
        final var firstBounds = first.getBounds();
        var xMin = firstBounds.getX();
        var yMin = firstBounds.getY();
        var xMax = xMin + firstBounds.getWidth();
        var yMax = yMin + firstBounds.getHeight();
        while (it.hasNext()) {
            Component c = it.next();
            Bounds bds = c.getBounds();
            int x0 = bds.getX();
            int x1 = x0 + bds.getWidth();
            int y0 = bds.getY();
            int y1 = y0 + bds.getHeight();
            if (x0 < xMin) xMin = x0;
            if (x1 > xMax) xMax = x1;
            if (y0 < yMin) yMin = y0;
            if (y1 > yMax) yMax = y1;
        }
        final var compBounds = Bounds.create(xMin, yMin, xMax - xMin, yMax - yMin);
        return (wireBounds.getWidth() == 0 || wireBounds.getHeight() == 0)
                ? compBounds
                : compBounds.add(wireBounds);
    }

    public Bounds getBounds(Graphics g) {
        final var ret = wires.getWireBounds();
        var xMin = ret.getX();
        var yMin = ret.getY();
        var xMax = xMin + ret.getWidth();
        var yMax = yMin + ret.getHeight();
        if (ret == Bounds.EMPTY_BOUNDS) {
            xMin = Integer.MAX_VALUE;
            yMin = Integer.MAX_VALUE;
            xMax = Integer.MIN_VALUE;
            yMax = Integer.MIN_VALUE;
        }
        for (final var comp : comps) {
            final var bds = comp.getBounds(g);
            if (bds != null && bds != Bounds.EMPTY_BOUNDS) {
                final var x0 = bds.getX();
                final var x1 = x0 + bds.getWidth();
                final var y0 = bds.getY();
                final var y1 = y0 + bds.getHeight();
                if (x0 < xMin) xMin = x0;
                if (x1 > xMax) xMax = x1;
                if (y0 < yMin) yMin = y0;
                if (y1 > yMax) yMax = y1;
            }
        }
        if (xMin > xMax || yMin > yMax) return Bounds.EMPTY_BOUNDS;
        return Bounds.create(xMin, yMin, xMax - xMin, yMax - yMin);
    }
}
