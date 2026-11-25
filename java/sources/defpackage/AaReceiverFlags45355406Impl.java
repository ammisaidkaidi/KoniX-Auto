package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AaReceiverFlags45355406Impl implements AaReceiverFlags45355406 {
    public static final PhenotypeCombinedFlags a;
    public static final PhenotypeCombinedFlags b;

    static {
        CombinedFlagsFactory d = new CombinedFlagsFactory("com.google.android.apps.auto.aareceiver").d();
        a = d.a("45355406", 20L);
        b = d.b("45355405", false);
    }

    @Override // defpackage.AaReceiverFlags45355406
    public final long a() {
        return ((Long) a.a()).longValue();
    }

    @Override // defpackage.AaReceiverFlags45355406
    public final boolean b() {
        return ((Boolean) b.a()).booleanValue();
    }
}
