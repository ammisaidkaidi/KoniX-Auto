package defpackage;

import java.net.NetworkInterface;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NetworkInterfaceWrapper {
    public final NetworkInterface a;

    public NetworkInterfaceWrapper(NetworkInterface networkInterface) {
        this.a = networkInterface;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof NetworkInterfaceWrapper) {
            return this.a.equals(((NetworkInterfaceWrapper) obj).a);
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
