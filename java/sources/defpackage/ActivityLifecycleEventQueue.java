package defpackage;

import java.util.ArrayDeque;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ActivityLifecycleEventQueue {
    public final ArrayDeque a;
    private final Runnable b;

    public ActivityLifecycleEventQueue() {
        this(null);
    }

    public final void a() {
        Iterator descendingIterator = this.a.descendingIterator();
        while (descendingIterator.hasNext()) {
            RegisteredActivityResultCallbacks tlVar = (RegisteredActivityResultCallbacks) descendingIterator.next();
            if (tlVar.a) {
                FragmentManagerImpl crVar = tlVar.c;
                crVar.Z(true);
                if (crVar.e.a) {
                    crVar.U();
                    return;
                } else {
                    crVar.d.a();
                    return;
                }
            }
        }
        this.b.run();
    }

    public ActivityLifecycleEventQueue(Runnable runnable) {
        this.a = new ArrayDeque();
        this.b = runnable;
    }
}
