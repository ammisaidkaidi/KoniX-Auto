package com.google.android.projection.protocol;

import defpackage.MicrophoneRecorderThread;
import com.google.android.apps.auto.aareceiver.audio.MicrophoneRecorder;
import defpackage.GalServiceCallback;
import defpackage.GalServiceEndpoint;
import defpackage.FloggerLoggerFactory;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public class AudioSource implements AudioSourceCallbacks, clk {
    public volatile boolean a = false;
    private final GalServiceCallback b;
    private long mNativeAudioSource;

    public AudioSource(GalServiceCallback cliVar) {
        this.b = cliVar;
    }

    private native int nativeInit(int i, long j, int i2);

    private native void nativeShutdown();

    @Override // defpackage.FrameTimingCallback
    public final long a() {
        return this.mNativeAudioSource;
    }

    @Override // com.google.android.projection.protocol.AudioSourceCallbacks
    public final void ackCallback(int i, int i2) {
        GalServiceCallback cliVar = this.b;
        FloggerLoggerFactory.b.y(TimeUnit.SECONDS);
        ((MicrophoneRecorder) cliVar).e.release(i2);
    }

    @Override // defpackage.FrameTimingCallback
    public final void b() {
        this.a = true;
        nativeShutdown();
    }

    @Override // defpackage.GalServiceEndpoint
    public final boolean c(int i, long j) {
        return nativeInit(i, j, 1) == 0;
    }

    @Override // com.google.android.projection.protocol.AudioSourceCallbacks
    public final int microphoneRequestCallback(boolean z, boolean z2, boolean z3, int i) {
        GalServiceCallback cliVar = this.b;
        if (z) {
            MicrophoneRecorder aunVar = (MicrophoneRecorder) cliVar;
            aunVar.e = new Semaphore(i);
            if (!aunVar.c.isAlive()) {
                aunVar.c.start();
            }
            MicrophoneRecorderThread aumVar = aunVar.c;
            synchronized (aumVar.a) {
                aumVar.b = false;
                aumVar.a.notifyAll();
            }
        } else {
            MicrophoneRecorderThread aumVar2 = ((MicrophoneRecorder) cliVar).c;
            synchronized (aumVar2.a) {
                aumVar2.b = true;
            }
        }
        MicrophoneRecorder aunVar2 = (MicrophoneRecorder) cliVar;
        int i2 = aunVar2.d;
        aunVar2.d = i2 + 1;
        return i2;
    }

    public native void nativeSend(long j, byte[] bArr);

    public native void nativeSetConfig(int i, int i2, int i3);
}
