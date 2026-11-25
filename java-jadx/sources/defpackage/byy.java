package defpackage;

import java.util.concurrent.ScheduledFuture;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class byy {
    private static final byx d = new byx() { // from class: bys
        @Override // defpackage.byx
        public final void a(int i, String str) {
        }
    };
    public volatile byx a = d;
    public ScheduledFuture b;
    public ScheduledFuture c;

    public byy(bvh bvhVar, dai daiVar) {
        bvhVar.a(new byu(this, daiVar));
        bvhVar.a(new byw(this, daiVar));
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
