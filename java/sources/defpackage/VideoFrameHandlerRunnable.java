package defpackage;

import android.media.MediaCodec;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class VideoFrameHandlerRunnable implements Runnable {
    public final /* synthetic */ VideoFrameHandler a;
    private final /* synthetic */ int b;

    public /* synthetic */ bgv(VideoFrameHandler bgyVar, int i) {
        this.b = i;
        this.a = bgyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                VideoFrameHandler bgyVar = this.a;
                try {
                    bgyVar.e = bgyVar.h.a();
                    return;
                } catch (Exception e) {
                    throw new RuntimeException(ProtoFlagValueMessage);
                }
            default:
                MediaCodec mediaCodec = this.a.e.b;
                mediaCodec.stop();
                mediaCodec.release();
                return;
        }
    }
}
