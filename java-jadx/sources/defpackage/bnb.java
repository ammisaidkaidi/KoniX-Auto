package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bnb implements ServiceConnection {
    public final Map a = new HashMap();
    public int b = 2;
    public boolean c;
    public IBinder d;
    public final bmz e;
    public ComponentName f;
    final /* synthetic */ bna g;

    public bnb(bna bnaVar, bmz bmzVar) {
        this.g = bnaVar;
        this.e = bmzVar;
    }

    public final boolean a(ServiceConnection serviceConnection) {
        return this.a.containsKey(serviceConnection);
    }

    public final boolean b() {
        return this.a.isEmpty();
    }

    public final void c(ServiceConnection serviceConnection, ServiceConnection serviceConnection2) {
        this.a.put(serviceConnection, serviceConnection2);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d() {
        Intent component;
        Bundle bundle;
        this.b = 3;
        Context context = this.g.d;
        bmz bmzVar = this.e;
        if (bmzVar.b != null) {
            if (bmzVar.f) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("serviceActionBundleKey", bmzVar.b);
                try {
                    bundle = context.getContentResolver().call(bmz.a, "serviceIntentCall", (String) null, bundle2);
                } catch (IllegalArgumentException e) {
                    Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e.toString()));
                    bundle = null;
                }
                component = bundle != null ? (Intent) bundle.getParcelable("serviceResponseIntentKey") : null;
                if (component == null) {
                    String valueOf = String.valueOf(bmzVar.b);
                    Log.w("ConnectionStatusConfig", valueOf.length() != 0 ? "Dynamic lookup for intent failed for action: ".concat(valueOf) : new String("Dynamic lookup for intent failed for action: "));
                }
            }
            if (component == null) {
                component = new Intent(bmzVar.b).setPackage(bmzVar.c);
            }
        } else {
            component = new Intent().setComponent(bmzVar.d);
        }
        ComponentName component2 = component.getComponent();
        boolean z = false;
        if (component2 != null) {
            String packageName = component2.getPackageName();
            "com.google.android.gms".equals(packageName);
            if ((boc.b(context).a(packageName, 0).flags & 2097152) != 0) {
                Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
                this.c = z;
                if (!z) {
                    this.g.e.sendMessageDelayed(this.g.e.obtainMessage(1, this.e), this.g.f);
                    return;
                }
                this.b = 2;
                try {
                    bob.a(this.g.d, this);
                    return;
                } catch (IllegalArgumentException e2) {
                    return;
                }
            }
        }
        z = context.bindService(component, this, 4225);
        this.c = z;
        if (!z) {
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.g.c) {
            this.g.e.removeMessages(1, this.e);
            this.d = iBinder;
            this.f = componentName;
            Iterator it = this.a.values().iterator();
            while (it.hasNext()) {
                ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
            }
            this.b = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.g.c) {
            this.g.e.removeMessages(1, this.e);
            this.d = null;
            this.f = componentName;
            Iterator it = this.a.values().iterator();
            while (it.hasNext()) {
                ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
            }
            this.b = 2;
        }
    }
}
