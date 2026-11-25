package defpackage;

import android.net.ConnectivityManager;
import android.net.Network;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PhenotypeNetworkAvailableCallback extends ConnectivityManager.NetworkCallback {
    final /* synthetic */ PhenotypeManagerFutureCallback a;

    public PhenotypeNetworkAvailableCallback(PhenotypeManagerFutureCallback axyVar, byte[] bArr) {
        this.a = axyVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        FloggerLoggerFactory cszVar = axz.a;
        PhenotypeManager axzVar = this.a.a;
        ProjectionIntentHelper.p(axzVar.d.e(), new PhenotypeManagerFutureCallback(axzVar, 0), axzVar.c);
    }
}
