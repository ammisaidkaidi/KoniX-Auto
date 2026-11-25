package defpackage;

import android.net.ConnectivityManager;
import android.net.NetworkRequest;

/* compiled from: PG */
/* loaded from: classes.dex */
final class axy implements czv {
    final /* synthetic */ axz a;
    private final /* synthetic */ int b;

    public axy(axz axzVar, int i) {
        this.b = i;
        this.a = axzVar;
    }

    @Override // defpackage.czv
    public final /* synthetic */ void b(Object obj) {
        switch (this.b) {
            case 0:
                csz cszVar = axz.a;
                axz axzVar = this.a;
                ConnectivityManager.NetworkCallback networkCallback = axzVar.g;
                if (networkCallback != null) {
                    axzVar.f.unregisterNetworkCallback(networkCallback);
                    axzVar.g = null;
                }
                this.a.e.ifPresent(azu.b);
                break;
            default:
                csz cszVar2 = axz.a;
                axx axxVar = new axx(this, null);
                NetworkRequest build = new NetworkRequest.Builder().addCapability(12).build();
                axz axzVar2 = this.a;
                axzVar2.g = axxVar;
                axzVar2.f.requestNetwork(build, axxVar);
                break;
        }
    }

    @Override // defpackage.czv
    public final void a(Throwable th) {
        switch (this.b) {
            case 0:
                ((csx) ((csx) axz.a.b().g(th)).h("com/google/android/apps/auto/aareceiver/phenotype/PhenotypeManager$2", "onFailure", 188, "PhenotypeManager.java")).n("Phenotype sync failed.");
                break;
            default:
                ((csx) ((csx) axz.a.b().g(th)).h("com/google/android/apps/auto/aareceiver/phenotype/PhenotypeManager$1", "onFailure", 145, "PhenotypeManager.java")).n("Phenotype register failed.");
                this.a.h.set(false);
                break;
        }
    }
}
