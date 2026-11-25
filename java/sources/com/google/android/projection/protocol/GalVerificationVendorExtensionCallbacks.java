package com.google.android.projection.protocol;

/* compiled from: PG */
/* loaded from: classes.dex */
interface GalVerificationVendorExtensionCallbacks {
    int injectInputCallback(byte[] bArr);

    int injectSensorDataCallback(byte[] bArr);

    int requestAudioFocusChangeCallback(byte[] bArr);

    int requestDisplayInformationCallback();

    int requestScreenCaptureCallback();

    int setVideoFocusCallback(byte[] bArr);
}
