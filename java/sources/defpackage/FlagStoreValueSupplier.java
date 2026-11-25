package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class FlagStoreValueSupplier implements StopwatchTicker {
    public final /* synthetic */ ProtoDataStoreFlagStore a;
    private final /* synthetic */ int b;

    public /* synthetic */ cfk(ProtoDataStoreFlagStore cfmVar, int i) {
        this.b = i;
        this.a = cfmVar;
    }

    @Override // defpackage.StopwatchTicker
    public final Object a() {
        switch (this.b) {
            case 0:
                return this.a.b();
            default:
                return this.a.c();
        }
    }
}
