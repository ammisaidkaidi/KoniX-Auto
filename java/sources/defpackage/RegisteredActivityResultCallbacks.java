package defpackage;

import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RegisteredActivityResultCallbacks {
    final /* synthetic */ FragmentManagerImpl c;
    public final CopyOnWriteArrayList b = new CopyOnWriteArrayList();
    public boolean a = false;

    public RegisteredActivityResultCallbacks(FragmentManagerImpl crVar) {
        this.c = crVar;
    }

    public final void a(ActivityEventListener tdVar) {
        this.b.add(tdVar);
    }

    public final void b(ActivityEventListener tdVar) {
        this.b.remove(tdVar);
    }

    public RegisteredActivityResultCallbacks() {
    }
}
