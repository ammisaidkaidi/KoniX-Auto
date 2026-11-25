package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum ProjectionStartReason implements EnumLite {
    USER_REQUEST(0),
    AUTO_LAUNCH(1),
    AUTOMATIC_RESTART(2);

    public final int d;

    cla(int i) {
        this.d = i;
    }

    public static ProjectionStartReason b(int i) {
        switch (NavInstructionTypeEnum) {
            case 0:
                return USER_REQUEST;
            case 1:
                return AUTO_LAUNCH;
            case 2:
                return AUTOMATIC_RESTART;
            default:
                return null;
        }
    }

    public static EnumVerifier c() {
        return ckg.k;
    }

    @Override // defpackage.EnumLite
    public final int a() {
        return this.d;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.d);
    }
}
