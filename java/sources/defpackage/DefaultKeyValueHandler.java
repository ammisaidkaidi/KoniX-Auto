package defpackage;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DefaultKeyValueHandler extends KeyValueHandlerBase {
    private final Map a;
    private final Map b;
    private final RepeatedKeyValueHandler c;

    public DefaultKeyValueHandler(MetadataKeyRegistry cujVar) {
        HashMap hashMap = new HashMap();
        this.a = hashMap;
        HashMap hashMap2 = new HashMap();
        this.b = hashMap2;
        hashMap.putAll(cujVar.c);
        hashMap2.putAll(cujVar.d);
        this.c = cujVar.f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.KeyValueHandlerBase
    protected final void a(MetadataKey cttVar, Object obj, Object obj2) {
        SingleKeyValueHandler cumVar = (SingleKeyValueHandler) this.a.get(cttVar);
        if (cumVar != null) {
            cumVar.a(cttVar, obj, obj2);
        } else {
            cttVar.b(obj, obj2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.KeyValueHandlerBase
    protected final void b(MetadataKey cttVar, Iterator it, Object obj) {
        RepeatedKeyValueHandler culVar = (RepeatedKeyValueHandler) this.b.get(cttVar);
        if (culVar != null) {
            culVar.a(cttVar, it, obj);
        } else if (this.c != null && !this.a.containsKey(cttVar)) {
            cttVar.a(it, obj);
        } else {
            while (it.hasNext()) {
                a(cttVar, it.next(), obj);
            }
        }
    }
}
