package com.google.android.projection.protocol;

import defpackage.EvConnectorType;
import defpackage.FuelType;
import defpackage.GalServiceEndpoint;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SensorSource implements GalServiceEndpoint {
    private final int[] h;
    private final int[] i;
    private final int[] j;
    private final int[] k;
    private long mNativeSensorSource;
    private int e = Integer.MIN_VALUE;
    public int a = Integer.MIN_VALUE;
    public int b = Integer.MIN_VALUE;
    public int c = Integer.MIN_VALUE;
    private int f = Integer.MIN_VALUE;
    private int g = Integer.MIN_VALUE;
    public int d = Integer.MIN_VALUE;

    public SensorSource(int[] iArr, FuelType[] ckdVarArr, EvConnectorType[] ckcVarArr) {
        int[] iArr2 = {1, 3, 2, 4, 5, 6, 7, 8, 10, 11, 12, 13, 19, 20, 21};
        this.i = iArr2;
        if (iArr == null) {
            this.h = iArr2;
        } else {
            this.h = iArr;
        }
        this.j = new int[ckdVarArr.length];
        for (int i = 0; i < ckdVarArr.length; i++) {
            this.j[i] = ckdVarArr[i].n;
        }
        this.k = new int[ckcVarArr.length];
        for (int i2 = 0; i2 < ckcVarArr.length; i2++) {
            this.k[i2] = ckcVarArr[i2].l;
        }
    }

    public static int[] e(float[] fArr) {
        if (fArr == null) {
            return null;
        }
        int[] iArr = new int[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            iArr[i] = Math.round(fArr[i] * 1000.0f);
        }
        return iArr;
    }

    private native int nativeInit(int i, long j, int i2, int[] iArr, int[] iArr2);

    private native void nativeRegisterSensor(int i);

    private native int nativeReportEnvironmentData(boolean z, int i, boolean z2, int i2, boolean z3, int i3);

    private native int nativeReportFuelData(boolean z, int i, boolean z2, int i2, boolean z3, boolean z4);

    private native int nativeReportOdometerData(int i, boolean z, int i2);

    private native int nativeReportRpmData(int i);

    private native int nativeReportSpeedData(int i, boolean z, boolean z2, boolean z3, int i2);

    private native void nativeShutdown();

    @Override // defpackage.FrameTimingCallback
    public final long a() {
        return this.mNativeSensorSource;
    }

    @Override // defpackage.FrameTimingCallback
    public final void b() {
        nativeShutdown();
    }

    @Override // defpackage.GalServiceEndpoint
    public final boolean c(int i, long j) {
        int nativeInit = nativeInit(i, j, 256, this.j, this.k);
        if (nativeInit != 0) {
            return false;
        }
        for (int i2 : this.h) {
            nativeRegisterSensor(i2);
        }
        return true;
    }

    public final void d(double d) {
        double d2 = d * 1000.0d;
        int i = this.f;
        if (i != Integer.MIN_VALUE) {
            d2 = i;
        }
        nativeReportRpmData((int) d2);
    }

    public final void f(float f) {
        double d = f;
        Double.isNaN(d);
        nativeReportEnvironmentData(true, (int) Math.round(d * 1000.0d), false, (int) Math.round(Double.NaN), false, 0);
    }

    public final void g(int i) {
        nativeReportFuelData(true, i, false, 0, false, false);
    }

    public final void h(double d) {
        double d2 = d * 10.0d;
        int i = this.g;
        if (i != Integer.MIN_VALUE) {
            d2 = i;
        }
        nativeReportOdometerData((int) d2, false, 0);
    }

    public final void i(float f) {
        double d = f;
        Double.isNaN(d);
        float f2 = (float) (d * 1000.0d);
        int i = this.e;
        if (i != Integer.MIN_VALUE) {
            f2 = i;
        }
        nativeReportSpeedData((int) f2, false, false, false, 0);
    }

    public native int nativeReportAccelerometerData(boolean z, int i, boolean z2, int i2, boolean z3, int i3);

    public native int nativeReportCompassData(int i, boolean z, int i2, boolean z2, int i3);

    public native int nativeReportDrivingStatusData(int i);

    public native int nativeReportGearData(int i);

    public native int nativeReportGpsSatelliteData(int i, boolean z, int i2, int[] iArr, int[] iArr2, boolean[] zArr, int[] iArr3, int[] iArr4);

    public native int nativeReportGyroscopeData(boolean z, int i, boolean z2, int i2, boolean z3, int i3);

    public native int nativeReportLocation(long j, int i, int i2, boolean z, int i3, boolean z2, int i4, boolean z3, int i5, boolean z4, int i6);

    public native int nativeReportNightModeData(boolean z);

    public native int nativeReportParkingBrakeData(boolean z);
}
