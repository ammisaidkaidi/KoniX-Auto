package defpackage;

import android.net.MacAddress;
import j$.util.Optional;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.SocketException;
import java.util.Enumeration;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bdw {
    private static final csz a = csz.g("com/google/android/apps/auto/aareceiver/transport/net/utils/NetworkInterfaceUtil");

    public final Optional a(String str) {
        bdx bdxVar;
        try {
            bdxVar = hl.m(str);
        } catch (SocketException e) {
            ((csx) ((csx) a.c().g(e)).h("com/google/android/apps/auto/aareceiver/transport/net/utils/NetworkInterfaceUtil", "getHostIp", 50, "NetworkInterfaceUtil.java")).p("No interface found for the name %s", str);
            bdxVar = null;
        }
        if (bdxVar == null) {
            ((csx) a.c().h("com/google/android/apps/auto/aareceiver/transport/net/utils/NetworkInterfaceUtil", "getHostIp", 53, "NetworkInterfaceUtil.java")).p("Failed to get network interface object for %s", str);
            return Optional.empty();
        }
        Enumeration<InetAddress> inetAddresses = bdxVar.a.getInetAddresses();
        while (inetAddresses.hasMoreElements()) {
            InetAddress nextElement = inetAddresses.nextElement();
            if (!nextElement.isLoopbackAddress() && (nextElement instanceof Inet4Address)) {
                nextElement.getHostAddress();
                return Optional.of(nextElement);
            }
        }
        ((csx) a.c().h("com/google/android/apps/auto/aareceiver/transport/net/utils/NetworkInterfaceUtil", "getHostIp", 65, "NetworkInterfaceUtil.java")).p("Couldn't determine access point host IP address for %s", str);
        return Optional.empty();
    }

    public final Optional b(String str) {
        try {
            bdx m = hl.m(str);
            return m == null ? Optional.empty() : Optional.of(MacAddress.fromBytes(m.a.getHardwareAddress()));
        } catch (SocketException e) {
            ((csx) ((csx) a.c().g(e)).h("com/google/android/apps/auto/aareceiver/transport/net/utils/NetworkInterfaceUtil", "getMacAddressForInterface", 35, "NetworkInterfaceUtil.java")).p("Unable to retrieve hardware address for %s", str);
            return Optional.empty();
        }
    }
}
