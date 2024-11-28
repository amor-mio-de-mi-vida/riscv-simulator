package MyBlockDesign.drmips.data;

public class Location {

    private final int hashCode;
    private final int x;
    private final int y;
    private final boolean hasToSnap;

    private Location(int hashCode, int x, int y, boolean hasToSnap) {
        this.hashCode = hashCode;
        this.hasToSnap = hasToSnap;
        this.x = x;
        this.y = y;
    }


    public int getX() {
        return x;
    }

    public int getY() {
        return y;
    }

    public interface At {
        Location getLocation();
    }
}
