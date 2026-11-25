package defpackage;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dez {
    public static final dez a = new dez();
    private final ConcurrentMap b = new ConcurrentHashMap();
    private final dej c = new dej();

    private dez() {
    }

    public final dfg a(Class cls) {
        dds.i(cls, "messageType");
        dfg dfgVar = (dfg) this.b.get(cls);
        if (dfgVar == null) {
            dej dejVar = this.c;
            dfh.p(cls);
            deo a2 = dejVar.a.a(cls);
            dfgVar = a2.b() ? ddk.class.isAssignableFrom(cls) ? deu.c(dfh.c, dda.a, a2.a()) : deu.c(dfh.a, dda.a(), a2.a()) : ddk.class.isAssignableFrom(cls) ? dej.a(a2) ? det.m(a2, dew.b, def.b, dfh.c, dda.a, den.b) : det.m(a2, dew.b, def.b, dfh.c, null, den.b) : dej.a(a2) ? det.m(a2, dew.a, def.a, dfh.a, dda.a(), den.a) : det.m(a2, dew.a, def.a, dfh.b, null, den.a);
            dds.i(cls, "messageType");
            dds.i(dfgVar, "schema");
            dfg dfgVar2 = (dfg) this.b.putIfAbsent(cls, dfgVar);
            if (dfgVar2 != null) {
                return dfgVar2;
            }
        }
        return dfgVar;
    }

    public final dfg b(Object obj) {
        return a(obj.getClass());
    }
}
