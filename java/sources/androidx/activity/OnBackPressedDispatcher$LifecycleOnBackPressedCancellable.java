package androidx.activity;

import defpackage.ActivityEventListener;
import defpackage.RegisteredActivityResultCallbacks;
import defpackage.ActivityEventQueueAdapter;
import defpackage.ActivityLifecycleEventQueue;
import defpackage.LifecycleEvent;
import defpackage.LifecycleRegistry;
import defpackage.DefaultLifecycleObserverInterface;
import defpackage.LifecycleOwner;

/* compiled from: PG */
/* loaded from: classes.dex */
public class OnBackPressedDispatcher$LifecycleOnBackPressedCancellable implements DefaultLifecycleObserverInterface, td {
    final /* synthetic */ ActivityLifecycleEventQueue a;
    private final LifecycleRegistry b;
    private final RegisteredActivityResultCallbacks c;
    private ActivityEventListener d;

    public OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(ActivityLifecycleEventQueue tnVar, LifecycleRegistry znVar, RegisteredActivityResultCallbacks tlVar) {
        this.a = tnVar;
        this.b = znVar;
        this.c = tlVar;
        znVar.b(this);
    }

    @Override // defpackage.DefaultLifecycleObserverInterface
    public final void a(LifecycleOwner zqVar, LifecycleEvent zlVar) {
        if (zlVar == zl.ON_START) {
            ActivityLifecycleEventQueue tnVar = this.a;
            RegisteredActivityResultCallbacks tlVar = this.c;
            tnVar.a.add(tlVar);
            ActivityEventQueueAdapter tmVar = new ActivityEventQueueAdapter(tnVar, tlVar);
            tlVar.a(tmVar);
            this.d = tmVar;
            return;
        }
        if (zlVar != zl.ON_STOP) {
            if (zlVar == zl.ON_DESTROY) {
                b();
            }
        } else {
            ActivityEventListener tdVar = this.d;
            if (tdVar != null) {
                tdVar.b();
            }
        }
    }

    @Override // defpackage.ActivityEventListener
    public final void b() {
        this.b.d(this);
        this.c.b(this);
        ActivityEventListener tdVar = this.d;
        if (tdVar != null) {
            tdVar.b();
            this.d = null;
        }
    }
}
