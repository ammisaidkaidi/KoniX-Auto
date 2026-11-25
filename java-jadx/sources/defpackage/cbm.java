package defpackage;

import android.os.SystemClock;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cbm {
    private static final csz b = csz.g("com/google/android/libraries/performance/primes/metrics/trace/Tracer");
    private static int c = 10;
    private static int d = 0;
    public static final AtomicReference a = new AtomicReference();

    public static void a(cay cayVar) {
        if (cayVar.equals(cay.a)) {
            return;
        }
        if (cayVar.d < 0) {
            cayVar.d = SystemClock.elapsedRealtime();
        }
        AtomicReference atomicReference = a;
        cbg cbgVar = (cbg) atomicReference.get();
        if (cbgVar == null) {
            return;
        }
        if (cayVar != ((cay) cbgVar.c().poll())) {
            ((csx) b.c().h("com/google/android/libraries/performance/primes/metrics/trace/Tracer", "endSpan", 169, "Tracer.java")).n("Incorrect Span passed. Ignore...");
            return;
        }
        if (cayVar.a() < c) {
            return;
        }
        if (cbgVar.b() >= d) {
            ((csx) b.c().h("com/google/android/libraries/performance/primes/metrics/trace/Tracer", "endSpan", 178, "Tracer.java")).o("Dropping trace as max buffer size is hit. Size: %d", cbgVar.a());
            atomicReference.set(null);
            return;
        }
        cay cayVar2 = (cay) cbgVar.c().peek();
        if (cayVar2 == null) {
            ((csx) cbg.a.c().h("com/google/android/libraries/performance/primes/metrics/trace/TraceData", "linkToParent", 104, "TraceData.java")).p("null Parent for Span: %s", cayVar.b);
            return;
        }
        if (cayVar2.f == Collections.EMPTY_LIST) {
            cayVar2.f = new ArrayList();
        }
        if (cayVar2.f != null) {
            cayVar2.f.add(cayVar);
        }
    }

    public static List b(cbg cbgVar) {
        bjq.e();
        if (cbgVar.a() == 0) {
            return null;
        }
        bup bupVar = bup.d;
        synchronized (cbgVar.e) {
            Collections.sort(cbgVar.e, bupVar);
            cbgVar.c.b(cbgVar.e);
        }
        ArrayList arrayList = new ArrayList(cbgVar.d.keySet());
        Collections.sort(arrayList, bupVar);
        cbgVar.c.b(arrayList);
        caz cazVar = new caz(cbgVar.c);
        ArrayList arrayList2 = new ArrayList();
        cazVar.a(cazVar.a, 0L, arrayList2);
        if (arrayList2.size() == 1) {
            return null;
        }
        return Collections.unmodifiableList(arrayList2);
    }

    public static boolean c(String str) {
        str.getClass();
        AtomicReference atomicReference = a;
        if (atomicReference.get() != null || !atomicReference.compareAndSet(null, new cbg(str))) {
            return false;
        }
        c = 5;
        d = 1000;
        return true;
    }

    public static cbg d(String str) {
        ex.r(!TextUtils.isEmpty(str));
        cbg cbgVar = (cbg) a.getAndSet(null);
        if (cbgVar != null) {
            cbgVar.c.b = str;
        }
        return cbgVar;
    }
}
