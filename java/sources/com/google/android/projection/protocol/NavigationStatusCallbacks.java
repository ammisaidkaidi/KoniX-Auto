package com.google.android.projection.protocol;

/* compiled from: PG */
/* loaded from: classes.dex */
interface NavigationStatusCallbacks {
    void navigationCurrentPositionCallback(byte[] bArr);

    void navigationNextTurnCallback(String str, int i, int i2, byte[] bArr, int i3, int i4);

    void navigationNextTurnDistanceCallback(int i, int i2, int i3, int i4);

    void navigationStateCallback(byte[] bArr);

    void navigationStatusCallback(int i);
}
