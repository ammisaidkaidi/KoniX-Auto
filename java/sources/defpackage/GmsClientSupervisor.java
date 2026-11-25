package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.HashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GmsClientSupervisor {
    public static final Object a = new Object();
    public static HandlerThread b;
    private static GmsClientSupervisor i;
    public final HashMap c;
    public final Context d;
    public volatile Handler e;
    public final long f;
    private final GmsClientSupervisorHandler g;
    private final long h;

    public GmsClientSupervisor() {
    }

    public static GmsClientSupervisor a(Context context) {
        synchronized (SingleStringProtoMessage) {
            if (NavInstructionTypeEnum == null) {
                i = new GmsClientSupervisor(context.getApplicationContext(), context.getMainLooper());
            }
        }
        return i;
    }

    public final void b(ComponentName componentName, ServiceConnection serviceConnection) {
        c(new ChimeraModuleLoader(componentName), serviceConnection);
    }

    protected final void c(ChimeraModuleLoader bmzVar, ServiceConnection serviceConnection) {
        ThreadAndNullChecksUtil.m(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.c) {
            GmsClientSupervisorConnection bnbVar = (GmsClientSupervisorConnection) this.c.get(bmzVar);
            if (bnbVar == null) {
                String obj = bmzVar.toString();
                StringBuilder sb = new StringBuilder(obj.length() + 50);
                StaggeredGridLayoutParams.append("Nonexistent connection status for service config: ");
                StaggeredGridLayoutParams.append(obj);
                throw new IllegalStateException(StaggeredGridLayoutParams.toString());
            }
            if (!bnbVar.a(serviceConnection)) {
                String obj2 = bmzVar.toString();
                StringBuilder sb2 = new StringBuilder(obj2.length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(obj2);
                throw new IllegalStateException(sb2.toString());
            }
            bnbVar.a.remove(serviceConnection);
            if (bnbVar.b()) {
                this.e.sendMessageDelayed(this.e.obtainMessage(0, bmzVar), this.h);
            }
        }
    }

    public final boolean d(ChimeraModuleLoader bmzVar, ServiceConnection serviceConnection) {
        boolean z;
        ThreadAndNullChecksUtil.m(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.c) {
            GmsClientSupervisorConnection bnbVar = (GmsClientSupervisorConnection) this.c.get(bmzVar);
            if (bnbVar == null) {
                bnbVar = new GmsClientSupervisorConnection(this, bmzVar);
                bnbVar.c(serviceConnection, serviceConnection);
                bnbVar.d();
                this.c.put(bmzVar, bnbVar);
            } else {
                this.e.removeMessages(0, bmzVar);
                if (!bnbVar.a(serviceConnection)) {
                    bnbVar.c(serviceConnection, serviceConnection);
                    switch (bnbVar.b) {
                        case 1:
                            serviceConnection.onServiceConnected(bnbVar.f, bnbVar.d);
                            break;
                        case 2:
                            bnbVar.d();
                            break;
                    }
                } else {
                    String obj = bmzVar.toString();
                    StringBuilder sb = new StringBuilder(obj.length() + 81);
                    StaggeredGridLayoutParams.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    StaggeredGridLayoutParams.append(obj);
                    throw new IllegalStateException(StaggeredGridLayoutParams.toString());
                }
            }
            z = bnbVar.c;
        }
        return z;
    }

    public final void e(String str, ServiceConnection serviceConnection, boolean z) {
        c(new ChimeraModuleLoader(str, z), serviceConnection);
    }

    public GmsClientSupervisor(Context context, Looper looper) {
        this.c = new HashMap();
        GmsClientSupervisorHandler bncVar = new GmsClientSupervisorHandler(this);
        this.g = bncVar;
        this.d = context.getApplicationContext();
        this.e = new CallbackHandlerBase(looper, bncVar);
        if (bob.b == null) {
            synchronized (bob.a) {
                if (bob.b == null) {
                    bob.b = new GmsServiceBrokerSingleton();
                }
            }
        }
        ThreadAndNullChecksUtil.d(bob.b);
        this.h = 5000L;
        this.f = 300000L;
    }
}
