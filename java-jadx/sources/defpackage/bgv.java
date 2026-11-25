package defpackage;

import android.media.MediaCodec;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class bgv implements Runnable {
    public final /* synthetic */ bgy a;
    private final /* synthetic */ int b;

    public /* synthetic */ bgv(bgy bgyVar, int i) {
        this.b = i;
        this.a = bgyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                bgy bgyVar = this.a;
                try {
                    bgyVar.e = bgyVar.h.a();
                    return;
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            default:
                MediaCodec mediaCodec = this.a.e.b;
                mediaCodec.stop();
                mediaCodec.release();
                return;
        }
    }
}
