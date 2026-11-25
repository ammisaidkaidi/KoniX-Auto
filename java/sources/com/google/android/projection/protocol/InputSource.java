package com.google.android.projection.protocol;

import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.MotionEvent;
import defpackage.GalServiceEndpoint;

/* compiled from: PG */
/* loaded from: classes.dex */
public class InputSource implements InputSourceCallbacks, clk {
    private long mNativeInputSource;

    private native int nativeInit(int i, long j);

    private native int nativeSendKeyEvent(long j, int i, boolean z, int i2);

    private native int nativeSendTouchEvent(long j, int[] iArr, int[] iArr2, int[] iArr3, int i, int i2);

    private native void nativeShutdown();

    @Override // defpackage.FrameTimingCallback
    public final long a() {
        return this.mNativeInputSource;
    }

    @Override // defpackage.FrameTimingCallback
    public final void b() {
        nativeShutdown();
    }

    @Override // defpackage.GalServiceEndpoint
    public final boolean c(int i, long j) {
        return nativeInit(i, j) == 0;
    }

    public final void d(KeyEvent keyEvent) {
        nativeSendKeyEvent(SystemClock.elapsedRealtimeNanos(), keyEvent.getKeyCode(), keyEvent.getAction() == 0, keyEvent.getMetaState());
    }

    public final synchronized void e(MotionEvent motionEvent) {
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 || actionMasked == 5 || actionMasked == 2 || actionMasked == 6 || actionMasked == 1) {
            int pointerCount = motionEvent.getPointerCount();
            int[] iArr = new int[pointerCount];
            int[] iArr2 = new int[pointerCount];
            int[] iArr3 = new int[pointerCount];
            for (int i = 0; i < pointerCount; i++) {
                iArr[i] = (int) motionEvent.getX(i);
                iArr2[i] = (int) motionEvent.getY(i);
                iArr3[i] = motionEvent.getPointerId(i);
            }
            nativeSendTouchEvent(elapsedRealtimeNanos, iArr3, iArr, iArr2, actionMasked, motionEvent.getActionIndex());
        }
    }

    public native void nativeRegisterKeyCodes(int[] iArr);

    public native void nativeRegisterTouchScreen(int i, int i2, int i3);

    public native int nativeSendKeyLongEvent(long j, int i, int i2);

    public native void nativeSetDisplayId(int i);

    @Override // com.google.android.projection.protocol.InputSourceCallbacks
    public final void onInputFeedback(int i) {
    }
}
