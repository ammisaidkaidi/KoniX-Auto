package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SyncTransformFuture extends TransformFuture {
    public SyncTransformFuture(ListenableFuture dagVar, GuavaFunction cnyVar) {
        super(dagVar, cnyVar);
    }

    @Override // defpackage.TransformFuture
    public final /* bridge */ /* synthetic */ Object e(Object obj, Object obj2) {
        return ((GuavaFunction) obj).a(obj2);
    }

    @Override // defpackage.TransformFuture
    public final void n(Object obj) {
        k(obj);
    }
}
