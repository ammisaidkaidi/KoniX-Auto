package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import defpackage.agr;
import defpackage.aiu;
import defpackage.ame;
import defpackage.ami;
import defpackage.dag;
import defpackage.ex;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ConstraintTrackingWorker extends ListenableWorker implements aiu {
    public static final String f = agr.b("ConstraintTrkngWrkr");
    public WorkerParameters g;
    public final Object h;
    public volatile boolean i;
    public ListenableWorker j;
    public ame k;

    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.g = workerParameters;
        this.h = new Object();
        this.i = false;
        this.k = ame.h();
    }

    @Override // androidx.work.ListenableWorker
    public final void aM() {
        ListenableWorker listenableWorker = this.j;
        if (listenableWorker == null || listenableWorker.c) {
            return;
        }
        this.j.aN();
    }

    @Override // androidx.work.ListenableWorker
    public final dag b() {
        d().execute(new ami(this));
        return this.k;
    }

    @Override // defpackage.aiu
    public final void e(List list) {
    }

    @Override // defpackage.aiu
    public final void f(List list) {
        agr a = agr.a();
        String.format("Constraints changed for %s", list);
        a.d(new Throwable[0]);
        synchronized (this.h) {
            this.i = true;
        }
    }

    @Override // androidx.work.ListenableWorker
    public final boolean g() {
        ListenableWorker listenableWorker = this.j;
        return listenableWorker != null && listenableWorker.g();
    }

    public final void h() {
        this.k.e(ex.f());
    }

    public final void i() {
        this.k.e(ex.g());
    }
}
