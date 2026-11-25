package defpackage;

import android.net.ConnectivityManager;
import android.net.NetworkRequest;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PhenotypeManagerFutureCallback implements ListenableFutureCallback {
    final /* synthetic */ PhenotypeManager a;
    private final /* synthetic */ int b;

    public PhenotypeManagerFutureCallback(PhenotypeManager axzVar, int i) {
        this.b = i;
        this.a = axzVar;
    }

    @Override // defpackage.ListenableFutureCallback
    public final /* synthetic */ void b(Object obj) {
        switch (this.b) {
            case 0:
                FloggerLoggerFactory cszVar = axz.a;
                PhenotypeManager axzVar = this.a;
                ConnectivityManager.NetworkCallback networkCallback = axzVar.g;
                if (networkCallback != null) {
                    axzVar.f.unregisterNetworkCallback(networkCallback);
                    axzVar.g = null;
                }
                this.a.e.ifPresent(azu.b);
                break;
            default:
                FloggerLoggerFactory cszVar2 = axz.a;
                PhenotypeNetworkAvailableCallback axxVar = new PhenotypeNetworkAvailableCallback(this, null);
                NetworkRequest build = new NetworkRequest.Builder().addCapability(12).build();
                PhenotypeManager axzVar2 = this.a;
                axzVar2.g = axxVar;
                axzVar2.f.requestNetwork(build, axxVar);
                break;
        }
    }

    @Override // defpackage.ListenableFutureCallback
    public final void a(Throwable th) {
        switch (this.b) {
            case 0:
                ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) PhenotypeManager.a.b().g(ActivityResultDispatchRunnable)).h("com/google/android/apps/auto/aareceiver/phenotype/PhenotypeManager$2", "onFailure", 188, "PhenotypeManager.java")).n("Phenotype sync failed.");
                break;
            default:
                ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) PhenotypeManager.a.b().g(ActivityResultDispatchRunnable)).h("com/google/android/apps/auto/aareceiver/phenotype/PhenotypeManager$1", "onFailure", 145, "PhenotypeManager.java")).n("Phenotype register failed.");
                this.a.h.set(false);
                break;
        }
    }
}
