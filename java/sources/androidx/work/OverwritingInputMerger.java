package androidx.work;

import defpackage.WorkData;
import defpackage.WorkerInstantiatorBase;
import defpackage.GuavaPreconditionsSuppliersUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class OverwritingInputMerger extends WorkerInstantiatorBase {
    @Override // defpackage.WorkerInstantiatorBase
    public final WorkData a(List list) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            hashMap2.putAll(((WorkData) it.next()).b());
        }
        ex.e(hashMap2, hashMap);
        return ex.d(hashMap);
    }
}
