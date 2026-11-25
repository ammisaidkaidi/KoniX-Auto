package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum i implements ddm {
    UNKNOWN(0),
    DEPART(1),
    NAME_CHANGE(2),
    KEEP_LEFT(3),
    KEEP_RIGHT(4),
    TURN_SLIGHT_LEFT(5),
    TURN_SLIGHT_RIGHT(6),
    TURN_NORMAL_LEFT(7),
    TURN_NORMAL_RIGHT(8),
    TURN_SHARP_LEFT(9),
    TURN_SHARP_RIGHT(10),
    U_TURN_LEFT(11),
    U_TURN_RIGHT(12),
    ON_RAMP_SLIGHT_LEFT(13),
    ON_RAMP_SLIGHT_RIGHT(14),
    ON_RAMP_NORMAL_LEFT(15),
    ON_RAMP_NORMAL_RIGHT(16),
    ON_RAMP_SHARP_LEFT(17),
    ON_RAMP_SHARP_RIGHT(18),
    ON_RAMP_U_TURN_LEFT(19),
    ON_RAMP_U_TURN_RIGHT(20),
    OFF_RAMP_SLIGHT_LEFT(21),
    OFF_RAMP_SLIGHT_RIGHT(22),
    OFF_RAMP_NORMAL_LEFT(23),
    OFF_RAMP_NORMAL_RIGHT(24),
    FORK_LEFT(25),
    FORK_RIGHT(26),
    MERGE_LEFT(27),
    MERGE_RIGHT(28),
    MERGE_SIDE_UNSPECIFIED(54),
    ROUNDABOUT_ENTER(29),
    ROUNDABOUT_EXIT(30),
    ROUNDABOUT_ENTER_AND_EXIT_CW(55),
    ROUNDABOUT_ENTER_AND_EXIT_CW_SHARP_RIGHT(31),
    ROUNDABOUT_ENTER_AND_EXIT_CW_NORMAL_RIGHT(32),
    ROUNDABOUT_ENTER_AND_EXIT_CW_SLIGHT_RIGHT(33),
    ROUNDABOUT_ENTER_AND_EXIT_CW_STRAIGHT(34),
    ROUNDABOUT_ENTER_AND_EXIT_CW_SHARP_LEFT(35),
    ROUNDABOUT_ENTER_AND_EXIT_CW_NORMAL_LEFT(36),
    ROUNDABOUT_ENTER_AND_EXIT_CW_SLIGHT_LEFT(37),
    ROUNDABOUT_ENTER_AND_EXIT_CW_U_TURN(38),
    ROUNDABOUT_ENTER_AND_EXIT_CCW(56),
    ROUNDABOUT_ENTER_AND_EXIT_CCW_SHARP_RIGHT(39),
    ROUNDABOUT_ENTER_AND_EXIT_CCW_NORMAL_RIGHT(40),
    ROUNDABOUT_ENTER_AND_EXIT_CCW_SLIGHT_RIGHT(41),
    ROUNDABOUT_ENTER_AND_EXIT_CCW_STRAIGHT(42),
    ROUNDABOUT_ENTER_AND_EXIT_CCW_SHARP_LEFT(43),
    ROUNDABOUT_ENTER_AND_EXIT_CCW_NORMAL_LEFT(44),
    ROUNDABOUT_ENTER_AND_EXIT_CCW_SLIGHT_LEFT(45),
    ROUNDABOUT_ENTER_AND_EXIT_CCW_U_TURN(46),
    STRAIGHT(47),
    FERRY_BOAT(48),
    FERRY_TRAIN(49),
    DESTINATION(50),
    DESTINATION_STRAIGHT(51),
    DESTINATION_LEFT(52),
    DESTINATION_RIGHT(53),
    UNRECOGNIZED(-1);

    private final int ag;

    i(int i) {
        this.ag = i;
    }

    public static i b(int i) {
        switch (i) {
            case 0:
                return UNKNOWN;
            case 1:
                return DEPART;
            case 2:
                return NAME_CHANGE;
            case 3:
                return KEEP_LEFT;
            case 4:
                return KEEP_RIGHT;
            case 5:
                return TURN_SLIGHT_LEFT;
            case 6:
                return TURN_SLIGHT_RIGHT;
            case 7:
                return TURN_NORMAL_LEFT;
            case 8:
                return TURN_NORMAL_RIGHT;
            case 9:
                return TURN_SHARP_LEFT;
            case 10:
                return TURN_SHARP_RIGHT;
            case 11:
                return U_TURN_LEFT;
            case 12:
                return U_TURN_RIGHT;
            case 13:
                return ON_RAMP_SLIGHT_LEFT;
            case 14:
                return ON_RAMP_SLIGHT_RIGHT;
            case 15:
                return ON_RAMP_NORMAL_LEFT;
            case 16:
                return ON_RAMP_NORMAL_RIGHT;
            case 17:
                return ON_RAMP_SHARP_LEFT;
            case 18:
                return ON_RAMP_SHARP_RIGHT;
            case 19:
                return ON_RAMP_U_TURN_LEFT;
            case 20:
                return ON_RAMP_U_TURN_RIGHT;
            case 21:
                return OFF_RAMP_SLIGHT_LEFT;
            case 22:
                return OFF_RAMP_SLIGHT_RIGHT;
            case 23:
                return OFF_RAMP_NORMAL_LEFT;
            case 24:
                return OFF_RAMP_NORMAL_RIGHT;
            case 25:
                return FORK_LEFT;
            case 26:
                return FORK_RIGHT;
            case 27:
                return MERGE_LEFT;
            case 28:
                return MERGE_RIGHT;
            case 29:
                return ROUNDABOUT_ENTER;
            case 30:
                return ROUNDABOUT_EXIT;
            case 31:
                return ROUNDABOUT_ENTER_AND_EXIT_CW_SHARP_RIGHT;
            case 32:
                return ROUNDABOUT_ENTER_AND_EXIT_CW_NORMAL_RIGHT;
            case 33:
                return ROUNDABOUT_ENTER_AND_EXIT_CW_SLIGHT_RIGHT;
            case 34:
                return ROUNDABOUT_ENTER_AND_EXIT_CW_STRAIGHT;
            case 35:
                return ROUNDABOUT_ENTER_AND_EXIT_CW_SHARP_LEFT;
            case 36:
                return ROUNDABOUT_ENTER_AND_EXIT_CW_NORMAL_LEFT;
            case 37:
                return ROUNDABOUT_ENTER_AND_EXIT_CW_SLIGHT_LEFT;
            case 38:
                return ROUNDABOUT_ENTER_AND_EXIT_CW_U_TURN;
            case 39:
                return ROUNDABOUT_ENTER_AND_EXIT_CCW_SHARP_RIGHT;
            case 40:
                return ROUNDABOUT_ENTER_AND_EXIT_CCW_NORMAL_RIGHT;
            case 41:
                return ROUNDABOUT_ENTER_AND_EXIT_CCW_SLIGHT_RIGHT;
            case 42:
                return ROUNDABOUT_ENTER_AND_EXIT_CCW_STRAIGHT;
            case 43:
                return ROUNDABOUT_ENTER_AND_EXIT_CCW_SHARP_LEFT;
            case 44:
                return ROUNDABOUT_ENTER_AND_EXIT_CCW_NORMAL_LEFT;
            case 45:
                return ROUNDABOUT_ENTER_AND_EXIT_CCW_SLIGHT_LEFT;
            case 46:
                return ROUNDABOUT_ENTER_AND_EXIT_CCW_U_TURN;
            case 47:
                return STRAIGHT;
            case 48:
                return FERRY_BOAT;
            case 49:
                return FERRY_TRAIN;
            case 50:
                return DESTINATION;
            case 51:
                return DESTINATION_STRAIGHT;
            case 52:
                return DESTINATION_LEFT;
            case 53:
                return DESTINATION_RIGHT;
            case 54:
                return MERGE_SIDE_UNSPECIFIED;
            case 55:
                return ROUNDABOUT_ENTER_AND_EXIT_CW;
            case 56:
                return ROUNDABOUT_ENTER_AND_EXIT_CCW;
            default:
                return null;
        }
    }

    @Override // defpackage.ddm
    public final int a() {
        if (this != UNRECOGNIZED) {
            return this.ag;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(a());
    }
}
