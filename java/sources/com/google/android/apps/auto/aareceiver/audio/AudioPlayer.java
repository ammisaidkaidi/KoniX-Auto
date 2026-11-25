package com.google.android.apps.auto.aareceiver.audio;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.CountDownTimer;
import java.nio.ByteBuffer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AudioPlayer {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/audio/AudioPlayer");
    public final AudioStreamType b;
    public final AudioFormat c;
    public AudioTrack d;
    public AudioSinkCallbackMarker e;
    public int f;
    final CountDownTimer g = new AudioPlayerUnderflowTimer(this);
    private final AudioAttributes h;
    private final int i;
    private int j;

    public AudioPlayer(AudioStreamType aucVar, AudioFormat audioFormat) {
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
            ((ParameterizedLoggerApi) a.b().h("com/google/android/apps/auto/aareceiver/audio/AudioPlayer", "playAudio", 186, "AudioPlayer.java")).n("Error writing to AudioTrack");
            return;
        }
        int i = this.j;
        if (NavInstructionTypeEnum > 0) {
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
        if (IcuMessageFormat) {
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
