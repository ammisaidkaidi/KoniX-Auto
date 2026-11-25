package defpackage;

import android.car.CarInfoManager;
import android.car.hardware.CarSensorEvent;
import android.car.hardware.CarSensorManager;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import com.google.android.projection.protocol.SensorSource;
import j$.util.function.Consumer;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
@Deprecated
/* loaded from: classes.dex */
public final class ays extends azj {
    static final cqk a;
    public static final /* synthetic */ int b = 0;
    private static final csz c = csz.g("com/google/android/apps/auto/aareceiver/sensors/CarSensorsFeed");
    private static final cpy d;
    private static final cqk e;
    private static final cqw i;
    private final CarSensorManager j;
    private final Context k;
    private final float l;
    private volatile boolean m;
    private final CarSensorManager.OnSensorChangedListener n = new CarSensorManager.OnSensorChangedListener() { // from class: ayn
        @Override // android.car.hardware.CarSensorManager.OnSensorChangedListener
        public final void onSensorChanged(CarSensorEvent carSensorEvent) {
            ays.this.b(carSensorEvent);
        }
    };
    private final Handler o = new ayr(this, Looper.getMainLooper());

    static {
        cpw cpwVar = new cpw();
        cpwVar.d(291504647, ckw.SENSOR_SPEED);
        cpwVar.d(291504901, ckw.SENSOR_RPM);
        cpwVar.d(291504644, ckw.SENSOR_ODOMETER);
        cpwVar.d(291504903, ckw.SENSOR_FUEL);
        cpwVar.d(287310850, ckw.SENSOR_PARKING_BRAKE);
        cpwVar.d(289408000, ckw.SENSOR_GEAR);
        cpwVar.d(291505923, ckw.SENSOR_ENVIRONMENT_DATA);
        d = cpwVar.b();
        cqi cqiVar = new cqi();
        cqiVar.f(291504647, "android.car.permission.CAR_SPEED");
        cqiVar.f(291504901, "android.car.permission.CAR_ENGINE_DETAILED");
        cqiVar.f(291504644, "android.car.permission.CAR_MILEAGE");
        cqiVar.f(291504903, "android.car.permission.CAR_ENERGY");
        cqiVar.f(287310850, "android.car.permission.CAR_POWERTRAIN");
        cqiVar.f(289408000, "android.car.permission.CAR_POWERTRAIN");
        cqiVar.f(291505923, "android.car.permission.CAR_EXTERIOR_ENVIRONMENT");
        a = cqiVar.c();
        cqi cqiVar2 = new cqi();
        cqiVar2.f(16, 1);
        cqiVar2.f(32, 2);
        cqiVar2.f(64, 3);
        cqiVar2.f(128, 4);
        cqiVar2.f(256, 5);
        cqiVar2.f(512, 6);
        cqiVar2.f(1024, 7);
        cqiVar2.f(2048, 8);
        cqiVar2.f(4096, 9);
        cqiVar2.f(8192, 10);
        cqiVar2.f(4, 101);
        cqiVar2.f(2, 102);
        cqiVar2.f(1, 0);
        cqiVar2.f(8, 100);
        e = cqiVar2.c();
        i = cqw.p(291504647, 291504901);
    }

    public ays(Context context, CarSensorManager carSensorManager, CarInfoManager carInfoManager) {
        this.k = context;
        this.j = carSensorManager;
        this.l = CarCompat.getFuelCapacitySafe(carInfoManager);
    }

    @Override // defpackage.azj
    public final cqw a() {
        cqu k = cqw.k();
        for (int i2 : this.j.getSupportedSensors()) {
            cpy cpyVar = d;
            Integer valueOf = Integer.valueOf(i2);
            ckw ckwVar = (ckw) cpyVar.get(valueOf);
            if (ckwVar != null && this.k.checkSelfPermission((String) a.get(valueOf)) == 0) {
                k.d(ckwVar);
            }
        }
        return k.f();
    }

    public final void b(final CarSensorEvent carSensorEvent) {
        csz.b.y(TimeUnit.SECONDS);
        if (i.contains(Integer.valueOf(carSensorEvent.sensorType))) {
            this.o.removeMessages(carSensorEvent.sensorType);
            this.o.sendMessageDelayed(this.o.obtainMessage(carSensorEvent.sensorType, carSensorEvent), 1000L);
        }
        char c2 = 1;
        final int i2 = 0;
        switch (carSensorEvent.sensorType) {
            case 287310850:
                final int i3 = 2;
                f(ckw.SENSOR_PARKING_BRAKE, new Consumer() { // from class: ayp
                    @Override // j$.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (i3) {
                            case 0:
                                CarSensorEvent carSensorEvent2 = carSensorEvent;
                                int i4 = ays.b;
                                ((SensorSource) obj).h(carSensorEvent2.floatValues[0]);
                                break;
                            case 1:
                                CarSensorEvent carSensorEvent3 = carSensorEvent;
                                int i5 = ays.b;
                                ((SensorSource) obj).d(carSensorEvent3.floatValues[0]);
                                break;
                            case 2:
                                CarSensorEvent carSensorEvent4 = carSensorEvent;
                                SensorSource sensorSource = (SensorSource) obj;
                                int i6 = ays.b;
                                sensorSource.nativeReportParkingBrakeData(carSensorEvent4.intValues[0] == 1);
                                break;
                            default:
                                CarSensorEvent carSensorEvent5 = carSensorEvent;
                                int i7 = ays.b;
                                ((SensorSource) obj).f(carSensorEvent5.floatValues[0]);
                                break;
                        }
                    }

                    @Override // j$.util.function.Consumer
                    public final /* synthetic */ Consumer andThen(Consumer consumer) {
                        switch (i3) {
                        }
                        return Consumer.CC.$default$andThen(this, consumer);
                    }
                });
                break;
            case 289408000:
                Integer num = (Integer) e.get(Integer.valueOf(carSensorEvent.intValues[0]));
                if (num == null) {
                    ((csx) c.c().h("com/google/android/apps/auto/aareceiver/sensors/CarSensorsFeed", "handleSensorChanged", 224, "CarSensorsFeed.java")).o("Car in unknown gear: %d", carSensorEvent.intValues[0]);
                    break;
                } else {
                    this.m = num.intValue() == 102;
                    f(ckw.SENSOR_GEAR, new ayq(num, 0));
                    break;
                }
            case 291504644:
                f(ckw.SENSOR_ODOMETER, new Consumer() { // from class: ayp
                    @Override // j$.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (i2) {
                            case 0:
                                CarSensorEvent carSensorEvent2 = carSensorEvent;
                                int i4 = ays.b;
                                ((SensorSource) obj).h(carSensorEvent2.floatValues[0]);
                                break;
                            case 1:
                                CarSensorEvent carSensorEvent3 = carSensorEvent;
                                int i5 = ays.b;
                                ((SensorSource) obj).d(carSensorEvent3.floatValues[0]);
                                break;
                            case 2:
                                CarSensorEvent carSensorEvent4 = carSensorEvent;
                                SensorSource sensorSource = (SensorSource) obj;
                                int i6 = ays.b;
                                sensorSource.nativeReportParkingBrakeData(carSensorEvent4.intValues[0] == 1);
                                break;
                            default:
                                CarSensorEvent carSensorEvent5 = carSensorEvent;
                                int i7 = ays.b;
                                ((SensorSource) obj).f(carSensorEvent5.floatValues[0]);
                                break;
                        }
                    }

                    @Override // j$.util.function.Consumer
                    public final /* synthetic */ Consumer andThen(Consumer consumer) {
                        switch (i2) {
                        }
                        return Consumer.CC.$default$andThen(this, consumer);
                    }
                });
                break;
            case 291504647:
                f(ckw.SENSOR_SPEED, new ayj(this.m ? -carSensorEvent.floatValues[0] : carSensorEvent.floatValues[0], 4));
                break;
            case 291504901:
                ckw ckwVar = ckw.SENSOR_RPM;
                final char c3 = c2 == true ? 1 : 0;
                f(ckwVar, new Consumer() { // from class: ayp
                    @Override // j$.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (c3) {
                            case 0:
                                CarSensorEvent carSensorEvent2 = carSensorEvent;
                                int i4 = ays.b;
                                ((SensorSource) obj).h(carSensorEvent2.floatValues[0]);
                                break;
                            case 1:
                                CarSensorEvent carSensorEvent3 = carSensorEvent;
                                int i5 = ays.b;
                                ((SensorSource) obj).d(carSensorEvent3.floatValues[0]);
                                break;
                            case 2:
                                CarSensorEvent carSensorEvent4 = carSensorEvent;
                                SensorSource sensorSource = (SensorSource) obj;
                                int i6 = ays.b;
                                sensorSource.nativeReportParkingBrakeData(carSensorEvent4.intValues[0] == 1);
                                break;
                            default:
                                CarSensorEvent carSensorEvent5 = carSensorEvent;
                                int i7 = ays.b;
                                ((SensorSource) obj).f(carSensorEvent5.floatValues[0]);
                                break;
                        }
                    }

                    @Override // j$.util.function.Consumer
                    public final /* synthetic */ Consumer andThen(Consumer consumer) {
                        switch (c3) {
                        }
                        return Consumer.CC.$default$andThen(this, consumer);
                    }
                });
                break;
            case 291504903:
                int i4 = -1;
                if (this.l > 0.0f && carSensorEvent.floatValues != null && carSensorEvent.floatValues[0] >= 0.0f) {
                    i4 = Math.round((carSensorEvent.floatValues[0] * 100.0f) / this.l);
                }
                f(ckw.SENSOR_FUEL, new ayo(i4, 0));
                break;
            case 291505923:
                final int i5 = 3;
                f(ckw.SENSOR_ENVIRONMENT_DATA, new Consumer() { // from class: ayp
                    @Override // j$.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (i5) {
                            case 0:
                                CarSensorEvent carSensorEvent2 = carSensorEvent;
                                int i42 = ays.b;
                                ((SensorSource) obj).h(carSensorEvent2.floatValues[0]);
                                break;
                            case 1:
                                CarSensorEvent carSensorEvent3 = carSensorEvent;
                                int i52 = ays.b;
                                ((SensorSource) obj).d(carSensorEvent3.floatValues[0]);
                                break;
                            case 2:
                                CarSensorEvent carSensorEvent4 = carSensorEvent;
                                SensorSource sensorSource = (SensorSource) obj;
                                int i6 = ays.b;
                                sensorSource.nativeReportParkingBrakeData(carSensorEvent4.intValues[0] == 1);
                                break;
                            default:
                                CarSensorEvent carSensorEvent5 = carSensorEvent;
                                int i7 = ays.b;
                                ((SensorSource) obj).f(carSensorEvent5.floatValues[0]);
                                break;
                        }
                    }

                    @Override // j$.util.function.Consumer
                    public final /* synthetic */ Consumer andThen(Consumer consumer) {
                        switch (i5) {
                        }
                        return Consumer.CC.$default$andThen(this, consumer);
                    }
                });
                break;
            default:
                ((csx) c.c().h("com/google/android/apps/auto/aareceiver/sensors/CarSensorsFeed", "handleSensorChanged", 240, "CarSensorsFeed.java")).p("Unhandled sensor event: %s", carSensorEvent);
                break;
        }
    }

    @Override // defpackage.azj
    public final void c(cqw cqwVar) {
        cst listIterator = cqwVar.listIterator();
        while (listIterator.hasNext()) {
            int intValue = ((Integer) ((cry) d).c.get((ckw) listIterator.next())).intValue();
            this.j.registerListener(this.n, intValue, 10);
            CarSensorEvent latestSensorEvent = this.j.getLatestSensorEvent(intValue);
            if (latestSensorEvent != null) {
                b(latestSensorEvent);
            }
        }
    }

    @Override // defpackage.azj
    protected final void d(cqw cqwVar) {
        this.j.unregisterListener(this.n);
        cst listIterator = i.listIterator();
        while (listIterator.hasNext()) {
            this.o.removeMessages(((Integer) listIterator.next()).intValue());
        }
    }
}
