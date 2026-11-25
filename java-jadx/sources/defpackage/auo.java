package defpackage;

import android.media.AudioManager;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class auo implements AudioManager.OnAudioFocusChangeListener {
    public final /* synthetic */ auq a;
    private final /* synthetic */ int b;

    public /* synthetic */ auo(auq auqVar, int i) {
        this.b = i;
        this.a = auqVar;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        switch (this.b) {
            case 0:
                this.a.d(i);
                break;
            case 1:
                this.a.e(i);
                break;
            default:
                this.a.f(i);
                break;
        }
    }
}
