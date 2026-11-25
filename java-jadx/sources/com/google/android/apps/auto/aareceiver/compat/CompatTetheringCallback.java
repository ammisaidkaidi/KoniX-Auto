package com.google.android.apps.auto.aareceiver.compat;

import android.net.ConnectivityManager;
import android.util.Log;

/* loaded from: classes2.dex */
public class CompatTetheringCallback extends ConnectivityManager.OnStartTetheringCallback {
    public void onTetheringFailed() {
        Log.w("AAReceiverCompat", "OnStartTetheringCallback: Wi-Fi tethering reported failure");
    }

    public void onTetheringStarted() {
        Log.i("AAReceiverCompat", "OnStartTetheringCallback: Wi-Fi tethering started (IpServer + dnsmasq active)");
    }
}
