package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum f implements ddm {
    UNKNOWN(0),
    STRAIGHT(1),
    SLIGHT_LEFT(2),
    SLIGHT_RIGHT(3),
    NORMAL_LEFT(4),
    NORMAL_RIGHT(5),
    SHARP_LEFT(6),
    SHARP_RIGHT(7),
    U_TURN_LEFT(8),
    U_TURN_RIGHT(9),
    UNRECOGNIZED(-1);

    private final int l;

    f(int i) {
        this.l = i;
    }

    public static f b(int i) {
        switch (i) {
            case 0:
                return UNKNOWN;
            case 1:
                return STRAIGHT;
            case 2:
                return SLIGHT_LEFT;
            case 3:
                return SLIGHT_RIGHT;
            case 4:
                return NORMAL_LEFT;
            case 5:
                return NORMAL_RIGHT;
            case 6:
                return SHARP_LEFT;
            case 7:
                return SHARP_RIGHT;
            case 8:
                return U_TURN_LEFT;
            default:
                return U_TURN_RIGHT;
        }
    }

    @Override // defpackage.ddm
    public final int a() {
        if (this != UNRECOGNIZED) {
            return this.l;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(a());
    }
}
