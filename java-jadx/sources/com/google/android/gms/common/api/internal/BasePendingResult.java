package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import defpackage.bkf;
import defpackage.bkg;
import defpackage.bki;
import defpackage.bkj;
import defpackage.bkk;
import defpackage.bkv;
import defpackage.bkw;
import defpackage.bkx;
import defpackage.bkz;
import defpackage.blc;
import defpackage.bmd;
import defpackage.ho;
import defpackage.hr;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class BasePendingResult extends ho {
    public static final ThreadLocal b = new bkv();
    private final CountDownLatch a;
    public final Object c;
    public final bkw d;
    public final ArrayList e;
    public bkj f;
    public bki g;
    public volatile boolean h;
    public boolean i;
    public volatile bkk j;
    private final AtomicReference k;
    private boolean l;
    private bkx mResultGuardian;

    @Deprecated
    BasePendingResult() {
        this.c = new Object();
        this.a = new CountDownLatch(1);
        this.e = new ArrayList();
        this.k = new AtomicReference();
        this.i = false;
        this.d = new bkw(Looper.getMainLooper());
        new WeakReference(null);
    }

    public static void m(bki bkiVar) {
        if (bkiVar instanceof bkg) {
            try {
                ((bkg) bkiVar).a();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(bkiVar);
                String.valueOf(valueOf).length();
                Log.w("BasePendingResult", "Unable to release ".concat(String.valueOf(valueOf)), e);
            }
        }
    }

    public final bki k() {
        bki bkiVar;
        synchronized (this.c) {
            hr.j(!this.h, "Result has already been consumed.");
            hr.j(o(), "Result is not ready.");
            bkiVar = this.g;
            this.g = null;
            this.f = null;
            this.h = true;
        }
        bmd bmdVar = (bmd) this.k.getAndSet(null);
        if (bmdVar != null) {
            bmdVar.a();
        }
        hr.d(bkiVar);
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

    public final void n(bki bkiVar) {
        synchronized (this.c) {
            if (this.l) {
                m(bkiVar);
                return;
            }
            o();
            hr.j(!o(), "Results have already been set");
            hr.j(!this.h, "Result has already been consumed");
            this.g = bkiVar;
            this.a.countDown();
            bkj bkjVar = this.f;
            if (bkjVar != null) {
                this.d.removeMessages(2);
                this.d.a(bkjVar, k());
            }
            ArrayList arrayList = this.e;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((bkz) arrayList.get(i)).a();
            }
            this.e.clear();
        }
    }

    public final boolean o() {
        return this.a.getCount() == 0;
    }

    protected BasePendingResult(bkf bkfVar) {
        this.c = new Object();
        this.a = new CountDownLatch(1);
        this.e = new ArrayList();
        this.k = new AtomicReference();
        this.i = false;
        this.d = new bkw(((blc) bkfVar).a.f);
        new WeakReference(bkfVar);
    }
}
