package MyBlockDesign;

public class Direction {

    private final int id;

    private Direction(int id) {
        this.id = id;
    }

    public int toDegrees() {
        return id * 90;
    }
}
