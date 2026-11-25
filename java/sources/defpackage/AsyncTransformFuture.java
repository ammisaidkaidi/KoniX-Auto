package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AsyncTransformFuture extends TransformFuture {
    public AsyncTransformFuture(ListenableFuture dagVar, AsyncFunctionInterface czcVar) {
        super(dagVar, czcVar);
    }

    @Override // defpackage.TransformFuture
    public final /* bridge */ /* synthetic */ Object e(Object obj, Object obj2) {
        ListenableFuture a = ((AsyncFunctionInterface) obj).a(obj2);
        a.getClass();
        return a;
    }

    @Override // defpackage.TransformFuture
    public final /* synthetic */ void n(Object obj) {
        d((ListenableFuture) obj);
    }
}
