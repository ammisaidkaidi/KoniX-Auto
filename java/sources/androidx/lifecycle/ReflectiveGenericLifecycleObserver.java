package androidx.lifecycle;

import defpackage.ResultObserverHolder;
import defpackage.ReflectiveGenericLifecycleObserver;
import defpackage.LifecycleEvent;
import defpackage.DefaultLifecycleObserverInterface;
import defpackage.LifecycleOwner;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ReflectiveGenericLifecycleObserver implements DefaultLifecycleObserverInterface {
    private final Object a;
    private final ResultObserverHolder b;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.a = obj;
        this.b = zi.a.c(obj.getClass());
    }

    @Override // defpackage.DefaultLifecycleObserverInterface
    public final void a(LifecycleOwner zqVar, LifecycleEvent zlVar) {
        ResultObserverHolder blbVar = this.b;
        Object obj = this.a;
        ResultObserverHolder.b((List) blbVar.a.get(zlVar), zqVar, zlVar, obj);
        ResultObserverHolder.b((List) blbVar.a.get(zl.ON_ANY), zqVar, zlVar, obj);
    }
}
