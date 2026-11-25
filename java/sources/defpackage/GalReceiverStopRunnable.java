package defpackage;

import com.google.android.projection.protocol.GalReceiver;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GalReceiverStopRunnable implements Runnable {
    final /* synthetic */ GalReceiver a;

    public GalReceiverStopRunnable(GalReceiver galReceiver) {
        this.a = galReceiver;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ProjectionSessionTransportCallback bbhVar = this.a.f;
        bbhVar.a.i.post(new SessionTransportFutureRunnable(bbhVar, 0, null));
    }
}
