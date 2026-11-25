package defpackage;

import android.media.AudioRecord;
import com.google.android.projection.protocol.AudioSource;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aum extends Thread {
    public final Object a = new Object();
    public volatile boolean b = true;
    public volatile boolean c = false;
    final /* synthetic */ aun d;

    public aum(aun aunVar) {
        this.d = aunVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        csz cszVar = aun.a;
        AudioRecord audioRecord = null;
        while (!this.c) {
            if (!this.b && audioRecord == null) {
                audioRecord = new AudioRecord(0, 16000, 16, 2, aun.b * 4);
                audioRecord.startRecording();
            }
            while (!this.b && audioRecord != null) {
                byte[] bArr = new byte[aun.b];
                int i = aun.b;
                while (i > 0 && !isInterrupted()) {
                    int read = audioRecord.read(bArr, aun.b - i, i);
                    if (read < 0) {
                        int i2 = aun.b;
                        StringBuilder sb = new StringBuilder(75);
                        sb.append("Error reading from AudioRecord ");
                        sb.append(read);
                        sb.append(" while trying to read ");
                        sb.append(i2 - i);
                        throw new RuntimeException(sb.toString());
                    }
                    i -= read;
                }
                if (!this.c) {
                    AudioSource audioSource = this.d.f;
                    if (!audioSource.a) {
                        audioSource.nativeSend(0L, bArr);
                    }
                    if (this.c) {
                        break;
                    }
                    try {
                        if (!this.d.e.tryAcquire(500L, TimeUnit.MILLISECONDS)) {
                            ((csx) aun.a.c().h("com/google/android/apps/auto/aareceiver/audio/MicrophoneRecorder$AudioSourceThread", "readDataFromMic", 153, "MicrophoneRecorder.java")).n("mic ACK timeout, move on");
                        }
                    } catch (InterruptedException e) {
                        ((csx) aun.a.b().h("com/google/android/apps/auto/aareceiver/audio/MicrophoneRecorder$AudioSourceThread", "readDataFromMic", 156, "MicrophoneRecorder.java")).n("Dropping audio frame.");
                    }
                } else {
                    break;
                }
            }
            if (this.b && audioRecord != null) {
                audioRecord.stop();
                audioRecord.release();
                audioRecord = null;
            }
            synchronized (this.a) {
                while (this.b && !this.c) {
                    try {
                        this.a.wait();
                    } catch (InterruptedException e2) {
                    }
                }
            }
        }
    }
}
