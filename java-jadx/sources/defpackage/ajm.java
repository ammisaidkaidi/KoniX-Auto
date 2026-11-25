package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ajm extends ajk {
    static final String f = agr.b("NetworkStateTracker");
    public static final /* synthetic */ int g = 0;
    private final ConnectivityManager h;
    private final ajl i;

    public ajm(Context context, amh amhVar) {
        super(context, amhVar);
        this.h = (ConnectivityManager) this.a.getSystemService("connectivity");
        this.i = new ajl(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.ajk
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ait b() {
        boolean z;
        NetworkCapabilities networkCapabilities;
        NetworkInfo activeNetworkInfo = this.h.getActiveNetworkInfo();
        boolean z2 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        try {
            networkCapabilities = this.h.getNetworkCapabilities(this.h.getActiveNetwork());
        } catch (SecurityException e) {
            agr.a();
            agr.e(f, "Unable to validate active network", e);
            z = false;
        }
        if (networkCapabilities != null) {
            if (networkCapabilities.hasCapability(16)) {
                z = true;
                return new ait(z2, z, this.h.isActiveNetworkMetered(), activeNetworkInfo == null && !activeNetworkInfo.isRoaming());
            }
        }
        z = false;
        return new ait(z2, z, this.h.isActiveNetworkMetered(), activeNetworkInfo == null && !activeNetworkInfo.isRoaming());
    }

    @Override // defpackage.ajk
    public final void d() {
        try {
            agr.a().d(new Throwable[0]);
            this.h.registerDefaultNetworkCallback(this.i);
        } catch (IllegalArgumentException | SecurityException e) {
            agr.a();
            agr.e(f, "Received exception while registering network callback", e);
        }
    }

    @Override // defpackage.ajk
    public final void e() {
        try {
            agr.a().d(new Throwable[0]);
            this.h.unregisterNetworkCallback(this.i);
        } catch (IllegalArgumentException | SecurityException e) {
            agr.a();
            agr.e(f, "Received exception while unregistering network callback", e);
        }
    }
}
