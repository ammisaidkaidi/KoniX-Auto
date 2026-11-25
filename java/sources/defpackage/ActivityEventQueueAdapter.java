package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ActivityEventQueueAdapter implements ActivityEventListener {
    final /* synthetic */ ActivityLifecycleEventQueue a;
    private final RegisteredActivityResultCallbacks b;

    public ActivityEventQueueAdapter(ActivityLifecycleEventQueue tnVar, RegisteredActivityResultCallbacks tlVar) {
        this.a = tnVar;
        this.b = tlVar;
    }

    @Override // defpackage.ActivityEventListener
    public final void b() {
        this.a.a.remove(this.b);
        this.b.b(this);
    }
}
