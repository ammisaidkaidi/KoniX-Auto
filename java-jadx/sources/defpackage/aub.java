package defpackage;

import android.os.CountDownTimer;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aub extends CountDownTimer {
    final /* synthetic */ aue a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aub(aue aueVar) {
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
                for (int i = 0; i < underrunCount; i++) {
                    ((csx) aue.a.c().h("com/google/android/apps/auto/aareceiver/audio/AudioPlayer$1", "onTick", 73, "AudioPlayer.java")).n("Underflow reported!");
                    aud audVar = this.a.e;
                    ((auj) audVar).f.nativeSendUnderflowNotification(((auj) audVar).l);
                }
                aue aueVar = this.a;
                aueVar.f = aueVar.d.getUnderrunCount();
            }
        }
    }
}
