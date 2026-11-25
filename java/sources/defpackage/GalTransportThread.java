package defpackage;

import android.os.Process;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class GalTransportThread extends Thread {
    final GalTransportConnection a;
    final /* synthetic */ GalTransportSessionController b;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public GalTransportThread(GalTransportSessionController clvVar, String str, GalTransportConnection clzVar) {
        super(str);
        this.b = clvVar;
        this.a = clzVar;
    }

    public abstract void a();

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            Process.setThreadPriority(-19);
            a();
        } finally {
            this.b.a(this);
        }
    }
}
