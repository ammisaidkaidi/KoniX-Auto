package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AaReceiverFlags45350014Impl implements AaReceiverFlags45350014 {
    public static final PhenotypeCombinedFlags a;
    public static final PhenotypeCombinedFlags b;
    public static final PhenotypeCombinedFlags c;
    public static final PhenotypeCombinedFlags d;

    static {
        CombinedFlagsFactory d2 = new CombinedFlagsFactory("com.google.android.apps.auto.aareceiver").d();
        a = d2.b("45350014", false);
        b = d2.b("45357968", false);
        c = d2.b("45357969", false);
        d = d2.b("45359456", true);
    }

    @Override // defpackage.AaReceiverFlags45350014
    public final boolean a() {
        return ((Boolean) a.a()).booleanValue();
    }

    @Override // defpackage.AaReceiverFlags45350014
    public final boolean b() {
        return ((Boolean) b.a()).booleanValue();
    }

    @Override // defpackage.AaReceiverFlags45350014
    public final boolean c() {
        return ((Boolean) c.a()).booleanValue();
    }

    @Override // defpackage.AaReceiverFlags45350014
    public final boolean d() {
        return ((Boolean) d.a()).booleanValue();
    }
}
