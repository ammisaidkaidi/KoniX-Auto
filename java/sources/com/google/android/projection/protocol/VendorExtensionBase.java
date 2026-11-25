package com.google.android.projection.protocol;

import defpackage.GalServiceEndpoint;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class VendorExtensionBase implements GalServiceEndpoint {
    private long mNativeVendorExtensionBase;

    public VendorExtensionBase() {
        VendorExtensionBase.class.getSimpleName();
    }

    private native void nativeInit(int i, long j);

    private native void nativeShutdown();

    @Override // defpackage.FrameTimingCallback
    public final long a() {
        return this.mNativeVendorExtensionBase;
    }

    @Override // defpackage.FrameTimingCallback
    public final void b() {
        nativeShutdown();
    }

    @Override // defpackage.GalServiceEndpoint
    public final boolean c(int i, long j) {
        nativeInit(i, j);
        return true;
    }

    protected abstract String[] getPackageWhitelist();

    protected abstract String getServiceName();

    public native void nativeSend(byte[] bArr);

    protected abstract int onMessage(byte[] bArr);
}
