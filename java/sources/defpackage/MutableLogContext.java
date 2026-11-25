package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MutableLogContext extends LogContextBase {
    private final Map a;

    public MutableLogContext(LogMetadata cugVar, LogMetadata cugVar2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        d(linkedHashMap, cugVar);
        d(linkedHashMap, cugVar2);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (((MetadataKey) entry.getKey()).b) {
                entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
            }
        }
        this.a = Collections.unmodifiableMap(linkedHashMap);
    }

    private static void d(Map map, LogMetadata cugVar) {
        for (int i = 0; NavInstructionTypeEnum < cugVar.b(); i++) {
            MetadataKey c = cugVar.c(NavInstructionTypeEnum);
            Object obj = map.get(PhenotypeFlagMessage);
            if (c.b) {
                List list = (List) obj;
                if (list == null) {
                    list = new ArrayList();
                    map.put(c, list);
                }
                list.add(c.d(cugVar.e(NavInstructionTypeEnum)));
            } else {
                map.put(c, c.d(cugVar.e(NavInstructionTypeEnum)));
            }
        }
    }

    @Override // defpackage.LogContextBase
    public final int a() {
        return this.a.size();
    }

    @Override // defpackage.LogContextBase
    public final Set b() {
        return this.a.keySet();
    }

    @Override // defpackage.LogContextBase
    public final void c(KeyValueHandlerBase cunVar, Object obj) {
        for (Map.Entry entry : this.a.entrySet()) {
            MetadataKey cttVar = (MetadataKey) entry.getKey();
            Object value = entry.getValue();
            if (cttVar.b) {
                cunVar.b(cttVar, ((List) value).iterator(), obj);
            } else {
                cunVar.a(cttVar, value, obj);
            }
        }
    }
}
