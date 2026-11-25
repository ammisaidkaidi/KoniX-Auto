package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AaReceiverFlagsDjqImpl implements AaReceiverFlagsDjq {
    public static final PhenotypeCombinedFlags a;

    static {
        CombinedFlagsFactory d = new CombinedFlagsFactory("com.google.android.apps.auto.aareceiver").d();
        a = d.b("15", false);
        d.b("5", false);
    }

    @Override // defpackage.AaReceiverFlagsDjq
    public final boolean a() {
        return ((Boolean) a.a()).booleanValue();
    }
}
