package com.google.android.apps.auto.aareceiver.audio;

import android.media.AudioRecord;
import com.google.android.projection.protocol.AudioSource;
import defpackage.MicrophoneRecorderThread;
import com.google.android.apps.auto.aareceiver.audio.MicrophoneRecorder;
import java.util.concurrent.Semaphore;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MicrophoneRecorder implements GalServiceCallback {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/audio/MicrophoneRecorder");
    public static final int b = Math.max(AudioRecord.getMinBufferSize(16000, 16, 2) * 4, 8192);
    public Semaphore e;
    public MicrophoneRecorderThread c = new MicrophoneRecorderThread(this);
    public int d = 0;
    public final AudioSource f = new AudioSource(this);

    public MicrophoneRecorder(LifecycleRegistry znVar) {
        znVar.b(new ProjectionSessionLifecycleListener_zj() { // from class: com.google.android.apps.auto.aareceiver.audio.MicrophoneRecorder$1
            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final void a() {
                MicrophoneRecorder.this.f.nativeSetConfig(16000, 16, 1);
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final void b() {
                MicrophoneRecorder aunVar = MicrophoneRecorder.this;
                MicrophoneRecorderThread aumVar = aunVar.c;
                if (aumVar != null) {
                    aumVar.c = true;
                    aumVar.b = true;
                    aumVar.interrupt();
                    synchronized (aumVar.a) {
                        aumVar.a.notifyAll();
                    }
                    try {
                        aumVar.join(1000L);
                    } catch (InterruptedException e) {
                    }
                    aunVar.c = null;
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
}
