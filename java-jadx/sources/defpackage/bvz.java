package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class bvz {
    public abstract der a(String str, Object obj);

    public abstract der b(der derVar, der derVar2);

    public abstract String c(der derVar);

    public final List d(Map map) {
        der a;
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getValue() != null && (a = a((String) entry.getKey(), entry.getValue())) != null) {
                arrayList.add(a);
            }
        }
        return arrayList;
    }

    final List e(List list, List list2) {
        der derVar;
        if (list.isEmpty()) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            der derVar2 = (der) it.next();
            String c = c(derVar2);
            Iterator it2 = list2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    derVar = null;
                    break;
                }
                derVar = (der) it2.next();
                if (c.equals(c(derVar))) {
                    break;
                }
            }
            der b = b(derVar2, derVar);
            if (b != null) {
                arrayList.add(b);
            }
        }
        return arrayList;
    }
}
