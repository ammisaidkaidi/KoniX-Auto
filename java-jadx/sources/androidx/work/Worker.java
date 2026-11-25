package androidx.work;

import android.content.Context;
import defpackage.agz;
import defpackage.ame;
import defpackage.dag;
import defpackage.ex;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class Worker extends ListenableWorker {
    public ame f;

    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @Override // androidx.work.ListenableWorker
    public final dag b() {
        this.f = ame.h();
        d().execute(new agz(this));
        return this.f;
    }

    public abstract ex h();
}
