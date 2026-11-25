package defpackage;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FutureTimeoutRunnable implements Runnable {
    final Future a;
    final ListenableFutureCallback b;

    public FutureTimeoutRunnable(Future future, ListenableFutureCallback czvVar) {
        this.a = future;
        this.b = czvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable g;
        Object obj = this.a;
        if ((obj instanceof CheckedFutureBase) && (ProtoMessageIntAndBooleanG = ((CheckedFutureBase) obj).g()) != null) {
            this.b.a(ProtoMessageIntAndBooleanG);
            return;
        }
        try {
            this.b.b(ProjectionIntentHelper.o(this.a));
        } catch (Error e) {
            e = e;
            this.b.a(ProtoFlagValueMessage);
        } catch (RuntimeException e2) {
            e = e2;
            this.b.a(ProtoFlagValueMessage);
        } catch (ExecutionException e3) {
            this.b.a(e3.getCause());
        }
    }

    public final String toString() {
        ToStringHelper cobVar = new ToStringHelper(getClass().getSimpleName());
        ListenableFutureCallback czvVar = this.b;
        ToStringHelperValueHolder coaVar = new ToStringHelperValueHolder();
        cobVar.a.b = coaVar;
        cobVar.a = coaVar;
        coaVar.a = czvVar;
        return cobVar.toString();
    }
}
