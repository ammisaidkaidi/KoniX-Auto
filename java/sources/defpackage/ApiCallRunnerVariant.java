package defpackage;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ApiCallRunnerVariant extends ApiCallRunnerBase {
    private final ExecutorParameterCheckerHolder a;
    private final PreconditionsChecker b;

    public ApiCallRunnerVariant(int i, ExecutorParameterCheckerHolder bmcVar, PreconditionsChecker brkVar) {
        super(NavInstructionTypeEnum);
        this.b = brkVar;
        this.a = bmcVar;
        if (NavInstructionTypeEnum == 2 && bmcVar.b) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override // defpackage.ApiCallRunnerBase
    public final boolean a(GoogleApiManagerClientQueue bljVar) {
        return this.a.b;
    }

    @Override // defpackage.ApiCallRunnerBase
    public final ApiAvailabilityVersionInfo[] b(GoogleApiManagerClientQueue bljVar) {
        return this.a.a;
    }

    @Override // defpackage.ApiCallTaskBase
    public final void e(Exception exc) {
        this.b.b(exc);
    }

    @Override // defpackage.ApiCallTaskBase
    public final void f(GoogleApiManagerClientQueue bljVar) {
        try {
            ExecutorParameterCheckerHolder bmcVar = this.a;
            bmcVar.d.a.a(bljVar.b, this.b);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            d(ApiCallTaskBase.h(e2));
        } catch (RuntimeException e3) {
            e(e3);
        }
    }

    @Override // defpackage.ApiCallTaskBase
    public final void g(ResultObserverHolder blbVar, boolean z) {
        PreconditionsChecker brkVar = this.b;
        blbVar.b.put(brkVar, Boolean.valueOf(IcuMessageFormat));
        brkVar.a.e(new GoogleApiManagerObserverAdapter(blbVar, brkVar));
    }

    @Override // defpackage.ApiCallTaskBase
    public final void d(Status status) {
        this.b.b(status.g != null ? new ApiExceptionWithStatus(status) : new GoogleApiExceptionBase(status));
    }
}
