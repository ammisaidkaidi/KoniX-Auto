package defpackage;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.CountDownTimer;
import java.nio.ByteBuffer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aue {
    public static final csz a = csz.g("com/google/android/apps/auto/aareceiver/audio/AudioPlayer");
    public final auc b;
    public final AudioFormat c;
    public AudioTrack d;
    public aud e;
    public int f;
    final CountDownTimer g = new aub(this);
    private final AudioAttributes h;
    private final int i;
    private int j;

    public aue(auc aucVar, AudioFormat audioFormat) {
        this.b = aucVar;
        aucVar.name();
        AudioAttributes.Builder builder = new AudioAttributes.Builder();
        switch (aucVar) {
            case MEDIA:
                builder.setUsage(1);
                break;
            case GUIDANCE:
                builder.setUsage(12);
                builder.setContentType(1);
                break;
            case VOICE_RECOGNITION:
                builder.setUsage(16);
                builder.setContentType(0);
                break;
        }
        this.h = builder.build();
        this.c = new AudioFormat.Builder(audioFormat).setEncoding(2).build();
        int channelCount = (audioFormat.getSampleRate() == 16000 ? 1024 : 2048) * audioFormat.getChannelCount();
        int i = channelCount + channelCount;
        this.i = i + i;
    }

    public final int a() {
        return this.d.getAudioSessionId();
    }

    public final void b(ByteBuffer byteBuffer) {
        int write = this.d.write(byteBuffer, byteBuffer.remaining(), 0);
        if (write < 0) {
            ((csx) a.b().h("com/google/android/apps/auto/aareceiver/audio/AudioPlayer", "playAudio", 186, "AudioPlayer.java")).n("Error writing to AudioTrack");
            return;
        }
        int i = this.j;
        if (i > 0) {
            int i2 = i - write;
            this.j = i2;
            if (i2 <= 0) {
                this.j = 0;
                this.d.play();
            }
            if (byteBuffer.remaining() > 0) {
                byteBuffer.remaining();
                this.d.write(byteBuffer, byteBuffer.remaining(), 0);
            }
        }
    }

    public final void c() {
        if (this.d != null) {
            f();
        }
        int max = Math.max(this.i, AudioTrack.getMinBufferSize(this.c.getSampleRate(), this.c.getChannelMask(), this.c.getEncoding()));
        AudioAttributes audioAttributes = this.h;
        this.d = new AudioTrack.Builder().setAudioAttributes(audioAttributes).setAudioFormat(this.c).setBufferSizeInBytes(max + max).setTransferMode(1).setSessionId(0).setPerformanceMode(1).build();
    }

    public final void d() {
        this.j = this.i;
        this.f = this.d.getUnderrunCount();
        this.g.start();
    }

    public final void f() {
        e(true);
        this.d.release();
        this.d = null;
    }

    public final void e(boolean z) {
        if (z) {
            this.d.pause();
            this.d.flush();
        } else if (this.j > 0) {
            this.d.play();
            this.j = 0;
        }
        this.d.stop();
        this.g.cancel();
    }
}
