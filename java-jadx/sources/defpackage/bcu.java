package defpackage;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.telecom.Call;
import android.telephony.TelephonyManager;
import com.google.android.apps.auto.aareceiver.telecom.InCallServiceImpl;
import com.google.android.projection.protocol.GalReceiver;
import defpackage.bcu;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bcu implements bbo {
    public static final csz a = csz.g("com/google/android/apps/auto/aareceiver/telecom/CallAvailabilityMonitor");
    public final Context b;
    public final GalReceiver c;
    public boolean d;
    public InCallServiceImpl e;
    private final bah h;
    private boolean i = false;
    private final Object j = new Object();
    public final BroadcastReceiver f = new bcr(this);
    final bcx g = new bcs(this);
    private final ServiceConnection k = new bct(this);

    public bcu(Context context, GalReceiver galReceiver, zn znVar, bah bahVar) {
        this.b = context;
        this.c = galReceiver;
        this.h = bahVar;
        znVar.b(new zj() { // from class: com.google.android.apps.auto.aareceiver.telecom.CallAvailabilityMonitor$4
            @Override // defpackage.zj
            public final /* synthetic */ void a() {
            }

            @Override // defpackage.zj
            public final void b() {
                bcu bcuVar = bcu.this;
                if (!bcuVar.d) {
                    bcuVar.b();
                } else {
                    bcuVar.b.unregisterReceiver(bcuVar.f);
                    bcuVar.d = false;
                }
            }

            @Override // defpackage.zj
            public final /* synthetic */ void c() {
            }

            @Override // defpackage.zj
            public final /* synthetic */ void d() {
            }

            @Override // defpackage.zj
            public final /* synthetic */ void e() {
            }

            @Override // defpackage.zj
            public final /* synthetic */ void f() {
            }
        });
    }

    @Override // defpackage.bbo
    public final void a() {
        int checkCallingOrSelfPermission = this.b.checkCallingOrSelfPermission("android.permission.CONTROL_INCALL_EXPERIENCE");
        boolean a2 = dks.a.a().a();
        if (checkCallingOrSelfPermission == 0 && a2) {
            Intent intent = new Intent(this.b, (Class<?>) InCallServiceImpl.class);
            intent.setAction("inCallServiceLocalBindingAction");
            synchronized (this.j) {
                this.i = this.b.bindService(intent, this.k, 1);
            }
            return;
        }
        this.b.registerReceiver(this.f, new IntentFilter("android.intent.action.PHONE_STATE"));
        this.d = true;
        this.c.nativeSetCallAvailability(((TelephonyManager) this.b.getSystemService(TelephonyManager.class)).getCallState() == 0);
    }

    public final void b() {
        synchronized (this.j) {
            if (this.i) {
                InCallServiceImpl inCallServiceImpl = this.e;
                if (inCallServiceImpl != null) {
                    inCallServiceImpl.a = new bcw(0);
                }
                this.b.unbindService(this.k);
                this.e = null;
                this.i = false;
            }
        }
    }

    public final boolean c(Call call) {
        awo awoVar;
        BluetoothDevice a2;
        return this.h.h == null || (awoVar = this.h.h.h) == null || (a2 = awoVar.a()) == null || !call.getDetails().getAccountHandle().getId().equals(a2.getAddress());
    }
}
