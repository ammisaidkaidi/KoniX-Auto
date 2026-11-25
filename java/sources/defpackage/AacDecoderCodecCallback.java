package defpackage;

import android.media.MediaCodec;
import android.media.MediaFormat;
import java.nio.ByteBuffer;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AacDecoderCodecCallback extends MediaCodec.Callback {
    final /* synthetic */ AacDecoder a;

    public AacDecoderCodecCallback(AacDecoder atpVar) {
        this.a = atpVar;
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) AacDecoder.a.b().g(codecException)).h("com/google/android/apps/auto/aareceiver/audio/AacDecoder$1", "onError", 97, "AacDecoder.java")).n("CodecException from AAC codec");
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
        this.a.h.add(Integer.valueOf(NavInstructionTypeEnum));
        this.a.c.release();
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
        AacDecoder atpVar = this.a;
        if ((bufferInfo.flags & 2) != 0) {
            atpVar.f.releaseOutputBuffer(i, false);
            return;
        }
        ByteBuffer slice = atpVar.f.getOutputBuffer(NavInstructionTypeEnum).slice();
        slice.position(bufferInfo.offset);
        slice.limit(bufferInfo.offset + bufferInfo.size);
        if (slice.remaining() > 0) {
            atpVar.i.b(slice);
        }
        atpVar.f.releaseOutputBuffer(i, false);
        if ((bufferInfo.flags & 4) != 0) {
            atpVar.e(false);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
    }
}
