package defpackage;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dfh {
    public static final ev a;
    public static final ev b;
    public static final ev c;
    private static final Class d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            cls = null;
        }
        d = cls;
        a = Y(false);
        b = Y(true);
        c = new ev();
    }

    static int A(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return o(list) + (size * dcu.ab(i));
    }

    public static void B(int i, List list, dcv dcvVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                dcvVar.a.l(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        dcvVar.a.A(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).booleanValue();
            i3++;
        }
        dcvVar.a.C(i3);
        while (i2 < list.size()) {
            dcvVar.a.j(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static void C(int i, List list, dcv dcvVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            dcvVar.a.m(i, (dcl) list.get(i2));
        }
    }

    public static void D(int i, List list, dcv dcvVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                dcvVar.a.am(i, ((Double) list.get(i2)).doubleValue());
                i2++;
            }
            return;
        }
        dcvVar.a.A(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).doubleValue();
            i3 += 8;
        }
        dcvVar.a.C(i3);
        while (i2 < list.size()) {
            dcvVar.a.an(((Double) list.get(i2)).doubleValue());
            i2++;
        }
    }

    public static void E(int i, List list, dcv dcvVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                dcvVar.a.s(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        dcvVar.a.A(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += dcu.N(((Integer) list.get(i4)).intValue());
        }
        dcvVar.a.C(i3);
        while (i2 < list.size()) {
            dcvVar.a.t(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void F(int i, List list, dcv dcvVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                dcvVar.a.o(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        dcvVar.a.A(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).intValue();
            i3 += 4;
        }
        dcvVar.a.C(i3);
        while (i2 < list.size()) {
            dcvVar.a.p(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void G(int i, List list, dcv dcvVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                dcvVar.a.q(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        dcvVar.a.A(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).longValue();
            i3 += 8;
        }
        dcvVar.a.C(i3);
        while (i2 < list.size()) {
            dcvVar.a.r(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void H(int i, List list, dcv dcvVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                dcvVar.a.ao(i, ((Float) list.get(i2)).floatValue());
                i2++;
            }
            return;
        }
        dcvVar.a.A(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).floatValue();
            i3 += 4;
        }
        dcvVar.a.C(i3);
        while (i2 < list.size()) {
            dcvVar.a.ap(((Float) list.get(i2)).floatValue());
            i2++;
        }
    }

    public static void I(int i, List list, dcv dcvVar, dfg dfgVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            dcvVar.h(i, list.get(i2), dfgVar);
        }
    }

    public static void J(int i, List list, dcv dcvVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                dcvVar.a.s(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        dcvVar.a.A(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += dcu.N(((Integer) list.get(i4)).intValue());
        }
        dcvVar.a.C(i3);
        while (i2 < list.size()) {
            dcvVar.a.t(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void K(int i, List list, dcv dcvVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                dcvVar.a.D(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        dcvVar.a.A(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += dcu.af(((Long) list.get(i4)).longValue());
        }
        dcvVar.a.C(i3);
        while (i2 < list.size()) {
            dcvVar.a.E(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void L(int i, List list, dcv dcvVar, dfg dfgVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            dcvVar.k(i, list.get(i2), dfgVar);
        }
    }

    public static void M(int i, List list, dcv dcvVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                dcvVar.a.o(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        dcvVar.a.A(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).intValue();
            i3 += 4;
        }
        dcvVar.a.C(i3);
        while (i2 < list.size()) {
            dcvVar.a.p(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void N(int i, List list, dcv dcvVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                dcvVar.a.q(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        dcvVar.a.A(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).longValue();
            i3 += 8;
        }
        dcvVar.a.C(i3);
        while (i2 < list.size()) {
            dcvVar.a.r(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void O(int i, List list, dcv dcvVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                dcvVar.a.ar(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        dcvVar.a.A(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += dcu.W(((Integer) list.get(i4)).intValue());
        }
        dcvVar.a.C(i3);
        while (i2 < list.size()) {
            dcvVar.a.as(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void P(int i, List list, dcv dcvVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                dcvVar.a.at(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        dcvVar.a.A(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += dcu.Y(((Long) list.get(i4)).longValue());
        }
        dcvVar.a.C(i3);
        while (i2 < list.size()) {
            dcvVar.a.au(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void Q(int i, List list, dcv dcvVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i2 = 0;
        if (!(list instanceof dec)) {
            while (i2 < list.size()) {
                dcvVar.a.y(i, (String) list.get(i2));
                i2++;
            }
            return;
        }
        dec decVar = (dec) list;
        while (i2 < list.size()) {
            Object f = decVar.f(i2);
            if (f instanceof String) {
                dcvVar.a.y(i, (String) f);
            } else {
                dcvVar.a.m(i, (dcl) f);
            }
            i2++;
        }
    }

    public static void R(int i, List list, dcv dcvVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                dcvVar.a.B(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        dcvVar.a.A(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += dcu.ad(((Integer) list.get(i4)).intValue());
        }
        dcvVar.a.C(i3);
        while (i2 < list.size()) {
            dcvVar.a.C(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void S(int i, List list, dcv dcvVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                dcvVar.a.D(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        dcvVar.a.A(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += dcu.af(((Long) list.get(i4)).longValue());
        }
        dcvVar.a.C(i3);
        while (i2 < list.size()) {
            dcvVar.a.E(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    static void T(Object obj, Object obj2) {
        ddb o = hl.o(obj2);
        if (o.h()) {
            return;
        }
        ddb p = hl.p(obj);
        for (int i = 0; i < o.b.a(); i++) {
            p.f(o.b.f(i));
        }
        Iterator it = o.b.c().iterator();
        while (it.hasNext()) {
            p.f((Map.Entry) it.next());
        }
    }

    static void U(Object obj, Object obj2, long j) {
        dfz.u(obj, j, ev.X(dfz.h(obj, j), dfz.h(obj2, j)));
    }

    static void V(Object obj, Object obj2) {
        dfr M = ev.M(obj);
        dfr M2 = ev.M(obj2);
        if (!M2.equals(dfr.a)) {
            int i = M.b + M2.b;
            int[] copyOf = Arrays.copyOf(M.c, i);
            System.arraycopy(M2.c, 0, copyOf, M.b, M2.b);
            Object[] copyOf2 = Arrays.copyOf(M.d, i);
            System.arraycopy(M2.d, 0, copyOf2, M.b, M2.b);
            M = new dfr(i, copyOf, copyOf2, true);
        }
        ev.N(obj, M);
    }

    static Object W(int i, int i2, Object obj) {
        if (obj == null) {
            obj = dfr.b();
        }
        ev.L(obj, i, i2);
        return obj;
    }

    static Object X(int i, List list, ddo ddoVar, Object obj) {
        if (ddoVar == null) {
            return obj;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = ((Integer) list.get(i3)).intValue();
                if (ddoVar.a(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    obj = W(i, intValue, obj);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
                return obj;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = ((Integer) it.next()).intValue();
                if (!ddoVar.a(intValue2)) {
                    obj = W(i, intValue2, obj);
                    it.remove();
                }
            }
        }
        return obj;
    }

    private static ev Y(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (ev) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th2) {
            return null;
        }
    }

    static int a(List list) {
        return list.size();
    }

    static int b(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int ab = size * dcu.ab(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            ab += dcu.I((dcl) list.get(i2));
        }
        return ab;
    }

    static int c(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ddl) {
            ddl ddlVar = (ddl) list;
            i = 0;
            while (i2 < size) {
                i += dcu.N(ddlVar.e(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += dcu.N(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    static int d(List list) {
        return list.size() * 4;
    }

    static int e(List list) {
        return list.size() * 8;
    }

    static int f(int i, List list, dfg dfgVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += dcu.K(i, (der) list.get(i3), dfgVar);
        }
        return i2;
    }

    static int g(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ddl) {
            ddl ddlVar = (ddl) list;
            i = 0;
            while (i2 < size) {
                i += dcu.N(ddlVar.e(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += dcu.N(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    static int h(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof deg) {
            deg degVar = (deg) list;
            i = 0;
            while (i2 < size) {
                i += dcu.af(degVar.f(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += dcu.af(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    static int i(int i, Object obj, dfg dfgVar) {
        return obj instanceof dea ? dcu.P(i, (dea) obj) : dcu.ab(i) + dcu.T((der) obj, dfgVar);
    }

    static int j(int i, List list, dfg dfgVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int ab = dcu.ab(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            ab += obj instanceof dea ? dcu.Q((dea) obj) : dcu.T((der) obj, dfgVar);
        }
        return ab;
    }

    static int k(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ddl) {
            ddl ddlVar = (ddl) list;
            i = 0;
            while (i2 < size) {
                i += dcu.W(ddlVar.e(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += dcu.W(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    static int l(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof deg) {
            deg degVar = (deg) list;
            i = 0;
            while (i2 < size) {
                i += dcu.Y(degVar.f(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += dcu.Y(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    static int m(int i, List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int ab = dcu.ab(i) * size;
        if (list instanceof dec) {
            dec decVar = (dec) list;
            while (i2 < size) {
                Object f = decVar.f(i2);
                ab += f instanceof dcl ? dcu.I((dcl) f) : dcu.aa((String) f);
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                ab += obj instanceof dcl ? dcu.I((dcl) obj) : dcu.aa((String) obj);
                i2++;
            }
        }
        return ab;
    }

    static int n(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ddl) {
            ddl ddlVar = (ddl) list;
            i = 0;
            while (i2 < size) {
                i += dcu.ad(ddlVar.e(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += dcu.ad(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    static int o(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof deg) {
            deg degVar = (deg) list;
            i = 0;
            while (i2 < size) {
                i += dcu.af(degVar.f(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += dcu.af(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    public static void p(Class cls) {
        Class cls2;
        if (!ddk.class.isAssignableFrom(cls) && (cls2 = d) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    static boolean q(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    static int r(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * dcu.av(i);
    }

    static int s(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return c(list) + (size * dcu.ab(i));
    }

    static int t(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * dcu.ax(i);
    }

    static int u(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * dcu.ay(i);
    }

    static int v(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return g(list) + (size * dcu.ab(i));
    }

    static int w(int i, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return h(list) + (list.size() * dcu.ab(i));
    }

    static int x(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return k(list) + (size * dcu.ab(i));
    }

    static int y(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return l(list) + (size * dcu.ab(i));
    }

    static int z(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return n(list) + (size * dcu.ab(i));
    }
}
