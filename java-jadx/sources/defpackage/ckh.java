package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum ckh implements ddm {
    NAV_FOCUS_NATIVE(1),
    NAV_FOCUS_PROJECTED(2);

    public final int c;

    ckh(int i) {
        this.c = i;
    }

    public static ckh b(int i) {
        switch (i) {
            case 1:
                return NAV_FOCUS_NATIVE;
            case 2:
                return NAV_FOCUS_PROJECTED;
            default:
                return null;
        }
    }

    @Override // defpackage.ddm
    public final int a() {
        return this.c;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.c);
    }
}
