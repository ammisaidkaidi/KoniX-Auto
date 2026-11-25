package defpackage;

import android.util.Log;
import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ApiCallRunner extends ApiCallTaskBase {
    protected final BasePendingResultBase a;

    public ApiCallRunner(BasePendingResultBase bkuVar) {
        super(2);
        this.a = bkuVar;
    }

    @Override // defpackage.ApiCallTaskBase
    public final void d(Status status) {
        try {
            this.a.j(status);
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override // defpackage.ApiCallTaskBase
    public final void e(Exception exc) {
        String simpleName = exc.getClass().getSimpleName();
        String localizedMessage = exc.getLocalizedMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 2 + String.valueOf(localizedMessage).length());
        StaggeredGridLayoutParams.append(simpleName);
        StaggeredGridLayoutParams.append(": ");
        StaggeredGridLayoutParams.append(localizedMessage);
        try {
            this.a.j(new Status(10, StaggeredGridLayoutParams.toString()));
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override // defpackage.ApiCallTaskBase
    public final void f(GoogleApiManagerClientQueue bljVar) {
        try {
            this.a.i(bljVar.b);
        } catch (RuntimeException e) {
            e(ProtoFlagValueMessage);
        }
    }

    @Override // defpackage.ApiCallTaskBase
    public final void g(ResultObserverHolder blbVar, boolean z) {
        BasePendingResultBase bkuVar = this.a;
        blbVar.a.put(bkuVar, Boolean.valueOf(IcuMessageFormat));
        PendingResultReleaseHelper bkzVar = new PendingResultReleaseHelper(blbVar, bkuVar);
        ThreadAndNullChecksUtil.f(true, "Callback cannot be null.");
        synchronized (bkuVar.c) {
            if (bkuVar.o()) {
                bkzVar.a();
            } else {
                bkuVar.e.add(bkzVar);
            }
        }
    }
}
