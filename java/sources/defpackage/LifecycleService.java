package defpackage;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* compiled from: PG */
/* loaded from: classes.dex */
public class LifecycleService extends Service implements LifecycleOwner {
    private final LifecycleEventDispatcher a = new LifecycleEventDispatcher(this);

    @Override // defpackage.LifecycleOwner
    public final LifecycleRegistry C() {
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
        LifecycleEventDispatcher aaeVar = this.a;
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
