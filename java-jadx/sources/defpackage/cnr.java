package defpackage;

import android.os.Build;
import android.os.Trace;
import java.util.ArrayDeque;
import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cnr {
    public static final WeakHashMap a = new WeakHashMap();
    private static final ThreadLocal b = new cnn();

    static {
        new ArrayDeque();
        new ArrayDeque();
    }

    static cnj a() {
        return ((cnq) b.get()).c;
    }

    static cnj b() {
        cnj a2 = a();
        return a2 == null ? new cne() : a2;
    }

    static cnj c(cnj cnjVar) {
        return h((cnq) b.get(), cnjVar);
    }

    static String d(cnj cnjVar) {
        int i = 0;
        cnj cnjVar2 = cnjVar;
        while (cnjVar2 != null) {
            i += cnjVar2.b().length();
            cnjVar2 = cnjVar2.a();
            if (cnjVar2 != null) {
                i += 4;
            }
        }
        char[] cArr = new char[i];
        while (cnjVar != null) {
            String b2 = cnjVar.b();
            i -= b2.length();
            b2.getChars(0, b2.length(), cArr, i);
            cnjVar = cnjVar.a();
            if (cnjVar != null) {
                i -= 4;
                " -> ".getChars(0, 4, cArr, i);
            }
        }
        return new String(cArr);
    }

    static void e(cnj cnjVar) {
        cnjVar.getClass();
        cnq cnqVar = (cnq) b.get();
        cnj cnjVar2 = cnqVar.c;
        String b2 = cnjVar2.b();
        String b3 = cnjVar.b();
        if (cnjVar != cnjVar2) {
            throw new IllegalStateException(ex.k("Wrong trace, expected %s but got %s", b2, b3));
        }
        h(cnqVar, cnjVar2.a());
    }

    public static cng f(String str) {
        return g(str, cnh.a, true);
    }

    public static cng g(String str, cni cniVar, boolean z) {
        cnj a2 = a();
        cnj cnfVar = a2 == null ? new cnf(str, cniVar, z) : a2 instanceof cmz ? ((cmz) a2).d(str, cniVar, z) : a2.f(str, cniVar);
        c(cnfVar);
        return new cng(cnfVar);
    }

    private static cnj h(cnq cnqVar, cnj cnjVar) {
        cnj cnjVar2 = cnqVar.c;
        if (cnjVar2 == cnjVar) {
            return cnjVar;
        }
        if (cnjVar2 == null) {
            cnqVar.b = Build.VERSION.SDK_INT >= 29 ? cno.a() : "true".equals(chg.a());
        }
        if (cnqVar.b) {
            l(cnjVar2, cnjVar);
        }
        cnqVar.c = cnjVar;
        cnp cnpVar = cnqVar.a;
        return cnjVar2;
    }

    private static void i(String str) {
        if (str.length() > 127) {
            str = str.substring(0, 127);
        }
        Trace.beginSection(str);
    }

    private static void j(cnj cnjVar) {
        if (cnjVar.a() != null) {
            j(cnjVar.a());
        }
        i(cnjVar.b());
    }

    private static void k(cnj cnjVar) {
        Trace.endSection();
        if (cnjVar.a() != null) {
            k(cnjVar.a());
        }
    }

    private static void l(cnj cnjVar, cnj cnjVar2) {
        if (cnjVar != null) {
            if (cnjVar2 != null) {
                if (cnjVar.a() == cnjVar2) {
                    Trace.endSection();
                    return;
                } else if (cnjVar == cnjVar2.a()) {
                    i(cnjVar2.b());
                    return;
                }
            }
            k(cnjVar);
        }
        if (cnjVar2 != null) {
            j(cnjVar2);
        }
    }
}
