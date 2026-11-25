package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum ckp implements ddm {
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
    MERGE_SIDE_UNSPECIFIED(29),
    ROUNDABOUT_ENTER_AND_EXIT_CW(32),
    ROUNDABOUT_ENTER_AND_EXIT_CW_WITH_ANGLE(33),
    ROUNDABOUT_ENTER_AND_EXIT_CCW(34),
    ROUNDABOUT_ENTER_AND_EXIT_CCW_WITH_ANGLE(35),
    STRAIGHT(36),
    FERRY_BOAT(37),
    FERRY_TRAIN(38),
    DESTINATION(39),
    DESTINATION_STRAIGHT(40),
    DESTINATION_LEFT(41),
    DESTINATION_RIGHT(42),
    ROUNDABOUT_ENTER_CW(43),
    ROUNDABOUT_EXIT_CW(44),
    ROUNDABOUT_ENTER_CCW(45),
    ROUNDABOUT_EXIT_CCW(46),
    FERRY_BOAT_LEFT(47),
    FERRY_BOAT_RIGHT(48),
    FERRY_TRAIN_LEFT(49),
    FERRY_TRAIN_RIGHT(50);

    private final int X;

    ckp(int i) {
        this.X = i;
    }

    public static ckp b(int i) {
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
                return MERGE_SIDE_UNSPECIFIED;
            case 30:
            case 31:
            default:
                return null;
            case 32:
                return ROUNDABOUT_ENTER_AND_EXIT_CW;
            case 33:
                return ROUNDABOUT_ENTER_AND_EXIT_CW_WITH_ANGLE;
            case 34:
                return ROUNDABOUT_ENTER_AND_EXIT_CCW;
            case 35:
                return ROUNDABOUT_ENTER_AND_EXIT_CCW_WITH_ANGLE;
            case 36:
                return STRAIGHT;
            case 37:
                return FERRY_BOAT;
            case 38:
                return FERRY_TRAIN;
            case 39:
                return DESTINATION;
            case 40:
                return DESTINATION_STRAIGHT;
            case 41:
                return DESTINATION_LEFT;
            case 42:
                return DESTINATION_RIGHT;
            case 43:
                return ROUNDABOUT_ENTER_CW;
            case 44:
                return ROUNDABOUT_EXIT_CW;
            case 45:
                return ROUNDABOUT_ENTER_CCW;
            case 46:
                return ROUNDABOUT_EXIT_CCW;
            case 47:
                return FERRY_BOAT_LEFT;
            case 48:
                return FERRY_BOAT_RIGHT;
            case 49:
                return FERRY_TRAIN_LEFT;
            case 50:
                return FERRY_TRAIN_RIGHT;
        }
    }

    public static ddo c() {
        return ckg.e;
    }

    @Override // defpackage.ddm
    public final int a() {
        return this.X;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.X);
    }
}
