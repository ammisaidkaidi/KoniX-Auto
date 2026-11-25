package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TaskImpl extends TaskBase {
    public final Object a = new Object();
    public final TaskListenerQueue b = new TaskListenerQueue();
    public boolean c;
    public volatile boolean d;
    public Object e;
    public Exception f;

    private final void k() {
        String str;
        if (this.c) {
            if (!c()) {
                throw new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
            }
            Exception a = a();
            if (SingleStringProtoMessage != null) {
                str = "failure";
            } else if (d()) {
                String valueOf = String.valueOf(b());
                String.valueOf(valueOf).length();
                str = "result ".concat(String.valueOf(valueOf));
            } else {
                str = this.d ? "cancellation" : "unknown issue";
            }
        }
    }

    @Override // defpackage.TaskBase
    public final Exception a() {
        Exception exc;
        synchronized (this.a) {
            exc = this.f;
        }
        return exc;
    }

    @Override // defpackage.TaskBase
    public final Object b() {
        Object obj;
        synchronized (this.a) {
            ThreadAndNullChecksUtil.j(this.c, "Task is not yet complete");
            if (this.d) {
                throw new CancellationException("Task is already canceled.");
            }
            Exception exc = this.f;
            if (exc != null) {
                throw new TaskRuntimeException(exc);
            }
            obj = this.e;
        }
        return obj;
    }

    @Override // defpackage.TaskBase
    public final boolean c() {
        boolean z;
        synchronized (this.a) {
            z = this.c;
        }
        return z;
    }

    @Override // defpackage.TaskBase
    public final boolean d() {
        boolean z;
        synchronized (this.a) {
            z = false;
            if (this.c && !this.d && this.f == null) {
                z = true;
            }
        }
        return z;
    }

    @Override // defpackage.TaskBase
    public final void e(TaskListenerInterface brcVar) {
        f(brn.a, brcVar);
    }

    @Override // defpackage.TaskBase
    public final void f(Executor executor, TaskListenerInterface brcVar) {
        this.b.a(new TaskCompletionCallback(executor, brcVar));
        h();
    }

    @Override // defpackage.TaskBase
    public final TaskBase g(Executor executor, VectorPathDataNode agaVar) {
        TaskImpl broVar = new TaskImpl();
        this.b.a(new TypedValueCallback(executor, broVar));
        h();
        return broVar;
    }

    public final void h() {
        synchronized (this.a) {
            if (this.c) {
                this.b.b(this);
            }
        }
    }

    public final void i(Exception exc) {
        ThreadAndNullChecksUtil.m(exc, "Exception must not be null");
        synchronized (this.a) {
            k();
            this.c = true;
            this.f = exc;
        }
        this.b.b(this);
    }

    public final void j(Object obj) {
        synchronized (this.a) {
            k();
            this.c = true;
            this.e = obj;
        }
        this.b.b(this);
    }
}
