package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TypedValueCallback implements TaskCompletionListenerInterface {
    public final TaskImpl a;
    private final Executor b;

    public TypedValueCallback(Executor executor, TaskImpl broVar) {
        this.b = executor;
        this.a = broVar;
    }

    @Override // defpackage.TaskCompletionListenerInterface
    public final void a(TaskBase brhVar) {
        this.b.execute(new TypedValueReaderRunnable(this, brhVar));
    }
}
