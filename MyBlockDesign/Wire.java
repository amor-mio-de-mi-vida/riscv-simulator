package MyBlockDesign;

import MyBlockDesign.drmips.data.Location;

public class Wire {
    final Location e0;
    final Location e1;
    final boolean isXEqual;

    private Wire(Location e0, Location e1) {
        this.isXEqual = e0.getX() == e1.getX();
        if (isXEqual) {
            if (e0.getY() > e1.getY()) {
                this.e0 = e1;
                this.e1 = e0;
            } else {
                this.e0 = e0;
                this.e1 = e1;
            }
        } else {
            if (e0.getX() > e1.getX()) {
                this.e0 = e1;
                this.e1 = e0;
            } else {
                this.e0 = e0;
                this.e1 = e1;
            }
        }
    }
}
