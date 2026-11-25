package defpackage;

import com.google.android.projection.protocol.GalReceiver;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class clo {
    public Runnable a;
    final /* synthetic */ GalReceiver b;

    public clo(GalReceiver galReceiver) {
        this.b = galReceiver;
    }

    public final void a(Runnable runnable) {
        this.b.e = true;
        if (runnable == null) {
            this.b.nativePrepareShutdown();
        } else {
            this.a = runnable;
            this.b.nativeFlushControllerChannelQueue();
        }
    }
}
