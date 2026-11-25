package defpackage;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.location.GnssStatus;
import android.location.LocationListener;
import android.location.LocationManager;
import com.google.android.projection.protocol.SensorSource;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class azc extends azj {
    private final LocationManager i;
    private final SensorManager j;
    private final Sensor k;
    private final Sensor l;
    private final Sensor m;
    private final Sensor n;
    public final Object a = new Object();
    public final float[] b = new float[3];
    public boolean c = false;
    public final float[] d = new float[3];
    public boolean e = false;
    private final float[] o = new float[9];
    private final float[] p = new float[3];
    private final GnssStatus.Callback q = new ayx(this);
    private final LocationListener r = new ayz(this);
    private final SensorEventListener s = new azb(this);

    public azc(Context context) {
        this.i = (LocationManager) context.getSystemService("location");
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.j = sensorManager;
        this.k = sensorManager.getDefaultSensor(1);
        this.l = sensorManager.getDefaultSensor(2);
        this.m = sensorManager.getDefaultSensor(4);
        this.n = sensorManager.getDefaultSensor(9);
    }

    @Override // defpackage.azj
    public final cqw a() {
        cqu k = cqw.k();
        if (this.i.isProviderEnabled("gps")) {
            k.d(ckw.SENSOR_LOCATION);
            k.d(ckw.SENSOR_GPS_SATELLITE_DATA);
        }
        if (this.k != null) {
            k.d(ckw.SENSOR_ACCELEROMETER_DATA);
        }
        if (this.m != null) {
            k.d(ckw.SENSOR_GYROSCOPE_DATA);
        }
        if (this.l != null && this.n != null) {
            k.d(ckw.SENSOR_COMPASS);
        }
        return k.f();
    }

    public final void b() {
        if (this.e && this.c) {
            this.e = false;
            this.c = false;
            SensorManager.getRotationMatrix(this.o, null, this.b, this.d);
            SensorManager.getOrientation(this.o, this.p);
            final int round = ((int) Math.round(Math.toDegrees(this.p[0]))) % 360;
            if (round < 0) {
                round += 360;
            }
            final int round2 = (int) Math.round(Math.toDegrees(this.p[1]));
            final int round3 = (int) Math.round(Math.toDegrees(this.p[2]));
            f(ckw.SENSOR_COMPASS, new Consumer() { // from class: ayv
                @Override // j$.util.function.Consumer
                public final void accept(Object obj) {
                    int i;
                    int i2;
                    int i3;
                    boolean z;
                    int i4 = round;
                    int i5 = round2;
                    int i6 = round3;
                    SensorSource sensorSource = (SensorSource) obj;
                    double d = i4;
                    Double.isNaN(d);
                    int i7 = (int) (d * 1000000.0d);
                    double d2 = i5;
                    Double.isNaN(d2);
                    int i8 = (int) (d2 * 1000000.0d);
                    double d3 = i6;
                    Double.isNaN(d3);
                    int i9 = (int) (d3 * 1000000.0d);
                    int i10 = sensorSource.a;
                    if (i10 != Integer.MIN_VALUE) {
                        int i11 = sensorSource.b;
                        boolean z2 = i11 != Integer.MIN_VALUE;
                        int i12 = sensorSource.c;
                        i = i10;
                        z = i12 != Integer.MIN_VALUE;
                        i3 = i12;
                        i2 = i11;
                        r5 = z2;
                    } else {
                        i = i7;
                        i2 = i8;
                        i3 = i9;
                        z = true;
                    }
                    sensorSource.nativeReportCompassData(i, r5, i2, z, i3);
                }

                @Override // j$.util.function.Consumer
                public final /* synthetic */ Consumer andThen(Consumer consumer) {
                    return Consumer.CC.$default$andThen(this, consumer);
                }
            });
        }
    }

    @Override // defpackage.azj
    public final void c(cqw cqwVar) {
        if (cqwVar.contains(ckw.SENSOR_GPS_SATELLITE_DATA)) {
            this.i.registerGnssStatusCallback(this.q);
        }
        if (cqwVar.contains(ckw.SENSOR_LOCATION)) {
            this.i.requestLocationUpdates("gps", 0L, 0.0f, this.r);
        }
        if (cqwVar.contains(ckw.SENSOR_ACCELEROMETER_DATA)) {
            this.j.registerListener(this.s, this.k, 100000);
        }
        if (cqwVar.contains(ckw.SENSOR_COMPASS)) {
            this.j.registerListener(this.s, this.l, 100000);
            this.j.registerListener(this.s, this.n, 100000);
        }
        if (cqwVar.contains(ckw.SENSOR_GYROSCOPE_DATA)) {
            this.j.registerListener(this.s, this.m, 100000);
        }
    }

    @Override // defpackage.azj
    protected final void d(cqw cqwVar) {
        if (cqwVar.contains(ckw.SENSOR_GPS_SATELLITE_DATA)) {
            this.i.unregisterGnssStatusCallback(this.q);
        }
        if (cqwVar.contains(ckw.SENSOR_LOCATION)) {
            this.i.removeUpdates(this.r);
        }
        if (cqwVar.contains(ckw.SENSOR_COMPASS)) {
            this.j.unregisterListener(this.s, this.l);
            this.j.unregisterListener(this.s, this.n);
        }
        if (cqwVar.contains(ckw.SENSOR_ACCELEROMETER_DATA)) {
            this.j.unregisterListener(this.s, this.k);
        }
        if (cqwVar.contains(ckw.SENSOR_GYROSCOPE_DATA)) {
            this.j.unregisterListener(this.s, this.m);
        }
    }
}
