package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class LiveDataObserverHolder {
    LifecycleState a;
    final DefaultLifecycleObserverInterface b;

    public LiveDataObserverHolder(LifecycleObserverBase zpVar, LifecycleState zmVar) {
        this.b = LifecycleObserverAdapterFactory.a(zpVar);
        this.a = zmVar;
    }

    final void a(LifecycleOwner zqVar, LifecycleEvent zlVar) {
        LifecycleState c = zlVar.c();
        this.a = LifecycleRegistry.a(this.a, c);
        this.b.a(zqVar, zlVar);
        this.a = c;
    }
}
