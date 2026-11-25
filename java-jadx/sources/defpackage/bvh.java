package defpackage;

import android.app.Application;
import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bvh {
    public final bvj a;

    public bvh(Context context, bvj bvjVar) {
        this.a = bvjVar;
        Application application = (Application) context;
        application.registerActivityLifecycleCallbacks(bvjVar.a);
        application.registerComponentCallbacks(bvjVar.a);
    }

    public final void a(bvg bvgVar) {
        bvj bvjVar = this.a;
        bvgVar.getClass();
        bvi bviVar = bvjVar.a;
        int i = bvi.c;
        bviVar.a.add(bvgVar);
    }

    public final void b(bvg bvgVar) {
        bvj bvjVar = this.a;
        bvgVar.getClass();
        bvi bviVar = bvjVar.a;
        int i = bvi.c;
        bviVar.a.remove(bvgVar);
    }
}
