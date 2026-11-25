package com.google.android.libraries.performance.primes.metrics.trace;

import android.os.SystemClock;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class Tracer {
    private static final FloggerLoggerFactory b = FloggerLoggerFactory.g("com/google/android/libraries/performance/primes/metrics/trace/Tracer");
    private static int c = 10;
    private static int d = 0;
    public static final AtomicReference a = new AtomicReference();

    public static void a(StorageFileHandle cayVar) {
        if (cayVar.equals(cay.a)) {
            return;
        }
        if (cayVar.ProtoMsgIntStringInt < 0) {
            cayVar.d = SystemClock.elapsedRealtime();
        }
        AtomicReference atomicReference = a;
        TraceData cbgVar = (TraceData) atomicReference.get();
        if (cbgVar == null) {
            return;
        }
        if (cayVar != ((StorageFileHandle) cbgVar.c().poll())) {
            ((ParameterizedLoggerApi) b.c().h("com/google/android/libraries/performance/primes/metrics/trace/Tracer", "endSpan", 169, "Tracer.java")).n("Incorrect Span passed. Ignore...");
            return;
        }
        if (cayVar.a() < c) {
            return;
        }
        if (cbgVar.b() >= d) {
            ((ParameterizedLoggerApi) b.c().h("com/google/android/libraries/performance/primes/metrics/trace/Tracer", "endSpan", 178, "Tracer.java")).o("Dropping trace as max buffer size is hit. Size: %d", cbgVar.a());
            atomicReference.set(null);
            return;
        }
        StorageFileHandle cayVar2 = (StorageFileHandle) cbgVar.c().peek();
        if (cayVar2 == null) {
            ((ParameterizedLoggerApi) TraceData.a.c().h("com/google/android/libraries/performance/primes/metrics/trace/TraceData", "linkToParent", 104, "TraceData.java")).p("null Parent for Span: %s", cayVar.b);
            return;
        }
        if (cayVar2.f == Collections.EMPTY_LIST) {
            cayVar2.f = new ArrayList();
        }
        if (cayVar2.f != null) {
            cayVar2.f.add(cayVar);
        }
    }

    public static List b(TraceData cbgVar) {
        GoogleSignatureVerifier.e();
        if (cbgVar.a() == 0) {
            return null;
        }
        MetricNameComparator bupVar = bup.d;
        synchronized (cbgVar.e) {
            Collections.sort(cbgVar.e, bupVar);
            cbgVar.c.b(cbgVar.e);
        }
        ArrayList arrayList = new ArrayList(cbgVar.d.keySet());
        Collections.sort(arrayList, bupVar);
        cbgVar.c.b(arrayList);
        FileHandleReleaseTask cazVar = new FileHandleReleaseTask(cbgVar.c);
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
        if (atomicReference.get() != null || !atomicReference.compareAndSet(null, new TraceData(str))) {
            return false;
        }
        c = 5;
        d = 1000;
        return true;
    }

    public static TraceData d(String str) {
        ex.r(!TextUtils.isEmpty(str));
        TraceData cbgVar = (TraceData) a.getAndSet(null);
        if (cbgVar != null) {
            cbgVar.c.b = str;
        }
        return cbgVar;
    }
}
