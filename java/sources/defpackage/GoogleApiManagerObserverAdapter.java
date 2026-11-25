package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class GoogleApiManagerObserverAdapter implements TaskListenerInterface {
    final /* synthetic */ PreconditionsChecker a;
    final /* synthetic */ ResultObserverHolder b;

    public GoogleApiManagerObserverAdapter(ResultObserverHolder blbVar, PreconditionsChecker brkVar) {
        this.b = blbVar;
        this.a = brkVar;
    }

    @Override // defpackage.TaskListenerInterface
    public final void a(TaskBase brhVar) {
        this.b.b.remove(this.a);
    }
}
