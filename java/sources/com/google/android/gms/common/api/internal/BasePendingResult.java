package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import defpackage.ApiCallOptionsBase;
import defpackage.ApiCallCompletionSignal;
import defpackage.StatusResultInterface;
import defpackage.ResultCallbackInterface;
import defpackage.ResultCallbackDispatcher;
import defpackage.PendingResultThreadLocal;
import defpackage.BasePendingResultHandler;
import defpackage.PendingResultFinalizerGuard;
import defpackage.PendingResultReleaseHelper;
import defpackage.ApiClientOptionsWrapper;
import defpackage.GmsConnectionCallback;
import defpackage.ViewCompatApi26Statics;
import defpackage.ThreadAndNullChecksUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class BasePendingResult extends ViewCompatApi26Statics {
    public static final ThreadLocal b = new PendingResultThreadLocal();
    private final CountDownLatch a;
    public final Object c;
    public final BasePendingResultHandler d;
    public final ArrayList e;
    public ResultCallbackInterface f;
    public StatusResultInterface g;
    public volatile boolean h;
    public boolean i;
    public volatile ResultCallbackDispatcher j;
    private final AtomicReference k;
    private boolean l;
    private PendingResultFinalizerGuard mResultGuardian;

    @Deprecated
    BasePendingResult() {
        this.c = new Object();
        this.a = new CountDownLatch(1);
        this.e = new ArrayList();
        this.k = new AtomicReference();
        this.i = false;
        this.d = new BasePendingResultHandler(Looper.getMainLooper());
        new WeakReference(null);
    }

    public static void m(StatusResultInterface bkiVar) {
        if (bkiVar instanceof ApiCallCompletionSignal) {
            try {
                ((ApiCallCompletionSignal) bkiVar).a();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(bkiVar);
                String.valueOf(valueOf).length();
                Log.w("BasePendingResult", "Unable to release ".concat(String.valueOf(valueOf)), e);
            }
        }
    }

    public final StatusResultInterface k() {
        StatusResultInterface bkiVar;
        synchronized (this.c) {
            ThreadAndNullChecksUtil.j(!this.h, "Result has already been consumed.");
            ThreadAndNullChecksUtil.j(o(), "Result is not ready.");
            bkiVar = this.g;
            this.g = null;
            this.f = null;
            this.h = true;
        }
        GmsConnectionCallback bmdVar = (GmsConnectionCallback) this.k.getAndSet(null);
        if (bmdVar != null) {
            bmdVar.a();
        }
        ThreadAndNullChecksUtil.d(bkiVar);
        return bkiVar;
    }

    @Deprecated
    public final void l(Status status) {
        synchronized (this.c) {
            if (!o()) {
                n(status);
                this.l = true;
            }
        }
    }

    public final void n(StatusResultInterface bkiVar) {
        synchronized (this.c) {
            if (this.l) {
                m(bkiVar);
                return;
            }
            o();
            ThreadAndNullChecksUtil.j(!o(), "Results have already been set");
            ThreadAndNullChecksUtil.j(!this.h, "Result has already been consumed");
            this.g = bkiVar;
            this.a.countDown();
            ResultCallbackInterface bkjVar = this.f;
            if (bkjVar != null) {
                this.d.removeMessages(2);
                this.d.a(bkjVar, k());
            }
            ArrayList arrayList = this.e;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((PendingResultReleaseHelper) arrayList.get(i)).a();
            }
            this.e.clear();
        }
    }

    public final boolean o() {
        return this.a.getCount() == 0;
    }

    protected BasePendingResult(ApiCallOptionsBase bkfVar) {
        this.c = new Object();
        this.a = new CountDownLatch(1);
        this.e = new ArrayList();
        this.k = new AtomicReference();
        this.i = false;
        this.d = new BasePendingResultHandler(((ApiClientOptionsWrapper) bkfVar).a.f);
        new WeakReference(bkfVar);
    }
}
