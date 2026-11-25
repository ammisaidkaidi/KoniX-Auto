package androidx.lifecycle;

import defpackage.blb;
import defpackage.zi;
import defpackage.zl;
import defpackage.zo;
import defpackage.zq;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ReflectiveGenericLifecycleObserver implements zo {
    private final Object a;
    private final blb b;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.a = obj;
        this.b = zi.a.c(obj.getClass());
    }

    @Override // defpackage.zo
    public final void a(zq zqVar, zl zlVar) {
        blb blbVar = this.b;
        Object obj = this.a;
        blb.b((List) blbVar.a.get(zlVar), zqVar, zlVar, obj);
        blb.b((List) blbVar.a.get(zl.ON_ANY), zqVar, zlVar, obj);
    }
}
