package defpackage;

import java.util.Iterator;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cuq {
    private static final cum a = new cuo();
    private static final cul b = new cup();

    public static cun a(Set set) {
        cuj cujVar = new cuj(a);
        cujVar.f = b;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ctt cttVar = (ctt) it.next();
            hf.u(cttVar, "key");
            if (cttVar.b) {
                cul culVar = cuj.b;
                hf.u(cttVar, "key");
                hf.v(cttVar.b, "key must be repeating");
                cujVar.c.remove(cttVar);
                cujVar.d.put(cttVar, culVar);
            } else {
                cum cumVar = cuj.a;
                hf.u(cttVar, "key");
                cujVar.d.remove(cttVar);
                cujVar.c.put(cttVar, cumVar);
            }
        }
        return new cuk(cujVar);
    }
}
