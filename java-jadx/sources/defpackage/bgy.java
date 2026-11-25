package defpackage;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.Trace;
import android.view.Surface;
import com.google.android.projection.common.BufferPool;
import com.google.android.projection.protocol.VideoSink;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PG */
/* loaded from: classes.dex */
public final class bgy extends MediaCodec.Callback implements Handler.Callback {
    public final Surface d;
    public bgu e;
    public final Handler f;
    public final bgp h;
    private final HandlerThread i;
    private final bhd j;
    private final bfh k;
    public final Queue a = new ArrayDeque();
    public final Queue b = new ArrayDeque();
    public final Queue c = new ArrayDeque();
    public boolean g = false;

    public bgy(Surface surface, bfh bfhVar, bgp bgpVar, bhd bhdVar) {
        bgpVar.getClass();
        this.h = bgpVar;
        this.j = bhdVar;
        this.d = surface;
        this.k = bfhVar;
        HandlerThread handlerThread = new HandlerThread("VideoFrameHandler", -10);
        this.i = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.f = handler;
        handler.post(new bgv(this, 0));
    }

    final void a() {
        this.f.post(new bgv(this, 1));
        this.i.quitSafely();
        hi.k(this.i);
    }

    public final boolean b(MediaCodec mediaCodec, cma cmaVar, int i) {
        boolean z;
        if (this.j != null) {
            this.j.b(cmaVar.a.limit(), cmaVar.c);
        }
        ByteBuffer inputBuffer = mediaCodec.getInputBuffer(i);
        ByteBuffer slice = cmaVar.a.slice();
        if (slice.remaining() > inputBuffer.remaining()) {
            slice.limit(inputBuffer.remaining());
            z = false;
        } else {
            z = true;
        }
        inputBuffer.put(slice);
        ByteBuffer byteBuffer = cmaVar.a;
        byteBuffer.position(byteBuffer.position() + inputBuffer.position());
        if (bgz.b) {
            Trace.beginSection("queueInputBuffer");
        }
        mediaCodec.queueInputBuffer(i, 0, inputBuffer.position(), cmaVar.c, 0);
        if (bgz.b) {
            Trace.endSection();
        }
        if (z) {
            ByteBuffer byteBuffer2 = cmaVar.a;
            BufferPool bufferPool = BufferPool.a;
            int capacity = byteBuffer2.capacity();
            List a = bufferPool.a(capacity);
            int i2 = capacity <= 512 ? 120 : capacity <= 16384 ? 20 : 10;
            synchronized (a) {
                if (a.size() < i2) {
                    a.add(byteBuffer2);
                } else {
                    a.set(Math.abs(System.identityHashCode(byteBuffer2)) % i2, byteBuffer2);
                }
            }
            cmaVar.a = null;
            csz.b.y(TimeUnit.SECONDS);
        }
        return z;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        return false;
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        ((csx) ((csx) bgz.a.b().g(codecException)).h("com/google/android/apps/auto/aareceiver/video/ProjectionRenderer$VideoFrameHandler", "onError", 229, "ProjectionRenderer.java")).n("Internal codec error");
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
        cma cmaVar = (cma) this.a.peek();
        if (cmaVar == null) {
            this.b.offer(Integer.valueOf(i));
        } else if (b(mediaCodec, cmaVar, i)) {
            this.a.remove();
            this.c.offer(cmaVar);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
        csz cszVar = bgz.a;
        csz.b.y(TimeUnit.SECONDS);
        long j = bufferInfo.presentationTimeUs;
        if (!this.c.isEmpty()) {
            int size = this.c.size();
            if (size == 0) {
                ((csx) bgz.a.b().h("com/google/android/apps/auto/aareceiver/video/ProjectionRenderer$VideoFrameHandler", "ackFrames", 373, "ProjectionRenderer.java")).n("Missing frame(s) to ack!");
            } else {
                cma cmaVar = (cma) this.c.peek();
                this.c.clear();
                bfh bfhVar = this.k;
                int i2 = cmaVar.b;
                bfi bfiVar = bfhVar.a;
                azy azyVar = bfiVar.v;
                ckb o = bfiVar.o();
                bbl bblVar = azyVar.i.h;
                if (bblVar != null) {
                    VideoSink videoSink = (VideoSink) bblVar.p.get(o);
                    Trace.beginSection("ackFrames");
                    videoSink.nativeAckFrames(i2, size);
                    Trace.endSection();
                    azyVar.b.a++;
                }
            }
        }
        bhd bhdVar = this.j;
        if (bhdVar != null) {
            bhdVar.a(bufferInfo.presentationTimeUs);
        }
        if (bgz.b) {
            Trace.beginSection("releaseOutputBuffer");
        }
        mediaCodec.releaseOutputBuffer(i, 0L);
        if (bgz.b) {
            Trace.endSection();
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        csz cszVar = bgz.a;
    }

    public final String toString() {
        String simpleName = getClass().getSimpleName();
        String valueOf = String.valueOf(this.d);
        boolean isValid = this.d.isValid();
        boolean z = this.g;
        boolean isAlive = this.i.isAlive();
        StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 89 + String.valueOf(valueOf).length());
        sb.append(simpleName);
        sb.append("{ surface: ");
        sb.append(valueOf);
        sb.append(", surface.isValid: ");
        sb.append(isValid);
        sb.append(", codecConfigured: ");
        sb.append(z);
        sb.append(", handlerThread.isAlive: ");
        sb.append(isAlive);
        return sb.toString();
    }
}
