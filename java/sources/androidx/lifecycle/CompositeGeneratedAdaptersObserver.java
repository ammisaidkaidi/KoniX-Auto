package androidx.lifecycle;

import defpackage.LifecycleObserverMarker;
import defpackage.LifecycleEvent;
import defpackage.DefaultLifecycleObserverInterface;
import defpackage.LifecycleOwner;
import java.util.HashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public class CompositeGeneratedAdaptersObserver implements DefaultLifecycleObserverInterface {
    private final LifecycleObserverMarker[] a;

    public CompositeGeneratedAdaptersObserver(LifecycleObserverMarker[] zkVarArr) {
        this.a = zkVarArr;
    }

    @Override // defpackage.DefaultLifecycleObserverInterface
    public final void a(LifecycleOwner zqVar, LifecycleEvent zlVar) {
        new HashMap();
        for (LifecycleObserverMarker zkVar : this.a) {
            zkVar.a();
        }
        for (LifecycleObserverMarker zkVar2 : this.a) {
            zkVar2.a();
        }
    }
}
