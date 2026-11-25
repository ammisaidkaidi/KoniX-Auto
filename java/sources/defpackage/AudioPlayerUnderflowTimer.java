package defpackage;

import android.os.CountDownTimer;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AudioPlayerUnderflowTimer extends CountDownTimer {
    final /* synthetic */ AudioPlayer a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public AudioPlayerUnderflowTimer(AudioPlayer aueVar) {
        super(Long.MAX_VALUE, 50L);
        this.a = aueVar;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() {
        start();
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j) {
        this.a.e.getClass();
        synchronized (this) {
            int underrunCount = this.a.d.getUnderrunCount() - this.a.f;
            if (underrunCount > 0) {
                for (int i = 0; NavInstructionTypeEnum < underrunCount; i++) {
                    ((ParameterizedLoggerApi) AudioPlayer.a.c().h("com/google/android/apps/auto/aareceiver/audio/AudioPlayer$1", "onTick", 73, "AudioPlayer.java")).n("Underflow reported!");
                    AudioSinkCallbackMarker audVar = this.a.e;
                    ((AudioSinkManager) audVar).f.nativeSendUnderflowNotification(((AudioSinkManager) audVar).l);
                }
                AudioPlayer aueVar = this.a;
                aueVar.f = aueVar.d.getUnderrunCount();
            }
        }
    }
}
