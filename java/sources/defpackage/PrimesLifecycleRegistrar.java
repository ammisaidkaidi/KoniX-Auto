package defpackage;

import android.app.Application;
import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesLifecycleRegistrar {
    public final PrimesLifecycleCallbacksHolder a;

    public PrimesLifecycleRegistrar(Context context, PrimesLifecycleCallbacksHolder bvjVar) {
        this.a = bvjVar;
        Application application = (Application) context;
        application.registerActivityLifecycleCallbacks(bvjVar.a);
        application.registerComponentCallbacks(bvjVar.a);
    }

    public final void a(PrimesMetricServiceMarker bvgVar) {
        PrimesLifecycleCallbacksHolder bvjVar = this.a;
        bvgVar.getClass();
        PrimesActivityLifecycleCallbacks bviVar = bvjVar.a;
        int i = bvi.c;
        bviVar.a.add(bvgVar);
    }

    public final void b(PrimesMetricServiceMarker bvgVar) {
        PrimesLifecycleCallbacksHolder bvjVar = this.a;
        bvgVar.getClass();
        PrimesActivityLifecycleCallbacks bviVar = bvjVar.a;
        int i = bvi.c;
        bviVar.a.remove(bvgVar);
    }
}
