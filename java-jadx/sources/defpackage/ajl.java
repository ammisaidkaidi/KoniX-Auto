package defpackage;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ajl extends ConnectivityManager.NetworkCallback {
    final /* synthetic */ ajm a;

    public ajl(ajm ajmVar) {
        this.a = ajmVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        agr a = agr.a();
        int i = ajm.g;
        String.format("Network capabilities changed: %s", networkCapabilities);
        a.d(new Throwable[0]);
        ajm ajmVar = this.a;
        ajmVar.g(ajmVar.b());
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        agr a = agr.a();
        int i = ajm.g;
        a.d(new Throwable[0]);
        ajm ajmVar = this.a;
        ajmVar.g(ajmVar.b());
    }
}
