package MyBlockDesign;

public class Circuit {

    CircuitWires wires = new CircuitWires();


//    public Bounds getBounds() {
//        final var wireBounds = wires.getWireBounds();
//        final var it = comps.iterator();
//        if (!it.hasNext()) return wireBounds;
//        final var first = it.next();
//        final var firstBounds = first.getBounds();
//        var xMin = firstBounds.getX();
//        var yMin = firstBounds.getY();
//        var xMax = xMin + firstBounds.getWidth();
//        var yMax = yMin + firstBounds.getHeight();
//        while (it.hasNext()) {
//            Component c = it.next();
//            Bounds bds = c.getBounds();
//            int x0 = bds.getX();
//            int x1 = x0 + bds.getWidth();
//            int y0 = bds.getY();
//            int y1 = y0 + bds.getHeight();
//            if (x0 < xMin) xMin = x0;
//            if (x1 > xMax) xMax = x1;
//            if (y0 < yMin) yMin = y0;
//            if (y1 > yMax) yMax = y1;
//        }
//        final var compBounds = Bounds.create(xMin, yMin, xMax - xMin, yMax - yMin);
//        return (wireBounds.getWidth() == 0 || wireBounds.getHeight() == 0)
//                ? compBounds
//                : compBounds.add(wireBounds);
//    }
}
