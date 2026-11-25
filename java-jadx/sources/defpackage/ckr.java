package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum ckr implements ddm {
    UNKNOWN(0),
    DEPART(1),
    NAME_CHANGE(2),
    SLIGHT_TURN(3),
    TURN(4),
    SHARP_TURN(5),
    U_TURN(6),
    ON_RAMP(7),
    OFF_RAMP(8),
    FORK(9),
    MERGE(10),
    ROUNDABOUT_ENTER(11),
    ROUNDABOUT_EXIT(12),
    ROUNDABOUT_ENTER_AND_EXIT(13),
    STRAIGHT(14),
    FERRY_BOAT(16),
    FERRY_TRAIN(17),
    DESTINATION(19);

    private final int s;

    ckr(int i) {
        this.s = i;
    }

    public static ckr b(int i) {
        switch (i) {
            case 0:
                return UNKNOWN;
            case 1:
                return DEPART;
            case 2:
                return NAME_CHANGE;
            case 3:
                return SLIGHT_TURN;
            case 4:
                return TURN;
            case 5:
                return SHARP_TURN;
            case 6:
                return U_TURN;
            case 7:
                return ON_RAMP;
            case 8:
                return OFF_RAMP;
            case 9:
                return FORK;
            case 10:
                return MERGE;
            case 11:
                return ROUNDABOUT_ENTER;
            case 12:
                return ROUNDABOUT_EXIT;
            case 13:
                return ROUNDABOUT_ENTER_AND_EXIT;
            case 14:
                return STRAIGHT;
            case 15:
            case 18:
            default:
                return null;
            case 16:
                return FERRY_BOAT;
            case 17:
                return FERRY_TRAIN;
            case 19:
                return DESTINATION;
        }
    }

    @Override // defpackage.ddm
    public final int a() {
        return this.s;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.s);
    }
}
