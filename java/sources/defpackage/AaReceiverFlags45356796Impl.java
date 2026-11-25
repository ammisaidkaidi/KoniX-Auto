package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AaReceiverFlags45356796Impl implements AaReceiverFlags45356796 {
    public static final PhenotypeCombinedFlags a;
    public static final PhenotypeCombinedFlags b;
    public static final PhenotypeCombinedFlags c;
    public static final PhenotypeCombinedFlags d;
    public static final PhenotypeCombinedFlags e;

    static {
        CombinedFlagsFactory d2 = new CombinedFlagsFactory("com.google.android.apps.auto.aareceiver").d();
        a = d2.b("9", false);
        b = d2.b("45356796", false);
        c = d2.b("45356938", true);
        d = d2.b("45360588", false);
        e = d2.b("45354780", false);
    }

    @Override // defpackage.AaReceiverFlags45356796
    public final boolean a() {
        return ((Boolean) a.a()).booleanValue();
    }

    @Override // defpackage.AaReceiverFlags45356796
    public final boolean b() {
        return ((Boolean) b.a()).booleanValue();
    }

    @Override // defpackage.AaReceiverFlags45356796
    public final boolean c() {
        return ((Boolean) c.a()).booleanValue();
    }

    @Override // defpackage.AaReceiverFlags45356796
    public final boolean d() {
        return ((Boolean) d.a()).booleanValue();
    }

    @Override // defpackage.AaReceiverFlags45356796
    public final boolean e() {
        return ((Boolean) e.a()).booleanValue();
    }
}
