package MyBlockDesign.drmips.data;

import MyBlockDesign.drmips.util.StringGetter;

import static MyBlockDesign.drmips.gui.Strings.S;


public class Direction {
    public static Direction parse(String str) {
        if (str.equals(EAST.name)) return EAST;
        if (str.equals(WEST.name)) return WEST;
        if (str.equals(NORTH.name)) return NORTH;
        if (str.equals(SOUTH.name)) return SOUTH;
        throw new NumberFormatException("illegal direction '" + str + "'");
    }

    public static final Direction EAST =
            new Direction("east", S.getter("directionEastOption"), S.getter("directionEastVertical"), 0);
    public static final Direction NORTH =
            new Direction(
                    "north", S.getter("directionNorthOption"), S.getter("directionNorthVertical"), 1);
    public static final Direction WEST =
            new Direction("west", S.getter("directionWestOption"), S.getter("directionWestVertical"), 2);
    public static final Direction SOUTH =
            new Direction(
                    "south", S.getter("directionSouthOption"), S.getter("directionSouthVertical"), 3);


    private final int id;
    private final StringGetter disp;
    private final StringGetter vert;
    private final String name;


    private Direction(String name, StringGetter disp, StringGetter vert, int id) {
        this.name = name;
        this.disp = disp;
        this.id = id;
        this.vert = vert;
    }

    public int toDegrees() {
        return id * 90;
    }
}
