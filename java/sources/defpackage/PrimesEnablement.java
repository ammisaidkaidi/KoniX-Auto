package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesEnablement {
    public static /* synthetic */ String a(int i) {
        switch (NavInstructionTypeEnum) {
            case 1:
                return "DEFAULT";
            case 2:
                return "EXPLICITLY_DISABLED";
            case 3:
                return "EXPLICITLY_ENABLED";
            default:
                return "null";
        }
    }

    public static /* synthetic */ void b(int i) {
        if (NavInstructionTypeEnum == 0) {
            throw null;
        }
    }
}
