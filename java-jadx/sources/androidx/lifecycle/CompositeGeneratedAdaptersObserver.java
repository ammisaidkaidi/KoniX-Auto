package androidx.lifecycle;

import defpackage.zk;
import defpackage.zl;
import defpackage.zo;
import defpackage.zq;
import java.util.HashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public class CompositeGeneratedAdaptersObserver implements zo {
    private final zk[] a;

    public CompositeGeneratedAdaptersObserver(zk[] zkVarArr) {
        this.a = zkVarArr;
    }

    @Override // defpackage.zo
    public final void a(zq zqVar, zl zlVar) {
        new HashMap();
        for (zk zkVar : this.a) {
            zkVar.a();
        }
        for (zk zkVar2 : this.a) {
            zkVar2.a();
        }
    }
}
