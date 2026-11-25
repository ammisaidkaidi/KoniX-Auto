package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum cla implements ddm {
    USER_REQUEST(0),
    AUTO_LAUNCH(1),
    AUTOMATIC_RESTART(2);

    public final int d;

    cla(int i) {
        this.d = i;
    }

    public static cla b(int i) {
        switch (i) {
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

    public static ddo c() {
        return ckg.k;
    }

    @Override // defpackage.ddm
    public final int a() {
        return this.d;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.d);
    }
}
