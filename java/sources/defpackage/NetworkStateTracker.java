package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NetworkStateTracker extends ConstraintTrackerBase {
    static final String f = WorkLogger.b("NetworkStateTracker");
    public static final /* synthetic */ int g = 0;
    private final ConnectivityManager h;
    private final NetworkStateTrackerCallback i;

    public NetworkStateTracker(Context context, WorkTaskExecutorHolder amhVar) {
        super(context, amhVar);
        this.h = (ConnectivityManager) this.a.getSystemService("connectivity");
        this.i = new NetworkStateTrackerCallback(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.ConstraintTrackerBase
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final WorkNetworkState b() {
        boolean z;
        NetworkCapabilities networkCapabilities;
        NetworkInfo activeNetworkInfo = this.h.getActiveNetworkInfo();
        boolean z2 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        try {
            networkCapabilities = this.h.getNetworkCapabilities(this.h.getActiveNetwork());
        } catch (SecurityException e) {
            WorkLogger.a();
            WorkLogger.e(f, "Unable to validate active network", e);
            z = false;
        }
        if (networkCapabilities != null) {
            if (networkCapabilities.hasCapability(16)) {
                z = true;
                return new WorkNetworkState(z2, z, this.h.isActiveNetworkMetered(), activeNetworkInfo == null && !activeNetworkInfo.isRoaming());
            }
        }
        z = false;
        return new WorkNetworkState(z2, z, this.h.isActiveNetworkMetered(), activeNetworkInfo == null && !activeNetworkInfo.isRoaming());
    }

    @Override // defpackage.ConstraintTrackerBase
    public final void d() {
        try {
            WorkLogger.a().d(new Throwable[0]);
            this.h.registerDefaultNetworkCallback(this.i);
        } catch (IllegalArgumentException | SecurityException e) {
            WorkLogger.a();
            WorkLogger.e(f, "Received exception while registering network callback", e);
        }
    }

    @Override // defpackage.ConstraintTrackerBase
    public final void e() {
        try {
            WorkLogger.a().d(new Throwable[0]);
            this.h.unregisterNetworkCallback(this.i);
        } catch (IllegalArgumentException | SecurityException e) {
            WorkLogger.a();
            WorkLogger.e(f, "Received exception while unregistering network callback", e);
        }
    }
}
