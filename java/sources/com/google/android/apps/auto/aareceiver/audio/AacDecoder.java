package com.google.android.apps.auto.aareceiver.audio;

import android.media.AudioFormat;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AacDecoder extends AudioFocusRequestBuilder {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/audio/AacDecoder");
    final HandlerThread b;
    public final Semaphore c;
    public final ConditionVariable d;
    public final MediaFormat e;
    public MediaCodec f;
    public boolean g;
    public final Queue h;
    private final String k;
    private Handler l;
    private final MediaCodec.Callback m;

    public AacDecoder(AudioPlayer aueVar) {
        super(2, aueVar);
        this.c = new Semaphore(0);
        this.d = new ConditionVariable(true);
        this.g = false;
        this.h = new ArrayDeque();
        this.m = new AacDecoderCodecCallback(this);
        String aucVar = aueVar.b.toString();
        this.k = aucVar;
        String valueOf = String.valueOf(aucVar);
        this.b = new HandlerThread(valueOf.length() != 0 ? "AacDecoder-".concat(valueOf) : new String("AacDecoder-"), -17);
        AudioFormat audioFormat = aueVar.c;
        MediaFormat createAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", audioFormat.getSampleRate(), audioFormat.getChannelCount());
        this.e = createAudioFormat;
        createAudioFormat.setInteger("profile", 2);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final boolean j() {
        boolean tryAcquire;
        Semaphore semaphore = this.c;
        boolean z = false;
        try {
            long nanos = TimeUnit.MILLISECONDS.toNanos(500L);
            long nanoTime = System.nanoTime() + nanos;
            while (true) {
                try {
                    tryAcquire = semaphore.tryAcquire(1, nanos, TimeUnit.NANOSECONDS);
                    break;
                } catch (InterruptedException e) {
                    try {
                        nanos = nanoTime - System.nanoTime();
                        z = true;
                    } catch (Throwable th) {
                        th = th;
                        z = true;
                        if (IcuMessageFormat) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (IcuMessageFormat) {
                    }
                    throw th;
                }
            }
            if (IcuMessageFormat) {
                Thread.currentThread().interrupt();
            }
            if (!tryAcquire) {
                ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/audio/AacDecoder", "tryAcquireInputBufferSemaphoreWithTimeout", 338, "AacDecoder.java")).C(this.g, this.b.isInterrupted());
            }
            return tryAcquire;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final void a() {
        this.c.drainPermits();
        this.h.clear();
    }

    @Override // defpackage.AudioFocusRequestBuilder
    public final void b(byte[] bArr) {
        this.l.obtainMessage(3, bArr).sendToTarget();
    }

    @Override // defpackage.AudioFocusRequestBuilder
    public final void c(byte[] bArr, long j) {
        if (j()) {
            AudioUtils.f(this.l, j, bArr).sendToTarget();
        } else {
            ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/audio/AacDecoder", "decodeAudio", 141, "AacDecoder.java")).n("Dropping audio frame");
        }
    }

    public final void d() {
        a();
        this.f.setCallback(this.m, this.l);
        this.f.configure(this.e, (Surface) null, (MediaCrypto) null, 0);
        this.f.start();
        this.g = true;
        this.i.d();
    }

    public final void e(boolean z) {
        this.f.stop();
        this.g = false;
        a();
        this.i.e(IcuMessageFormat);
        this.d.open();
    }

    @Override // defpackage.AudioFocusRequestBuilder
    public final void f() {
        this.b.start();
        Handler handler = new Handler(this.b.getLooper(), new Handler.Callback() { // from class: atn
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                AacDecoder atpVar = AacDecoder.this;
                switch (message.what) {
                    case 1:
                        atpVar.i.c();
                        try {
                            atpVar.f = MediaCodec.createDecoderByType("audio/mp4a-latm");
                            return true;
                        } catch (IOException e) {
                            throw new RuntimeException(ProtoFlagValueMessage);
                        }
                    case 2:
                        if (atpVar.g || !atpVar.e.containsKey("csd-0")) {
                            return true;
                        }
                        atpVar.d();
                        return true;
                    case 3:
                        byte[] bArr = (byte[]) message.obj;
                        if (atpVar.g) {
                            atpVar.e(true);
                        }
                        atpVar.e.setByteBuffer("csd-0", ByteBuffer.wrap(bArr));
                        atpVar.d();
                        return true;
                    case 4:
                        byte[] bArr2 = (byte[]) message.obj;
                        long a2 = AudioUtils.a(message);
                        if (!atpVar.g || atpVar.h.isEmpty()) {
                            atpVar.h.isEmpty();
                            return true;
                        }
                        int intValue = ((Integer) atpVar.h.remove()).intValue();
                        atpVar.f.getInputBuffer(intValue).put(bArr2);
                        atpVar.f.queueInputBuffer(intValue, 0, bArr2.length, a2, 0);
                        return true;
                    case 5:
                        if (message.arg1 != 0) {
                            atpVar.e(true);
                            return true;
                        }
                        atpVar.f.queueInputBuffer(((Integer) atpVar.h.remove()).intValue(), 0, 0, 0L, 4);
                        return true;
                    case 6:
                        atpVar.f.release();
                        atpVar.g = false;
                        atpVar.a();
                        atpVar.d.open();
                        atpVar.f = null;
                        atpVar.i.f();
                        return true;
                    default:
                        return false;
                }
            }
        });
        this.l = handler;
        handler.sendEmptyMessage(1);
    }

    @Override // defpackage.AudioFocusRequestBuilder
    public final void g() {
        this.d.block();
        this.l.sendEmptyMessage(2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.os.Handler] */
    /* JADX WARN: Type inference failed for: r5v1, types: [int] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    @Override // defpackage.AudioFocusRequestBuilder
    public final void h(boolean z) {
        ?? r5 = z;
        if (!z) {
            r5 = z;
            if (!j()) {
                ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/audio/AacDecoder", "stop", 153, "AacDecoder.java")).n("Force audio flushing");
                r5 = 1;
            }
        }
        this.d.close();
        this.l.obtainMessage(5, r5, 0).sendToTarget();
    }

    @Override // defpackage.AudioFocusRequestBuilder
    public final void i() {
        this.l.sendEmptyMessage(6);
        this.b.quitSafely();
        ViewCompatApi19Statics.k(this.b);
    }
}
