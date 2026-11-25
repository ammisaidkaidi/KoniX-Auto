package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeConfigFacadeOut implements StopwatchTicker {
    public static final PhenotypeConfigFacadeOut a = new PhenotypeConfigFacadeOut();
    private final StopwatchTicker b = ex.i(ex.j(new PhenotypeSyncFlagsImpl()));

    public static ProtoMsgSingleListField b() {
        return a.a().c();
    }

    public static boolean d() {
        return a.a().f();
    }

    public static boolean e() {
        return a.a().g();
    }

    public static boolean f() {
        return a.a().l();
    }

    public static boolean g() {
        return a.a().o();
    }

    @Override // defpackage.StopwatchTicker
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final PhenotypeSyncFlags a() {
        return (PhenotypeSyncFlags) this.b.a();
    }
}
