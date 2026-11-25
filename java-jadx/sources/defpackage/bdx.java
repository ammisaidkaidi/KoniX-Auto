package defpackage;

import java.net.NetworkInterface;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bdx {
    public final NetworkInterface a;

    public bdx(NetworkInterface networkInterface) {
        this.a = networkInterface;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof bdx) {
            return this.a.equals(((bdx) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a.toString();
    }
}
