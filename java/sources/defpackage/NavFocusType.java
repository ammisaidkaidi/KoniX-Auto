package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum NavFocusType implements EnumLite {
    NAV_FOCUS_NATIVE(1),
    NAV_FOCUS_PROJECTED(2);

    public final int c;

    ckh(int i) {
        this.c = i;
    }

    public static NavFocusType b(int i) {
        switch (NavInstructionTypeEnum) {
            case 1:
                return NAV_FOCUS_NATIVE;
            case 2:
                return NAV_FOCUS_PROJECTED;
            default:
                return null;
        }
    }

    @Override // defpackage.EnumLite
    public final int a() {
        return this.c;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.c);
    }
}
