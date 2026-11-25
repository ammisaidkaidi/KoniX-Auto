package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.workers.DiagnosticsWorker;
import defpackage.agr;
import defpackage.agx;
import defpackage.ahi;
import defpackage.ahx;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class DiagnosticsReceiver extends BroadcastReceiver {
    private static final String a = agr.b("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        agr.a().d(new Throwable[0]);
        try {
            ahx c = ahx.c(context);
            List singletonList = Collections.singletonList(new agx(DiagnosticsWorker.class).a());
            if (singletonList.isEmpty()) {
                throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
            }
            new ahi(c, null, singletonList).M();
        } catch (IllegalStateException e) {
            agr.a();
            agr.e(a, "WorkManager is not initialized", e);
        }
    }
}
