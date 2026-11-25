package com.google.android.projection.protocol;

/* compiled from: PG */
/* loaded from: classes.dex */
public interface ConnectionConfigurationCallbacks {
    void onApplyTcpReadTimout(int i);

    void onApplyTcpReceiveBufferSize(int i);

    void onApplyTcpSendBufferSize(int i);

    int onRetrieveTcpReadTimeout();

    int onRetrieveTcpReceiveBufferSize();

    int onRetrieveTcpSendBufferSize();
}
