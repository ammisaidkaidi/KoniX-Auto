package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import defpackage.WorkerResultSuccess;
import defpackage.GuavaPreconditionsSuppliersUtil;

/* compiled from: PG */
/* loaded from: classes.dex */
public class CombineContinuationsWorker extends Worker {
    public CombineContinuationsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @Override // androidx.work.Worker
    public final GuavaPreconditionsSuppliersUtil h() {
        return new WorkerResultSuccess(a());
    }
}
