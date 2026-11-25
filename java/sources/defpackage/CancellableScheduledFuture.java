package defpackage;

import java.util.concurrent.ScheduledFuture;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CancellableScheduledFuture {
    private static final JankFrameCallback d = new JankFrameCallback() { // from class: bys
        @Override // defpackage.JankFrameCallback
        public final void a(int i, String str) {
        }
    };
    public volatile JankFrameCallback a = d;
    public ScheduledFuture b;
    public ScheduledFuture c;

    public CancellableScheduledFuture(PrimesLifecycleRegistrar bvhVar, ListeningScheduledExecutorService daiVar) {
        bvhVar.a(new ActivityTriggeredRecordTask(this, daiVar));
        bvhVar.a(new ActivityTriggeredRecordTaskB(this, daiVar));
    }

    public final void a() {
        ScheduledFuture scheduledFuture = this.b;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.b = null;
        }
        ScheduledFuture scheduledFuture2 = this.c;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(true);
            this.c = null;
        }
    }
}
