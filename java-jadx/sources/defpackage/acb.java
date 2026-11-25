package defpackage;

import android.media.session.MediaSessionManager;
import android.text.TextUtils;
import j$.util.Objects;

/* compiled from: PG */
/* loaded from: classes.dex */
final class acb {
    private final String a;
    private final int b;
    private final int c;

    public acb(String str, int i, int i2) {
        this.a = str;
        this.b = i;
        this.c = i2;
        new MediaSessionManager.RemoteUserInfo(str, i, i2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof acb)) {
            return false;
        }
        acb acbVar = (acb) obj;
        return (this.b < 0 || acbVar.b < 0) ? TextUtils.equals(this.a, acbVar.a) && this.c == acbVar.c : TextUtils.equals(this.a, acbVar.a) && this.b == acbVar.b && this.c == acbVar.c;
    }

    public final int hashCode() {
        return Objects.hash(this.a, Integer.valueOf(this.c));
    }
}
