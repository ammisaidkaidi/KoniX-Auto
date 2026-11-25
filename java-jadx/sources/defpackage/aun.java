package defpackage;

import android.media.AudioRecord;
import com.google.android.projection.protocol.AudioSource;
import defpackage.aum;
import defpackage.aun;
import java.util.concurrent.Semaphore;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aun implements cli {
    public static final csz a = csz.g("com/google/android/apps/auto/aareceiver/audio/MicrophoneRecorder");
    public static final int b = Math.max(AudioRecord.getMinBufferSize(16000, 16, 2) * 4, 8192);
    public Semaphore e;
    public aum c = new aum(this);
    public int d = 0;
    public final AudioSource f = new AudioSource(this);

    public aun(zn znVar) {
        znVar.b(new zj() { // from class: com.google.android.apps.auto.aareceiver.audio.MicrophoneRecorder$1
            @Override // defpackage.zj
            public final void a() {
                aun.this.f.nativeSetConfig(16000, 16, 1);
            }

            @Override // defpackage.zj
            public final void b() {
                aun aunVar = aun.this;
                aum aumVar = aunVar.c;
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

            @Override // defpackage.zj
            public final /* synthetic */ void c() {
            }

            @Override // defpackage.zj
            public final /* synthetic */ void d() {
            }

            @Override // defpackage.zj
            public final /* synthetic */ void e() {
            }

            @Override // defpackage.zj
            public final /* synthetic */ void f() {
            }
        });
    }
}
