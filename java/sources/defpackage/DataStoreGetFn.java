package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class DataStoreGetFn implements AsyncFunctionInterface {
    public final /* synthetic */ ProtoDataStoreImpl a;
    private final /* synthetic */ int b;

    public /* synthetic */ cji(ProtoDataStoreImpl cjpVar, int i) {
        this.b = i;
        this.a = cjpVar;
    }

    @Override // defpackage.AsyncFunctionInterface
    public final ListenableFuture a(Object obj) {
        switch (this.b) {
            case 0:
                return ((FileDataStore) this.a.b).a();
            default:
                return this.a.c.c();
        }
    }
}
