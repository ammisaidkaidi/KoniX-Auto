package defpackage;

import android.os.Build;
import android.os.Trace;
import java.util.ArrayDeque;
import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ClosingScopeRegistry {
    public static final WeakHashMap a = new WeakHashMap();
    private static final ThreadLocal b = new PerThreadScopeHolder();

    static {
        new ArrayDeque();
        new ArrayDeque();
    }

    static TrackedCloseable a() {
        return ((CloseScopeState) b.get()).c;
    }

    static TrackedCloseable b() {
        TrackedCloseable a2 = a();
        return a2 == null ? new ExceptionHoldingDeferredCloseable() : a2;
    }

    static TrackedCloseable c(TrackedCloseable cnjVar) {
        return h((CloseScopeState) b.get(), cnjVar);
    }

    static String d(TrackedCloseable cnjVar) {
        int i = 0;
        TrackedCloseable cnjVar2 = cnjVar;
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

    static void e(TrackedCloseable cnjVar) {
        cnjVar.getClass();
        CloseScopeState cnqVar = (CloseScopeState) b.get();
        TrackedCloseable cnjVar2 = cnqVar.c;
        String b2 = cnjVar2.b();
        String b3 = cnjVar.b();
        if (cnjVar != cnjVar2) {
            throw new IllegalStateException(ex.k("Wrong trace, expected %s but got %s", b2, b3));
        }
        h(cnqVar, cnjVar2.a());
    }

    public static FutureCloseSignal f(String str) {
        return g(str, cnh.a, true);
    }

    public static FutureCloseSignal g(String str, FreezableConfigState cniVar, boolean z) {
        TrackedCloseable a2 = a();
        TrackedCloseable cnfVar = a2 == null ? new SimpleDeferredCloseable(str, cniVar, z) : a2 instanceof DeferredCloseable ? ((DeferredCloseable) a2).d(str, cniVar, z) : a2.f(str, cniVar);
        c(cnfVar);
        return new FutureCloseSignal(cnfVar);
    }

    private static TrackedCloseable h(CloseScopeState cnqVar, TrackedCloseable cnjVar) {
        TrackedCloseable cnjVar2 = cnqVar.c;
        if (cnjVar2 == cnjVar) {
            return cnjVar;
        }
        if (cnjVar2 == null) {
            cnqVar.b = Build.VERSION.SDK_INT >= 29 ? ScopeSupportCheck.a() : "true".equals(SystemPropertiesReader.a());
        }
        if (cnqVar.b) {
            l(cnjVar2, cnjVar);
        }
        cnqVar.c = cnjVar;
        CloseScopeMarker cnpVar = cnqVar.a;
        return cnjVar2;
    }

    private static void i(String str) {
        if (str.length() > 127) {
            str = str.substring(0, 127);
        }
        Trace.beginSection(str);
    }

    private static void j(TrackedCloseable cnjVar) {
        if (cnjVar.a() != null) {
            j(cnjVar.a());
        }
        i(cnjVar.b());
    }

    private static void k(TrackedCloseable cnjVar) {
        Trace.endSection();
        if (cnjVar.a() != null) {
            k(cnjVar.a());
        }
    }

    private static void l(TrackedCloseable cnjVar, TrackedCloseable cnjVar2) {
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
