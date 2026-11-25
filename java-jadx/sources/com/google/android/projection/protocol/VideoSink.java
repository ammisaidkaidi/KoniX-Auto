package com.google.android.projection.protocol;

import android.os.Trace;
import android.util.Log;
import defpackage.bzv;
import defpackage.ckx;
import defpackage.cky;
import defpackage.ckz;
import defpackage.clk;
import defpackage.cma;
import defpackage.dcz;
import defpackage.ddk;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class VideoSink implements VideoSinkCallbacks, clk {
    public final List a = new ArrayList();
    public ckx b;
    public final bzv c;
    private final int d;
    private long mNativeVideoSink;

    public VideoSink(bzv bzvVar, int i, byte[] bArr) {
        this.c = bzvVar;
        this.d = i;
    }

    private native int nativeInit(int i, long j, boolean z, int i2);

    private native void nativeSetMaxUnackedFrames(int i);

    private native void nativeShutdown();

    @Override // defpackage.clw
    public final long a() {
        return this.mNativeVideoSink;
    }

    @Override // defpackage.clw
    public final void b() {
        nativeShutdown();
    }

    @Override // defpackage.clk
    public final boolean c(int i, long j) {
        if (nativeInit(i, j, false, this.d) != 0) {
            return false;
        }
        nativeSetMaxUnackedFrames(16);
        return true;
    }

    @Override // com.google.android.projection.protocol.VideoSinkCallbacks
    public final int codecConfigCallback(byte[] bArr) {
        this.c.a(bArr);
        return 0;
    }

    @Override // com.google.android.projection.protocol.VideoSinkCallbacks
    public final void dataAvailableCallback(int i, long j, ByteBuffer byteBuffer) {
        Trace.beginSection("dataAvailableCallback");
        this.c.b(new cma(i, j, byteBuffer));
        Trace.endSection();
    }

    public native void nativeAckFrames(int i, int i2);

    public native void nativeAddSupportedConfiguration(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, byte[] bArr);

    public native void nativeSetCodecType(int i);

    public native void nativeSetDisplayIdAndType(int i, int i2);

    public native void nativeSetVideoFocus(int i, boolean z);

    public native void nativeUpdateUiConfig(byte[] bArr);

    @Override // com.google.android.projection.protocol.VideoSinkCallbacks
    public final void playbackStartCallback(int i) {
    }

    @Override // com.google.android.projection.protocol.VideoSinkCallbacks
    public final void playbackStopCallback(int i) {
    }

    @Override // com.google.android.projection.protocol.VideoSinkCallbacks
    public final int setupCallback(int i) {
        this.c.d();
        return 0;
    }

    @Override // com.google.android.projection.protocol.VideoSinkCallbacks
    public final void sourceVideoConfigCallback(int i) {
        ckz ckzVar = (ckz) this.a.get(i);
        cky ckyVar = cky.VIDEO_800x480;
        cky b = cky.b(ckzVar.b);
        if (b == null) {
            b = cky.VIDEO_800x480;
        }
        int i2 = 1080;
        int i3 = 480;
        switch (b) {
            case VIDEO_800x480:
            case VIDEO_2560x1440:
            case VIDEO_3840x2160:
            case VIDEO_1440x2560:
            case VIDEO_2160x3840:
                i2 = 800;
                break;
            case VIDEO_1280x720:
                i2 = 1280;
                i3 = 720;
                break;
            case VIDEO_1920x1080:
                i2 = 1920;
                i3 = 1080;
                break;
            case VIDEO_720x1280:
                i2 = 720;
                i3 = 1280;
                break;
            case VIDEO_1080x1920:
                i3 = 1920;
                break;
            default:
                i2 = 800;
                break;
        }
        this.c.aV(i2, i3, ckzVar);
    }

    @Override // com.google.android.projection.protocol.VideoSinkCallbacks
    public final void updateUiConfigReplyCallback(byte[] bArr) {
        try {
            this.b = (ckx) ddk.r(ckx.f, bArr, dcz.a());
        } catch (Exception e) {
            this.b = null;
            Log.e("AHU.VIDEO", "Failed to decode uiConfig!");
            throw new RuntimeException("Failed to decode uiConfig");
        }
    }

    @Override // com.google.android.projection.protocol.VideoSinkCallbacks
    public final void videoFocusCallback(int i, int i2) {
        this.c.f(i);
    }
}
