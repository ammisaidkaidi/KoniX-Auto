package com.google.android.projection.protocol;

import java.nio.ByteBuffer;

/* compiled from: PG */
/* loaded from: classes.dex */
interface VideoSinkCallbacks {
    int codecConfigCallback(byte[] bArr);

    void dataAvailableCallback(int i, long j, ByteBuffer byteBuffer);

    void playbackStartCallback(int i);

    void playbackStopCallback(int i);

    int setupCallback(int i);

    void sourceVideoConfigCallback(int i);

    void updateUiConfigReplyCallback(byte[] bArr);

    void videoFocusCallback(int i, int i2);
}
