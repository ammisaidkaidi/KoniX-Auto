package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AaReceiverFlags45359453Impl implements AaReceiverFlags45359453 {
    public static final PhenotypeCombinedFlags a;
    public static final PhenotypeCombinedFlags b;

    static {
        CombinedFlagsFactory d = new CombinedFlagsFactory("com.google.android.apps.auto.aareceiver").d();
        a = d.b("45359453", true);
        b = d.b("45359390", true);
    }

    @Override // defpackage.AaReceiverFlags45359453
    public final boolean a() {
        return ((Boolean) a.a()).booleanValue();
    }

    @Override // defpackage.AaReceiverFlags45359453
    public final boolean b() {
        return ((Boolean) b.a()).booleanValue();
    }
}
