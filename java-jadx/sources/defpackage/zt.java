package defpackage;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* compiled from: PG */
/* loaded from: classes.dex */
public class zt extends Service implements zq {
    private final aae a = new aae(this);

    @Override // defpackage.zq
    public final zn C() {
        return this.a.a;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        this.a.a(zl.ON_START);
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.a.a(zl.ON_CREATE);
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        aae aaeVar = this.a;
        aaeVar.a(zl.ON_STOP);
        aaeVar.a(zl.ON_DESTROY);
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onStart(Intent intent, int i) {
        this.a.a(zl.ON_START);
        super.onStart(intent, i);
    }
}
