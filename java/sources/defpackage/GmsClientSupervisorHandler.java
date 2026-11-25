package defpackage;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class GmsClientSupervisorHandler implements Handler.Callback {
    final /* synthetic */ GmsClientSupervisor a;

    public GmsClientSupervisorHandler(GmsClientSupervisor bnaVar) {
        this.a = bnaVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                synchronized (this.a.c) {
                    ChimeraModuleLoader bmzVar = (ChimeraModuleLoader) message.obj;
                    GmsClientSupervisorConnection bnbVar = (GmsClientSupervisorConnection) this.a.c.get(bmzVar);
                    if (bnbVar != null && bnbVar.b()) {
                        if (bnbVar.c) {
                            bnbVar.g.e.removeMessages(1, bnbVar.e);
                            GmsServiceBrokerSingleton.a(bnbVar.g.d, bnbVar);
                            bnbVar.c = false;
                            bnbVar.b = 2;
                        }
                        this.a.c.remove(bmzVar);
                    }
                }
                return true;
            case 1:
                synchronized (this.a.c) {
                    ChimeraModuleLoader bmzVar2 = (ChimeraModuleLoader) message.obj;
                    GmsClientSupervisorConnection bnbVar2 = (GmsClientSupervisorConnection) this.a.c.get(bmzVar2);
                    if (bnbVar2 != null && bnbVar2.b == 3) {
                        String valueOf = String.valueOf(bmzVar2);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                        StaggeredGridLayoutParams.append("Timeout waiting for ServiceConnection callback ");
                        StaggeredGridLayoutParams.append(valueOf);
                        Log.e("GmsClientSupervisor", StaggeredGridLayoutParams.toString(), new Exception());
                        ComponentName componentName = bnbVar2.f;
                        if (componentName == null) {
                            componentName = bmzVar2.d;
                        }
                        if (componentName == null) {
                            String str = bmzVar2.c;
                            ThreadAndNullChecksUtil.d(str);
                            componentName = new ComponentName(str, "unknown");
                        }
                        bnbVar2.onServiceDisconnected(componentName);
                    }
                }
                return true;
            default:
                return false;
        }
    }
}
