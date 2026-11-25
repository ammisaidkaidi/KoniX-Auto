package defpackage;

import android.media.AudioFocusRequest;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ats {
    public final AudioFocusRequest a;
    public final boolean b;
    public final int c;

    public ats() {
    }

    public ats(AudioFocusRequest audioFocusRequest, int i, boolean z) {
        this.a = audioFocusRequest;
        this.c = i;
        this.b = z;
    }

    public static atr a() {
        atr atrVar = new atr();
        atrVar.c(1);
        atrVar.b(false);
        return atrVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ats)) {
            return false;
        }
        ats atsVar = (ats) obj;
        if (this.a.equals(atsVar.a)) {
            int i = this.c;
            int i2 = atsVar.c;
            if (i == 0) {
                throw null;
            }
            if (i == i2 && this.b == atsVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        int i = this.c;
        if (i != 0) {
            return ((hashCode ^ i) * 1000003) ^ (true != this.b ? 1237 : 1231);
        }
        throw null;
    }

    public final String toString() {
        String str;
        String e = aul.e(this.a.getAudioAttributes().getUsage());
        int focusGain = this.a.getFocusGain();
        switch (this.c) {
            case 1:
                str = "NONE";
                break;
            case 2:
                str = "LOSS_TRANSIENT";
                break;
            case 3:
                str = "LOSS_TRANSIENT_CAN_DUCK";
                break;
            default:
                str = "null";
                break;
        }
        boolean z = this.b;
        StringBuilder sb = new StringBuilder(e.length() + 74 + str.length());
        sb.append("AudioFocusInfo{audioFocusRequest{usage=");
        sb.append(e);
        sb.append(", focusRequest=");
        sb.append(focusGain);
        sb.append("},");
        sb.append(str);
        sb.append(",");
        sb.append(z);
        sb.append("}");
        return sb.toString();
    }
}
