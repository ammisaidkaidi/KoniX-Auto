package defpackage;

import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dee extends def {
    static ddr a(Object obj, long j) {
        return (ddr) dfz.h(obj, j);
    }

    @Override // defpackage.def
    public final List b(Object obj, long j) {
        ddr a = a(obj, j);
        if (a.c()) {
            return a;
        }
        int size = a.size();
        ddr d = a.d(size == 0 ? 10 : size + size);
        dfz.u(obj, j, d);
        return d;
    }

    @Override // defpackage.def
    public final void c(Object obj, long j) {
        a(obj, j).b();
    }

    @Override // defpackage.def
    public final void d(Object obj, Object obj2, long j) {
        ddr a = a(obj, j);
        ddr a2 = a(obj2, j);
        int size = a.size();
        int size2 = a2.size();
        if (size > 0 && size2 > 0) {
            if (!a.c()) {
                a = a.d(size2 + size);
            }
            a.addAll(a2);
        }
        if (size > 0) {
            a2 = a;
        }
        dfz.u(obj, j, a2);
    }
}
