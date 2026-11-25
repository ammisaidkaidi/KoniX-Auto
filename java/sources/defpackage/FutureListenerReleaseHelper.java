package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FutureListenerReleaseHelper {
    static final FutureListenerReleaseHelper a = new FutureListenerReleaseHelper(new FutureCancellationException());
    final Throwable b;

    public FutureListenerReleaseHelper(Throwable th) {
        GuavaAbstractFuture_ame.d(ActivityResultDispatchRunnable);
        this.b = th;
    }
}
