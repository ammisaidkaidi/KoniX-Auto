package com.google.android.projection.protocol;

import android.os.Handler;
import android.os.Message;
import com.google.android.apps.auto.aareceiver.audio.AudioSinkManager;
import com.google.android.apps.auto.aareceiver.audio.AudioUtils;
import defpackage.GalChannelCallback;
import defpackage.GalServiceEndpoint;
import defpackage.ParameterizedLoggerApi;
import defpackage.InstantTimeUtils;
import j$.time.Instant;
import j$.util.Map;
import j$.util.function.BiConsumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public class AudioSink implements AudioSinkCallbacks, clk {
    private final GalChannelCallback a;
    private long mNativeAudioSink;

    public AudioSink(GalChannelCallback clhVar) {
        this.a = clhVar;
    }

    private native int nativeInit(int i, long j);

    private native void nativeSetMaxUnackedFrames(int i);

    private native void nativeShutdown();

    @Override // defpackage.FrameTimingCallback
    public final long a() {
        return this.mNativeAudioSink;
    }

    @Override // defpackage.FrameTimingCallback
    public final void b() {
        AudioSinkManager aujVar = (AudioSinkManager) this.a;
        if (aujVar.j != null && aujVar.b.isAlive() && aujVar.j.sendEmptyMessage(6)) {
            aujVar.b.quitSafely();
        } else {
            ((ParameterizedLoggerApi) AudioSinkManager.a.c().h("com/google/android/apps/auto/aareceiver/audio/AudioSinkManager", "onShutdown", 208, "AudioSinkManager.java")).B(aujVar.j, aujVar.b.isAlive());
        }
        nativeShutdown();
    }

    @Override // defpackage.GalServiceEndpoint
    public final boolean c(int i, long j) {
        boolean z = nativeInit(i, j) == 0;
        nativeSetMaxUnackedFrames(24);
        return z;
    }

    @Override // com.google.android.projection.protocol.AudioSinkCallbacks
    public final int codecConfigCallback(byte[] bArr) {
        ((AudioSinkManager) this.a).j.obtainMessage(3, bArr).sendToTarget();
        return 0;
    }

    @Override // com.google.android.projection.protocol.AudioSinkCallbacks
    public final void dataAvailableCallback(int i, long j, byte[] bArr) {
        GalChannelCallback clhVar = this.a;
        AudioUtils.f(((AudioSinkManager) clhVar).j, InstantTimeUtils.a(Instant.now()), bArr).sendToTarget();
    }

    public native void nativeAckFramesNew(int i, long[] jArr);

    public native void nativeAddSupportedConfiguration(int i, int i2, int i3);

    public native void nativeSendUnderflowNotification(int i);

    public native void nativeSetAudioType(int i);

    public native void nativeSetCodecType(int i);

    @Override // com.google.android.projection.protocol.AudioSinkCallbacks
    public final void playbackStartCallback(int i) {
        ((AudioSinkManager) this.a).j.obtainMessage(2, i, 0).sendToTarget();
    }

    @Override // com.google.android.projection.protocol.AudioSinkCallbacks
    public final void playbackStopCallback(int i) {
        ((AudioSinkManager) this.a).j.obtainMessage(5, i, 0).sendToTarget();
    }

    @Override // com.google.android.projection.protocol.AudioSinkCallbacks
    public final int setupCallback(int i) {
        final AudioSinkManager aujVar = (AudioSinkManager) this.a;
        aujVar.b.start();
        aujVar.j = new Handler(aujVar.b.getLooper(), new Handler.Callback() { // from class: auf
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                atq atqVar;
                AudioSinkManager aujVar2 = AudioSinkManager.this;
                switch (message.what) {
                    case 1:
                        Map.EL.forEach(aujVar2.c, new aug(aujVar2, 1));
                        aujVar2.k = true;
                        return true;
                    case 2:
                        int i2 = message.arg1;
                        aujVar2.l = i2;
                        int i3 = aujVar2.o;
                        if (i3 == 0) {
                            throw null;
                        }
                        switch (i3) {
                            case 1:
                                if (!aujVar2.g.C) {
                                    atqVar = (atq) aujVar2.c.get(auc.GUIDANCE);
                                    break;
                                } else {
                                    atqVar = (atq) aujVar2.c.get(auc.VOICE_RECOGNITION);
                                    break;
                                }
                            case 2:
                            default:
                                throw new AssertionError();
                            case 3:
                                atqVar = (atq) aujVar2.c.get(auc.MEDIA);
                                break;
                        }
                        aujVar2.m = atqVar;
                        aujVar2.i.a(aujVar2.m.i.b);
                        aujVar2.n.put(Integer.valueOf(i2), aujVar2.m);
                        aujVar2.m.g();
                        return true;
                    case 3:
                        final byte[] bArr = (byte[]) message.obj;
                        int length = bArr.length;
                        Map.EL.forEach(aujVar2.c, new BiConsumer() { // from class: auh
                            @Override // j$.util.function.BiConsumer
                            public final void accept(Object obj, Object obj2) {
                                ((atq) obj2).b(bArr);
                            }

                            @Override // j$.util.function.BiConsumer
                            public final /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                                return BiConsumer.CC.$default$andThen(this, biConsumer);
                            }
                        });
                        return true;
                    case 4:
                        long a = AudioUtils.a(message);
                        byte[] bArr2 = (byte[]) message.obj;
                        atq atqVar2 = aujVar2.m;
                        if (atqVar2 == null) {
                            ((ParameterizedLoggerApi) AudioSinkManager.a.b().h("com/google/android/apps/auto/aareceiver/audio/AudioSinkManager", "handleAudioData", 282, "AudioSinkManager.java")).n("Audio data arrived while decoder is not active!");
                            return true;
                        }
                        atqVar2.c(bArr2, a);
                        aujVar2.f.nativeAckFramesNew(aujVar2.l, new long[]{a});
                        return true;
                    case 5:
                        int i4 = message.arg1;
                        java.util.Map map = aujVar2.n;
                        Integer valueOf = Integer.valueOf(i4);
                        if (!map.containsKey(valueOf)) {
                            ((ParameterizedLoggerApi) AudioSinkManager.a.c().h("com/google/android/apps/auto/aareceiver/audio/AudioSinkManager", "handleStop", 304, "AudioSinkManager.java")).o("Decoder for session=%d couldn't be found and stopped", i4);
                            return true;
                        }
                        atq atqVar3 = (atq) aujVar2.n.remove(valueOf);
                        if (atqVar3 != null) {
                            atqVar3.h(false);
                            aujVar2.i.b(atqVar3.i.b);
                            if (atqVar3.equals(aujVar2.m)) {
                                aujVar2.m = null;
                                return true;
                            }
                            ((ParameterizedLoggerApi) AudioSinkManager.a.b().h("com/google/android/apps/auto/aareceiver/audio/AudioSinkManager", "handleStop", 319, "AudioSinkManager.java")).n("Stopped decoder is different than active decoder.");
                        }
                        return true;
                    case 6:
                        aujVar2.a();
                        return true;
                    default:
                        return false;
                }
            }
        });
        aujVar.j.sendEmptyMessage(1);
        return 0;
    }
}
