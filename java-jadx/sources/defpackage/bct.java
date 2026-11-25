package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.telecom.Call;
import com.google.android.apps.auto.aareceiver.telecom.InCallServiceImpl;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bct implements ServiceConnection {
    final /* synthetic */ bcu a;

    public bct(bcu bcuVar) {
        this.a = bcuVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        bcu bcuVar = this.a;
        bcuVar.e = ((bcy) iBinder).a;
        InCallServiceImpl inCallServiceImpl = bcuVar.e;
        inCallServiceImpl.a = bcuVar.g;
        if (inCallServiceImpl == null) {
            ((csx) bcu.a.c().h("com/google/android/apps/auto/aareceiver/telecom/CallAvailabilityMonitor", "checkAllActivePhoneCallsAndUpdateCallAvailability", 196, "CallAvailabilityMonitor.java")).n("InCallService not initialized.");
            return;
        }
        Iterator it = inCallServiceImpl.getCalls().iterator();
        while (it.hasNext()) {
            if (bcuVar.c((Call) it.next())) {
                bcuVar.c.nativeSetCallAvailability(false);
                return;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.a.b();
    }
}
