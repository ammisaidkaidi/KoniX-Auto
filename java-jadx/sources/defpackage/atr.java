package defpackage;

import android.media.AudioFocusRequest;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class atr {
    private AudioFocusRequest a;
    private Boolean b;
    private int c;

    public final ats a() {
        int i;
        Boolean bool;
        AudioFocusRequest audioFocusRequest = this.a;
        if (audioFocusRequest != null && (i = this.c) != 0 && (bool = this.b) != null) {
            return new ats(audioFocusRequest, i, bool.booleanValue());
        }
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            sb.append(" audioFocusRequest");
        }
        if (this.c == 0) {
            sb.append(" lossReceived");
        }
        if (this.b == null) {
            sb.append(" expectedFocusLoss");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    public final void b(boolean z) {
        this.b = Boolean.valueOf(z);
    }

    public final void c(int i) {
        if (i == 0) {
            throw new NullPointerException("Null lossReceived");
        }
        this.c = i;
    }

    public final void d(AudioFocusRequest audioFocusRequest) {
        boolean z = false;
        ex.l(audioFocusRequest.getAudioAttributes() != null);
        int usage = audioFocusRequest.getAudioAttributes().getUsage();
        if (usage == 1 || usage == 12) {
            z = true;
        } else if (usage == 16) {
            z = true;
        }
        ex.l(z);
        if (audioFocusRequest == null) {
            throw new NullPointerException("Null audioFocusRequest");
        }
        this.a = audioFocusRequest;
    }
}
