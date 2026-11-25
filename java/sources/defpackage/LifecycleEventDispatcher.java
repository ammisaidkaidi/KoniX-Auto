package defpackage;

import android.os.Handler;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LifecycleEventDispatcher {
    public final LifecycleRegistry a;
    private final Handler b = new Handler();
    private LifecycleEventDispatchRunnable c;

    public LifecycleEventDispatcher(LifecycleOwner zqVar) {
        this.a = new LifecycleRegistry(zqVar);
    }

    public final void a(LifecycleEvent zlVar) {
        LifecycleEventDispatchRunnable aadVar = this.c;
        if (aadVar != null) {
            aadVar.run();
        }
        LifecycleEventDispatchRunnable aadVar2 = new LifecycleEventDispatchRunnable(this.a, zlVar);
        this.c = aadVar2;
        this.b.postAtFrontOfQueue(aadVar2);
    }
}
