package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum dgq implements ddm {
    UNKNOWN(0),
    DEV(1),
    AUTOMATION(2),
    FISHFOOD(3),
    DOGFOOD(4),
    QA(5),
    RELEASE(6);

    private final int h;

    dgq(int i2) {
        this.h = i2;
    }

    public static dgq b(int i2) {
        switch (i2) {
            case 0:
                return UNKNOWN;
            case 1:
                return DEV;
            case 2:
                return AUTOMATION;
            case 3:
                return FISHFOOD;
            case 4:
                return DOGFOOD;
            case 5:
                return QA;
            case 6:
                return RELEASE;
            default:
                return null;
        }
    }

    public static ddo c() {
        return dgh.e;
    }

    @Override // defpackage.ddm
    public final int a() {
        return this.h;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.h);
    }
}
