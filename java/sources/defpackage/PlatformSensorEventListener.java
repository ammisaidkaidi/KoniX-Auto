package defpackage;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.google.android.projection.protocol.SensorSource;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PlatformSensorEventListener implements SensorEventListener {
    public static final /* synthetic */ int b = 0;
    final /* synthetic */ LocationSensorFeed a;

    public PlatformSensorEventListener(LocationSensorFeed azcVar) {
        this.a = azcVar;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(final SensorEvent sensorEvent) {
        int type = sensorEvent.sensor.getType();
        synchronized (this.a) {
            final int i = 1;
            final int i2 = 0;
            try {
                switch (type) {
                    case 1:
                        this.a.f(SensorType.SENSOR_ACCELEROMETER_DATA, new Consumer() { // from class: aza
                            @Override // j$.util.function.Consumer
                            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                                switch (i2) {
                                }
                                return Consumer.CC.$default$andThen(this, consumer);
                            }

                            @Override // j$.util.function.Consumer
                            public final void accept(Object obj) {
                                switch (i2) {
                                    case 0:
                                        SensorEvent sensorEvent2 = sensorEvent;
                                        SensorSource sensorSource = (SensorSource) obj;
                                        int i3 = azb.b;
                                        Double.isNaN(sensorEvent2.values[0]);
                                        Double.isNaN(sensorEvent2.values[1]);
                                        Double.isNaN(sensorEvent2.values[2]);
                                        sensorSource.nativeReportAccelerometerData(true, (int) (r8 * 1000.0d), true, (int) (r2 * 1000.0d), true, (int) (r0 * 1000.0d));
                                        break;
                                    default:
                                        SensorEvent sensorEvent3 = sensorEvent;
                                        SensorSource sensorSource2 = (SensorSource) obj;
                                        int i4 = azb.b;
                                        Double.isNaN(sensorEvent3.values[0]);
                                        Double.isNaN(sensorEvent3.values[1]);
                                        Double.isNaN(sensorEvent3.values[2]);
                                        sensorSource2.nativeReportGyroscopeData(true, (int) (r8 * 1000.0d), true, (int) (r2 * 1000.0d), true, (int) (r0 * 1000.0d));
                                        break;
                                }
                            }
                        });
                        return;
                    case 2:
                        LocationSensorFeed azcVar = this.a;
                        float[] fArr = sensorEvent.values;
                        synchronized (azcVar.a) {
                            System.arraycopy(fArr, 0, azcVar.d, 0, 3);
                            azcVar.e = true;
                            azcVar.b();
                        }
                        return;
                    case 4:
                        this.a.f(SensorType.SENSOR_GYROSCOPE_DATA, new Consumer() { // from class: aza
                            @Override // j$.util.function.Consumer
                            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                                switch (NavInstructionTypeEnum) {
                                }
                                return Consumer.CC.$default$andThen(this, consumer);
                            }

                            @Override // j$.util.function.Consumer
                            public final void accept(Object obj) {
                                switch (NavInstructionTypeEnum) {
                                    case 0:
                                        SensorEvent sensorEvent2 = sensorEvent;
                                        SensorSource sensorSource = (SensorSource) obj;
                                        int i3 = azb.b;
                                        Double.isNaN(sensorEvent2.values[0]);
                                        Double.isNaN(sensorEvent2.values[1]);
                                        Double.isNaN(sensorEvent2.values[2]);
                                        sensorSource.nativeReportAccelerometerData(true, (int) (r8 * 1000.0d), true, (int) (r2 * 1000.0d), true, (int) (r0 * 1000.0d));
                                        break;
                                    default:
                                        SensorEvent sensorEvent3 = sensorEvent;
                                        SensorSource sensorSource2 = (SensorSource) obj;
                                        int i4 = azb.b;
                                        Double.isNaN(sensorEvent3.values[0]);
                                        Double.isNaN(sensorEvent3.values[1]);
                                        Double.isNaN(sensorEvent3.values[2]);
                                        sensorSource2.nativeReportGyroscopeData(true, (int) (r8 * 1000.0d), true, (int) (r2 * 1000.0d), true, (int) (r0 * 1000.0d));
                                        break;
                                }
                            }
                        });
                        return;
                    case 9:
                        LocationSensorFeed azcVar2 = this.a;
                        float[] fArr2 = sensorEvent.values;
                        synchronized (azcVar2.a) {
                            System.arraycopy(fArr2, 0, azcVar2.b, 0, 3);
                            azcVar2.c = true;
                            azcVar2.b();
                        }
                        return;
                    default:
                        return;
                }
            } finally {
            }
        }
    }
}
