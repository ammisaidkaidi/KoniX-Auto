package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.workers.DiagnosticsWorker;
import defpackage.WorkLogger;
import defpackage.WorkRequestBuilder;
import defpackage.EnqueuedWorkLiveData;
import defpackage.WorkManagerImpl;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class DiagnosticsReceiver extends BroadcastReceiver {
    private static final String a = WorkLogger.b("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        WorkLogger.a().d(new Throwable[0]);
        try {
            WorkManagerImpl c = WorkManagerImpl.c(context);
            List singletonList = Collections.singletonList(new WorkRequestBuilder(DiagnosticsWorker.class).a());
            if (singletonList.isEmpty()) {
                throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
            }
            new EnqueuedWorkLiveData(c, null, singletonList).M();
        } catch (IllegalStateException e) {
            WorkLogger.a();
            WorkLogger.e(a, "WorkManager is not initialized", e);
        }
    }
}
