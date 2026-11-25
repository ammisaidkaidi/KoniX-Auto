package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ApiCallRunnerCallbackVariant extends ApiCallRunnerWithCallback {
    public final FeatureVersionValue b;

    public ApiCallRunnerCallbackVariant(FeatureVersionValue blrVar, PreconditionsChecker brkVar) {
        super(brkVar);
        this.b = blrVar;
    }

    @Override // defpackage.ApiCallRunnerBase
    public final boolean a(GoogleApiManagerClientQueue bljVar) {
        if (((RunnableFileTask) bljVar.e.get(this.b)) == null) {
            return false;
        }
        throw null;
    }

    @Override // defpackage.ApiCallRunnerBase
    public final ApiAvailabilityVersionInfo[] b(GoogleApiManagerClientQueue bljVar) {
        if (((RunnableFileTask) bljVar.e.get(this.b)) == null) {
            return null;
        }
        throw null;
    }

    @Override // defpackage.ApiCallRunnerWithCallback
    public final void c(GoogleApiManagerClientQueue bljVar) {
        if (((RunnableFileTask) bljVar.e.remove(this.b)) != null) {
            throw null;
        }
        this.a.c(false);
    }

    @Override // defpackage.ApiCallRunnerWithCallback, defpackage.ApiCallTaskBase
    public final /* bridge */ /* synthetic */ void g(ResultObserverHolder blbVar, boolean z) {
    }
}
