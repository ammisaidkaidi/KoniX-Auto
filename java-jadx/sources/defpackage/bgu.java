package defpackage;

import android.media.MediaCodec;
import android.media.MediaFormat;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bgu {
    public final MediaFormat a;
    public final MediaCodec b;
    public final bgo c;

    public bgu(MediaFormat mediaFormat, MediaCodec mediaCodec, bgo bgoVar) {
        this.a = mediaFormat;
        if (mediaCodec == null) {
            throw new NullPointerException("Null codec");
        }
        this.b = mediaCodec;
        this.c = bgoVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof bgu) {
            bgu bguVar = (bgu) obj;
            if (this.a.equals(bguVar.a) && this.b.equals(bguVar.b) && this.c.equals(bguVar.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode();
    }

    public final String toString() {
        String obj = this.a.toString();
        String obj2 = this.b.toString();
        String obj3 = this.c.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 52 + obj2.length() + obj3.length());
        sb.append("MediaCodecProperties{format=");
        sb.append(obj);
        sb.append(", codec=");
        sb.append(obj2);
        sb.append(", configParser=");
        sb.append(obj3);
        sb.append("}");
        return sb.toString();
    }

    public bgu() {
    }
}
