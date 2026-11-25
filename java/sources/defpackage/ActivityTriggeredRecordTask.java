package defpackage;

import android.app.Activity;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ActivityTriggeredRecordTask implements ActivityEventListenerC {
    final /* synthetic */ ListeningScheduledExecutorService a;
    final /* synthetic */ CancellableScheduledFuture b;

    public ActivityTriggeredRecordTask(CancellableScheduledFuture byyVar, ListeningScheduledExecutorService daiVar) {
        this.b = byyVar;
        this.a = daiVar;
    }

    @Override // defpackage.ActivityEventListenerC
    public final void c(Activity activity) {
        final String simpleName = activity.getClass().getSimpleName();
        this.b.a.a(3, simpleName);
        this.b.a();
        this.b.c = this.a.c(new Runnable() { // from class: byt
            @Override // java.lang.Runnable
            public final void run() {
                ActivityTriggeredRecordTask byuVar = ActivityTriggeredRecordTask.this;
                byuVar.b.a.a(5, simpleName);
            }
        }, 10L, TimeUnit.SECONDS);
    }
}
