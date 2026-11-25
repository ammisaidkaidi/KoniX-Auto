package androidx.lifecycle;

import defpackage.ProjectionSessionLifecycleListener_zj;
import defpackage.LifecycleEvent;
import defpackage.DefaultLifecycleObserverInterface;
import defpackage.LifecycleOwner;

/* compiled from: PG */
/* loaded from: classes.dex */
public class FullLifecycleObserverAdapter implements DefaultLifecycleObserverInterface {
    private final ProjectionSessionLifecycleListener_zj a;
    private final DefaultLifecycleObserverInterface b;

    public FullLifecycleObserverAdapter(ProjectionSessionLifecycleListener_zj zjVar, DefaultLifecycleObserverInterface zoVar) {
        this.a = zjVar;
        this.b = zoVar;
    }

    @Override // defpackage.DefaultLifecycleObserverInterface
    public final void a(LifecycleOwner zqVar, LifecycleEvent zlVar) {
        switch (zlVar) {
            case ON_CREATE:
                this.a.a();
                break;
            case ON_START:
                this.a.e();
                break;
            case ON_RESUME:
                this.a.d();
                break;
            case ON_PAUSE:
                this.a.c();
                break;
            case ON_STOP:
                this.a.f();
                break;
            case ON_DESTROY:
                this.a.b();
                break;
            case ON_ANY:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        DefaultLifecycleObserverInterface zoVar = this.b;
        if (zoVar != null) {
            zoVar.a(zqVar, zlVar);
        }
    }
}
