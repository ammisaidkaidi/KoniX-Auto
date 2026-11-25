package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GmsClientCallbackVariant extends GmsClientCallbackBase {
    final /* synthetic */ GmsClientBase g;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public GmsClientCallbackVariant(GmsClientBase bmnVar, int i) {
        super(bmnVar, i, null);
        this.g = bmnVar;
    }

    @Override // defpackage.GmsClientCallbackBase
    protected final void a(ConnectionResultCodes bizVar) {
        this.g.f.a(bizVar);
        System.currentTimeMillis();
    }

    @Override // defpackage.GmsClientCallbackBase
    protected final boolean c() {
        this.g.f.a(biz.a);
        return true;
    }
}
