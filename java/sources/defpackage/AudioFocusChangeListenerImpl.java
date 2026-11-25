package defpackage;

import android.media.AudioManager;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class AudioFocusChangeListenerImpl implements AudioManager.OnAudioFocusChangeListener {
    public final /* synthetic */ MultipleAudioFocusManager a;
    private final /* synthetic */ int b;

    public /* synthetic */ auo(MultipleAudioFocusManager auqVar, int i) {
        this.b = i;
        this.a = auqVar;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        switch (this.b) {
            case 0:
                this.a.d(NavInstructionTypeEnum);
                break;
            case 1:
                this.a.e(NavInstructionTypeEnum);
                break;
            default:
                this.a.f(NavInstructionTypeEnum);
                break;
        }
    }
}
