package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bmj implements ServiceConnection {
    final /* synthetic */ bmn a;
    private final int b;

    public bmj(bmn bmnVar, int i) {
        this.a = bmnVar;
        this.b = i;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        int i;
        int i2;
        if (iBinder != null) {
            synchronized (this.a.e) {
                bmn bmnVar = this.a;
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                bmnVar.q = (queryLocalInterface == null || !(queryLocalInterface instanceof bnk)) ? new bnk(iBinder) : (bnk) queryLocalInterface;
            }
            this.a.D(0, this.b);
            return;
        }
        bmn bmnVar2 = this.a;
        synchronized (bmnVar2.d) {
            i = bmnVar2.h;
        }
        if (i == 3) {
            bmnVar2.l = true;
            i2 = 5;
        } else {
            i2 = 4;
        }
        Handler handler = bmnVar2.c;
        handler.sendMessage(handler.obtainMessage(i2, bmnVar2.n.get(), 16));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.a.e) {
            this.a.q = null;
        }
        Handler handler = this.a.c;
        handler.sendMessage(handler.obtainMessage(6, this.b, 1));
    }
}
