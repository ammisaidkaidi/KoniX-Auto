package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AaReceiverFlags45350358Impl implements AaReceiverFlags45350358 {
    public static final PhenotypeCombinedFlags a;
    public static final PhenotypeCombinedFlags b;
    public static final PhenotypeCombinedFlags c;
    public static final PhenotypeCombinedFlags d;
    public static final PhenotypeCombinedFlags e;

    static {
        CombinedFlagsFactory d2 = new CombinedFlagsFactory("com.google.android.apps.auto.aareceiver").d();
        a = d2.b("45350358", true);
        b = d2.b("45350495", true);
        c = d2.b("45351725", true);
        d = d2.b("45351678", true);
        e = d2.b("45350297", false);
    }

    @Override // defpackage.AaReceiverFlags45350358
    public final boolean a() {
        return ((Boolean) a.a()).booleanValue();
    }

    @Override // defpackage.AaReceiverFlags45350358
    public final boolean b() {
        return ((Boolean) b.a()).booleanValue();
    }

    @Override // defpackage.AaReceiverFlags45350358
    public final boolean c() {
        return ((Boolean) c.a()).booleanValue();
    }

    @Override // defpackage.AaReceiverFlags45350358
    public final boolean d() {
        return ((Boolean) d.a()).booleanValue();
    }

    @Override // defpackage.AaReceiverFlags45350358
    public final boolean e() {
        return ((Boolean) e.a()).booleanValue();
    }
}
