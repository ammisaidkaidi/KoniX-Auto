package defpackage;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cuk extends cun {
    private final Map a;
    private final Map b;
    private final cul c;

    public cuk(cuj cujVar) {
        HashMap hashMap = new HashMap();
        this.a = hashMap;
        HashMap hashMap2 = new HashMap();
        this.b = hashMap2;
        hashMap.putAll(cujVar.c);
        hashMap2.putAll(cujVar.d);
        this.c = cujVar.f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.cun
    protected final void a(ctt cttVar, Object obj, Object obj2) {
        cum cumVar = (cum) this.a.get(cttVar);
        if (cumVar != null) {
            cumVar.a(cttVar, obj, obj2);
        } else {
            cttVar.b(obj, obj2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.cun
    protected final void b(ctt cttVar, Iterator it, Object obj) {
        cul culVar = (cul) this.b.get(cttVar);
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
