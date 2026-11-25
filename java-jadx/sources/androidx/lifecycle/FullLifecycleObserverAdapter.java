package androidx.lifecycle;

import defpackage.zj;
import defpackage.zl;
import defpackage.zo;
import defpackage.zq;

/* compiled from: PG */
/* loaded from: classes.dex */
public class FullLifecycleObserverAdapter implements zo {
    private final zj a;
    private final zo b;

    public FullLifecycleObserverAdapter(zj zjVar, zo zoVar) {
        this.a = zjVar;
        this.b = zoVar;
    }

    @Override // defpackage.zo
    public final void a(zq zqVar, zl zlVar) {
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
        zo zoVar = this.b;
        if (zoVar != null) {
            zoVar.a(zqVar, zlVar);
        }
    }
}
