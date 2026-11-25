package defpackage;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class GmsClientCallbackProxy extends CallbackHandlerBase {
    final /* synthetic */ GmsClientBase a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public GmsClientCallbackProxy(GmsClientBase bmnVar, Looper looper) {
        super(looper);
        this.a = bmnVar;
    }

    private static final void a(Message message) {
        GmsClientHandlerBase bmhVar = (GmsClientHandlerBase) message.obj;
        bmhVar.b();
        bmhVar.f();
    }

    private static final boolean b(Message message) {
        return message.what == 2 || message.what == 1 || message.what == 7;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Object obj;
        if (this.a.n.get() != message.arg1) {
            if (b(message)) {
                a(message);
                return;
            }
            return;
        }
        if ((message.what == 1 || message.what == 7 || message.what == 4 || message.what == 5) && !this.a.n()) {
            a(message);
            return;
        }
        if (message.what == 4) {
            this.a.k = new ConnectionResultCodes(message.arg2);
            GmsClientBase bmnVar = this.a;
            if (!bmnVar.l && !TextUtils.isEmpty(bmnVar.c()) && !TextUtils.isEmpty(null)) {
                try {
                    Class.forName(bmnVar.c());
                    GmsClientBase bmnVar2 = this.a;
                    if (!bmnVar2.l) {
                        bmnVar2.F(3, null);
                        return;
                    }
                } catch (ClassNotFoundException e) {
                }
            }
            ConnectionResultCodes bizVar = this.a.k;
            if (bizVar == null) {
                bizVar = new ConnectionResultCodes(8);
            }
            this.a.f.a(bizVar);
            System.currentTimeMillis();
            return;
        }
        if (message.what == 5) {
            ConnectionResultCodes bizVar2 = this.a.k;
            if (bizVar2 == null) {
                bizVar2 = new ConnectionResultCodes(8);
            }
            this.a.f.a(bizVar2);
            System.currentTimeMillis();
            return;
        }
        if (message.what == 3) {
            this.a.f.a(new ConnectionResultCodes(message.arg2, message.obj instanceof PendingIntent ? (PendingIntent) message.obj : null));
            System.currentTimeMillis();
            return;
        }
        if (message.what == 6) {
            this.a.F(5, null);
            ConnectionListenerAdapter bmwVar = this.a.o;
            if (bmwVar != null) {
                bmwVar.a.a(message.arg2);
            }
            int i = message.arg2;
            System.currentTimeMillis();
            this.a.y(5, 1, null);
            return;
        }
        if (message.what == 2 && !this.a.m()) {
            a(message);
            return;
        }
        if (!b(message)) {
            int i2 = message.what;
            StringBuilder sb = new StringBuilder(45);
            StaggeredGridLayoutParams.append("Don't know how to handle message: ");
            StaggeredGridLayoutParams.append(i2);
            Log.wtf("GmsClient", StaggeredGridLayoutParams.toString(), new Exception());
            return;
        }
        GmsClientHandlerBase bmhVar = (GmsClientHandlerBase) message.obj;
        synchronized (bmhVar) {
            obj = bmhVar.d;
            if (bmhVar.e) {
                String obj2 = bmhVar.toString();
                StringBuilder sb2 = new StringBuilder(obj2.length() + 47);
                sb2.append("Callback proxy ");
                sb2.append(obj2);
                sb2.append(" being reused. This is not safe.");
                Log.w("GmsClient", sb2.toString());
            }
        }
        if (obj != null) {
            try {
                bmhVar.d();
            } catch (RuntimeException e2) {
                throw e2;
            }
        }
        synchronized (bmhVar) {
            bmhVar.e = true;
        }
        bmhVar.f();
    }
}
