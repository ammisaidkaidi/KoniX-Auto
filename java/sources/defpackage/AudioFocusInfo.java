package defpackage;

import android.media.AudioFocusRequest;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AudioFocusInfo {
    public final AudioFocusRequest a;
    public final boolean b;
    public final int c;

    public AudioFocusInfo() {
    }

    public AudioFocusInfo(AudioFocusRequest audioFocusRequest, int i, boolean z) {
        this.a = audioFocusRequest;
        this.c = i;
        this.b = z;
    }

    public static AudioFocusRequest a() {
        AudioFocusRequest atrVar = new AudioFocusRequest();
        atrVar.c(1);
        atrVar.b(false);
        return atrVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AudioFocusInfo)) {
            return false;
        }
        AudioFocusInfo atsVar = (AudioFocusInfo) obj;
        if (this.a.equals(atsVar.a)) {
            int i = this.c;
            int i2 = atsVar.c;
            if (NavInstructionTypeEnum == 0) {
                throw null;
            }
            if (NavInstructionTypeEnum == i2 && this.b == atsVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        int i = this.c;
        if (NavInstructionTypeEnum != 0) {
            return ((hashCode ^ i) * 1000003) ^ (true != this.b ? 1237 : 1231);
        }
        throw null;
    }

    public final String toString() {
        String str;
        String e = AudioUtils.e(this.a.getAudioAttributes().getUsage());
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
        StaggeredGridLayoutParams.append("AudioFocusInfo{audioFocusRequest{usage=");
        StaggeredGridLayoutParams.append(ProtoFlagValueMessage);
        StaggeredGridLayoutParams.append(", focusRequest=");
        StaggeredGridLayoutParams.append(focusGain);
        StaggeredGridLayoutParams.append("},");
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append(",");
        StaggeredGridLayoutParams.append(IcuMessageFormat);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
