package androidx.lifecycle;

import defpackage.LifecycleObserverMarker;
import defpackage.LifecycleEvent;
import defpackage.DefaultLifecycleObserverInterface;
import defpackage.LifecycleOwner;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SingleGeneratedAdapterObserver implements DefaultLifecycleObserverInterface {
    private final LifecycleObserverMarker a;

    public SingleGeneratedAdapterObserver(LifecycleObserverMarker zkVar) {
        this.a = zkVar;
    }

    @Override // defpackage.DefaultLifecycleObserverInterface
    public final void a(LifecycleOwner zqVar, LifecycleEvent zlVar) {
        this.a.a();
        this.a.a();
    }
}
