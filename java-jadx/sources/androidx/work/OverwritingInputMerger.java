package androidx.work;

import defpackage.agk;
import defpackage.agn;
import defpackage.ex;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class OverwritingInputMerger extends agn {
    @Override // defpackage.agn
    public final agk a(List list) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            hashMap2.putAll(((agk) it.next()).b());
        }
        ex.e(hashMap2, hashMap);
        return ex.d(hashMap);
    }
}
