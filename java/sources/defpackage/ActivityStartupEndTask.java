package defpackage;

import android.os.SystemClock;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class ActivityStartupEndTask implements Runnable {
    public final /* synthetic */ StartupActivityLifecycleTracker a;
    private final /* synthetic */ int b;

    public /* synthetic */ bzu(StartupActivityLifecycleTracker bzyVar, int i) {
        this.b = i;
        this.a = bzyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                StartupDrawListener.c(this.a);
                break;
            case 1:
                StartupDrawListener.b(this.a);
                break;
            case 2:
                StartupActivityLifecycleTracker bzyVar = this.a;
                GoogleSignatureVerifier.f();
                if (bzyVar.b.i == 0) {
                    bzyVar.b.i = SystemClock.elapsedRealtime();
                    bzyVar.b.l.j = true;
                    break;
                }
                break;
            default:
                StartupActivityLifecycleTracker bzyVar2 = this.a;
                GoogleSignatureVerifier.f();
                if (bzyVar2.b.h == 0) {
                    bzyVar2.b.h = SystemClock.elapsedRealtime();
                    bzyVar2.b.l.i = true;
                    break;
                }
                break;
        }
    }
}
