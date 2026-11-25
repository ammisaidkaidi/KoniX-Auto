package com.google.android.apps.auto.aareceiver.transport.net;

import java.io.IOException;
import java.net.ServerSocket;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WirelessSocketProvider {
    private static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/transport/net/WirelessSocketProvider");
    private ServerSocket b = null;

    public final synchronized ServerSocket a() {
        ServerSocket serverSocket = this.b;
        if (serverSocket != null) {
            return serverSocket;
        }
        try {
            ServerSocket serverSocket2 = new ServerSocket(0);
            serverSocket2.getLocalPort();
            this.b = serverSocket2;
            return serverSocket2;
        } catch (IOException e) {
            ((ParameterizedLoggerApi) a.b().h("com/google/android/apps/auto/aareceiver/transport/net/WirelessSocketProvider", "getServerSocket", 37, "WirelessSocketProvider.java")).n("Failed to create socket");
            throw new IllegalStateException("Failed to create server socket", e);
        }
    }
}
