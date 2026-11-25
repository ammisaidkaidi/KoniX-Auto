package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ded extends def {
    private static final Class c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    static List a(Object obj, long j) {
        return (List) dfz.h(obj, j);
    }

    private static List e(Object obj, long j, int i) {
        List a = a(obj, j);
        if (a.isEmpty()) {
            List debVar = a instanceof dec ? new deb(i) : ((a instanceof dey) && (a instanceof ddr)) ? ((ddr) a).d(i) : new ArrayList(i);
            dfz.u(obj, j, debVar);
            return debVar;
        }
        if (c.isAssignableFrom(a.getClass())) {
            ArrayList arrayList = new ArrayList(a.size() + i);
            arrayList.addAll(a);
            dfz.u(obj, j, arrayList);
            return arrayList;
        }
        if (a instanceof dfu) {
            deb debVar2 = new deb(a.size() + i);
            debVar2.addAll((dfu) a);
            dfz.u(obj, j, debVar2);
            return debVar2;
        }
        if (!(a instanceof dey) || !(a instanceof ddr)) {
            return a;
        }
        ddr ddrVar = (ddr) a;
        if (ddrVar.c()) {
            return a;
        }
        ddr d = ddrVar.d(a.size() + i);
        dfz.u(obj, j, d);
        return d;
    }

    @Override // defpackage.def
    public final List b(Object obj, long j) {
        return e(obj, j, 10);
    }

    @Override // defpackage.def
    public final void c(Object obj, long j) {
        Object unmodifiableList;
        List list = (List) dfz.h(obj, j);
        if (list instanceof dec) {
            unmodifiableList = ((dec) list).e();
        } else {
            if (c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof dey) && (list instanceof ddr)) {
                ddr ddrVar = (ddr) list;
                if (ddrVar.c()) {
                    ddrVar.b();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        dfz.u(obj, j, unmodifiableList);
    }

    @Override // defpackage.def
    public final void d(Object obj, Object obj2, long j) {
        List a = a(obj2, j);
        List e = e(obj, j, a.size());
        int size = e.size();
        int size2 = a.size();
        if (size > 0 && size2 > 0) {
            e.addAll(a);
        }
        if (size > 0) {
            a = e;
        }
        dfz.u(obj, j, a);
    }
}
