package com.google.android.projection.protocol;

/* compiled from: PG */
/* loaded from: classes.dex */
interface AudioSinkCallbacks {
    int codecConfigCallback(byte[] bArr);

    void dataAvailableCallback(int i, long j, byte[] bArr);

    void playbackStartCallback(int i);

    void playbackStopCallback(int i);

    int setupCallback(int i);
}
