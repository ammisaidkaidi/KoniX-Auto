package defpackage;

import android.net.ConnectivityManager;
import android.net.Network;

/* compiled from: PG */
/* loaded from: classes.dex */
final class axx extends ConnectivityManager.NetworkCallback {
    final /* synthetic */ axy a;

    public axx(axy axyVar, byte[] bArr) {
        this.a = axyVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        csz cszVar = axz.a;
        axz axzVar = this.a.a;
        hh.p(axzVar.d.e(), new axy(axzVar, 0), axzVar.c);
    }
}
