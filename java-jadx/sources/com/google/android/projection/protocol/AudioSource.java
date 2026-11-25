package com.google.android.projection.protocol;

import defpackage.aum;
import defpackage.aun;
import defpackage.cli;
import defpackage.clk;
import defpackage.csz;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public class AudioSource implements AudioSourceCallbacks, clk {
    public volatile boolean a = false;
    private final cli b;
    private long mNativeAudioSource;

    public AudioSource(cli cliVar) {
        this.b = cliVar;
    }

    private native int nativeInit(int i, long j, int i2);

    private native void nativeShutdown();

    @Override // defpackage.clw
    public final long a() {
        return this.mNativeAudioSource;
    }

    @Override // com.google.android.projection.protocol.AudioSourceCallbacks
    public final void ackCallback(int i, int i2) {
        cli cliVar = this.b;
        csz.b.y(TimeUnit.SECONDS);
        ((aun) cliVar).e.release(i2);
    }

    @Override // defpackage.clw
    public final void b() {
        this.a = true;
        nativeShutdown();
    }

    @Override // defpackage.clk
    public final boolean c(int i, long j) {
        return nativeInit(i, j, 1) == 0;
    }

    @Override // com.google.android.projection.protocol.AudioSourceCallbacks
    public final int microphoneRequestCallback(boolean z, boolean z2, boolean z3, int i) {
        cli cliVar = this.b;
        if (z) {
            aun aunVar = (aun) cliVar;
            aunVar.e = new Semaphore(i);
            if (!aunVar.c.isAlive()) {
                aunVar.c.start();
            }
            aum aumVar = aunVar.c;
            synchronized (aumVar.a) {
                aumVar.b = false;
                aumVar.a.notifyAll();
            }
        } else {
            aum aumVar2 = ((aun) cliVar).c;
            synchronized (aumVar2.a) {
                aumVar2.b = true;
            }
        }
        aun aunVar2 = (aun) cliVar;
        int i2 = aunVar2.d;
        aunVar2.d = i2 + 1;
        return i2;
    }

    public native void nativeSend(long j, byte[] bArr);

    public native void nativeSetConfig(int i, int i2, int i3);
}
