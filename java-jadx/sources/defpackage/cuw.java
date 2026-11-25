package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cuw extends cux {
    private final Map a;

    public cuw(cug cugVar, cug cugVar2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        d(linkedHashMap, cugVar);
        d(linkedHashMap, cugVar2);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (((ctt) entry.getKey()).b) {
                entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
            }
        }
        this.a = Collections.unmodifiableMap(linkedHashMap);
    }

    private static void d(Map map, cug cugVar) {
        for (int i = 0; i < cugVar.b(); i++) {
            ctt c = cugVar.c(i);
            Object obj = map.get(c);
            if (c.b) {
                List list = (List) obj;
                if (list == null) {
                    list = new ArrayList();
                    map.put(c, list);
                }
                list.add(c.d(cugVar.e(i)));
            } else {
                map.put(c, c.d(cugVar.e(i)));
            }
        }
    }

    @Override // defpackage.cux
    public final int a() {
        return this.a.size();
    }

    @Override // defpackage.cux
    public final Set b() {
        return this.a.keySet();
    }

    @Override // defpackage.cux
    public final void c(cun cunVar, Object obj) {
        for (Map.Entry entry : this.a.entrySet()) {
            ctt cttVar = (ctt) entry.getKey();
            Object value = entry.getValue();
            if (cttVar.b) {
                cunVar.b(cttVar, ((List) value).iterator(), obj);
            } else {
                cunVar.a(cttVar, value, obj);
            }
        }
    }
}
