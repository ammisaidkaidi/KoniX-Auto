package defpackage;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class ApiCallRunnerWithCallback extends ApiCallRunnerBase {
    protected final PreconditionsChecker a;

    public ApiCallRunnerWithCallback(PreconditionsChecker brkVar) {
        super(4);
        this.a = brkVar;
    }

    protected abstract void c(GoogleApiManagerClientQueue bljVar);

    @Override // defpackage.ApiCallTaskBase
    public final void d(Status status) {
        this.a.b(new GoogleApiExceptionBase(status));
    }

    @Override // defpackage.ApiCallTaskBase
    public final void e(Exception exc) {
        this.a.b(exc);
    }

    @Override // defpackage.ApiCallTaskBase
    public final void f(GoogleApiManagerClientQueue bljVar) {
        try {
            c(bljVar);
        } catch (DeadObjectException e) {
            d(ApiCallTaskBase.h(ProtoFlagValueMessage));
            throw e;
        } catch (RemoteException e2) {
            d(ApiCallTaskBase.h(e2));
        } catch (RuntimeException e3) {
            e(e3);
        }
    }

    @Override // defpackage.ApiCallTaskBase
    public void g(ResultObserverHolder blbVar, boolean z) {
    }
}
