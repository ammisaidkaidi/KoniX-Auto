package com.google.android.apps.auto.aareceiver.audio;

import android.content.Context;
import android.media.AudioFormat;
import android.os.Handler;
import android.os.HandlerThread;
import com.google.android.projection.protocol.AudioSink;
import defpackage.AudioFocusRequestBuilder;
import com.google.android.apps.auto.aareceiver.audio.AudioSinkManager;
import j$.util.Collection;
import j$.util.Map;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AudioSinkManager implements GalChannelCallback, aud {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/audio/AudioSinkManager");
    public final HandlerThread b;
    public final Map c;
    public final Context d;
    public final ReleaseChannelEnum e;
    public final ProjectionSession g;
    public final TimeSource h;
    public final AudioFocusLossHandlerBase i;
    public Handler j;
    public boolean k;
    public int l;
    public AudioFocusRequestBuilder m;
    public final int o;
    public final int p;
    private final String q;
    public final Map n = new HashMap();
    public final AudioSink f = new AudioSink(this);

    public AudioSinkManager(Map map, int i, AudioFormat audioFormat, ProjectionSession bblVar, TimeSource cxzVar, AudioFocusLossHandlerBase attVar, Context context, ReleaseChannelEnum dgqVar) {
        String str;
        this.o = i;
        this.g = bblVar;
        this.h = cxzVar;
        this.i = attVar;
        this.c = map;
        this.d = context;
        this.e = dgqVar;
        Map.EL.forEach(map, new AudioSinkManagerSetupConsumer(this, 0));
        int i2 = ((AudioFocusRequestBuilder) Collection.EL.stream(map.values()).findAny().get()).j;
        this.p = i2;
        String d = AudioUtils.d(GalAudioStreamTypes.b(NavInstructionTypeEnum), "AUDIO_STREAM_");
        switch (i2) {
            case 1:
                str = "MEDIA_CODEC_AUDIO_PCM";
                break;
            case 2:
                str = "MEDIA_CODEC_AUDIO_AAC_LC";
                break;
            default:
                str = "null";
                break;
        }
        if (i2 == 0) {
            throw null;
        }
        String d2 = AudioUtils.d(str, "MEDIA_CODEC_AUDIO_");
        int sampleRate = audioFormat.getSampleRate();
        StringBuilder sb = new StringBuilder(String.valueOf(ProtoMsgIntStringInt).length() + 13 + String.valueOf(d2).length());
        StaggeredGridLayoutParams.append(ProtoMsgIntStringInt);
        StaggeredGridLayoutParams.append("/");
        StaggeredGridLayoutParams.append(d2);
        StaggeredGridLayoutParams.append("/");
        StaggeredGridLayoutParams.append(sampleRate);
        String sb2 = StaggeredGridLayoutParams.toString();
        this.q = sb2;
        String valueOf = String.valueOf(sb2);
        this.b = new HandlerThread(valueOf.length() != 0 ? "AudioThread-".concat(valueOf) : new String("AudioThread-"), -16);
        bblVar.F.b(new ProjectionSessionLifecycleListener_zj() { // from class: com.google.android.apps.auto.aareceiver.audio.AudioSinkManager$1
            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final void a() {
                AudioSinkManager aujVar = AudioSinkManager.this;
                AudioFormat audioFormat2 = ((AudioFocusRequestBuilder) Collection.EL.stream(aujVar.c.values()).findAny().get()).i.c;
                aujVar.f.nativeAddSupportedConfiguration(audioFormat2.getSampleRate(), 16, audioFormat2.getChannelCount());
                AudioSink audioSink = aujVar.f;
                int i3 = aujVar.p;
                if (i3 == 0) {
                    throw null;
                }
                audioSink.nativeSetCodecType(i3);
                AudioSink audioSink2 = aujVar.f;
                int i4 = aujVar.o;
                if (i4 == 0) {
                    throw null;
                }
                audioSink2.nativeSetAudioType(i4);
            }

            /* JADX WARN: Removed duplicated region for block: B:21:0x003f  */
            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final void b() {
                AudioSinkManager aujVar = AudioSinkManager.this;
                aujVar.b.quitSafely();
                HandlerThread handlerThread = aujVar.b;
                TimeUnit timeUnit = TimeUnit.SECONDS;
                handlerThread.getClass();
                boolean z = true;
                boolean z2 = false;
                try {
                    long nanos = timeUnit.toNanos(1L);
                    long nanoTime = System.nanoTime() + nanos;
                    while (true) {
                        try {
                            TimeUnit.NANOSECONDS.timedJoin(handlerThread, nanos);
                            break;
                        } catch (InterruptedException e) {
                            try {
                                nanos = nanoTime - System.nanoTime();
                                z2 = true;
                            } catch (Throwable th) {
                                th = th;
                                if (IcuMessageFormat) {
                                    Thread.currentThread().interrupt();
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            z = z2;
                            if (IcuMessageFormat) {
                            }
                            throw th;
                        }
                    }
                    if (z2) {
                        Thread.currentThread().interrupt();
                    }
                    aujVar.a();
                } catch (Throwable th3) {
                    th = th3;
                    z = false;
                }
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void c() {
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void d() {
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void e() {
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void f() {
            }
        });
    }

    public final void a() {
        Map.EL.forEach(this.n, aui.a);
        this.n.clear();
        this.m = null;
        if (this.k) {
            Map.EL.forEach(this.c, aui.b);
            this.k = false;
        }
    }
}
