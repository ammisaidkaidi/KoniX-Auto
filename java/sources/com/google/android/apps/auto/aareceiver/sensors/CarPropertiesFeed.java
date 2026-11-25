package com.google.android.apps.auto.aareceiver.sensors;

import android.car.CarInfoManager;
import android.car.hardware.CarPropertyConfig;
import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CarPropertiesFeed extends SensorFeed {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/sensors/CarPropertiesFeed");
    static final ImmutableMapBase b;
    static final ImmutableSet c;
    private static final RegularImmutableMap e;
    private static final ImmutableMapBase i;
    private final CarPropertyManager j;
    private final Context k;
    private final float l;
    private final CarPropertyManager$CarPropertyEventCallback m = new CarPropertiesEventCallback(this);
    final Set d = new HashSet();
    private final Handler n = new CarPropertiesFeedHandler(this, Looper.getMainLooper());

    static {
        ImmutableMapBuilderWithCapacity cpwVar = new ImmutableMapBuilderWithCapacity();
        cpwVar.d(291504647, SensorType.SENSOR_SPEED);
        cpwVar.d(291504901, SensorType.SENSOR_RPM);
        cpwVar.d(291504644, SensorType.SENSOR_ODOMETER);
        cpwVar.d(291504903, SensorType.SENSOR_FUEL);
        cpwVar.d(287310850, SensorType.SENSOR_PARKING_BRAKE);
        cpwVar.d(289408000, SensorType.SENSOR_GEAR);
        cpwVar.d(291505923, SensorType.SENSOR_ENVIRONMENT_DATA);
        e = cpwVar.b();
        ImmutableMapBuilder cqiVar = new ImmutableMapBuilder();
        cqiVar.f(291504647, "android.car.permission.CAR_SPEED");
        cqiVar.f(291504901, "android.car.permission.CAR_ENGINE_DETAILED");
        cqiVar.f(291504644, "android.car.permission.CAR_MILEAGE");
        cqiVar.f(291504903, "android.car.permission.CAR_ENERGY");
        cqiVar.f(287310850, "android.car.permission.CAR_POWERTRAIN");
        cqiVar.f(289408000, "android.car.permission.CAR_POWERTRAIN");
        cqiVar.f(291505923, "android.car.permission.CAR_EXTERIOR_ENVIRONMENT");
        b = cqiVar.c();
        ImmutableMapBuilder cqiVar2 = new ImmutableMapBuilder();
        cqiVar2.f(16, 1);
        cqiVar2.f(32, 2);
        cqiVar2.f(64, 3);
        cqiVar2.f(128, 4);
        cqiVar2.f(256, 5);
        cqiVar2.f(512, 6);
        cqiVar2.f(1024, 7);
        cqiVar2.f(2048, 8);
        cqiVar2.f(4096, 9);
        cqiVar2.f(4, 101);
        cqiVar2.f(2, 102);
        cqiVar2.f(1, 0);
        cqiVar2.f(8, 100);
        i = cqiVar2.c();
        c = ImmutableSet.p(291504647, 291504901);
    }

    public CarPropertiesFeed(Context context, CarPropertyManager carPropertyManager, CarInfoManager carInfoManager) {
        this.k = context;
        this.j = carPropertyManager;
        this.l = CarCompat.getFuelCapacitySafe(carInfoManager);
    }

    @Override // com.google.android.apps.auto.aareceiver.sensors.SensorFeed
    public final ImmutableSet a() {
        ImmutableSetBuilder k = ImmutableSet.k();
        for (CarPropertyConfig carPropertyConfig : CarCompat.getPropertyListSafe(this.j)) {
            SensorType ckwVar = (SensorType) e.get(Integer.valueOf(carPropertyConfig.getPropertyId()));
            if (ckwVar != null) {
                if (this.k.checkSelfPermission((String) b.get(Integer.valueOf(carPropertyConfig.getPropertyId()))) == 0) {
                    ckwVar.name();
                    carPropertyConfig.getChangeMode();
                    k.d(ckwVar);
                    if (c.contains(Integer.valueOf(carPropertyConfig.getPropertyId())) && carPropertyConfig.getChangeMode() != 2) {
                        ckwVar.name();
                        this.d.add(Integer.valueOf(carPropertyConfig.getPropertyId()));
                    }
                }
            }
        }
        return k.f();
    }

    public final void b(CarPropertyValue carPropertyValue) {
        int propertyId = carPropertyValue.getPropertyId();
        if (this.d.contains(Integer.valueOf(propertyId))) {
            this.n.removeMessages(propertyId);
            this.n.sendMessageDelayed(this.n.obtainMessage(propertyId, carPropertyValue), 1000L);
        }
        switch (propertyId) {
            case 287310850:
                f(SensorType.SENSOR_PARKING_BRAKE, new BooleanSensorConsumer(((Boolean) carPropertyValue.getValue()).booleanValue(), 1));
                break;
            case 289408000:
                int intValue = ((Integer) carPropertyValue.getValue()).intValue();
                Integer num = (Integer) i.get(Integer.valueOf(intValue));
                if (num == null) {
                    ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/sensors/CarPropertiesFeed", "handlePropertyChanged", 253, "CarPropertiesFeed.java")).o("Car in unknown gear: %d", intValue);
                    break;
                } else {
                    f(SensorType.SENSOR_GEAR, new IntPairConsumerAdapter(num, 1));
                    break;
                }
            case 291504644:
                float floatValue = ((Float) carPropertyValue.getValue()).floatValue();
                FloggerLoggerFactory.b.y(TimeUnit.SECONDS);
                f(SensorType.SENSOR_ODOMETER, new FloatConsumerAdapter(floatValue, 2));
                break;
            case 291504647:
                float floatValue2 = ((Float) carPropertyValue.getValue()).floatValue();
                FloggerLoggerFactory.b.y(TimeUnit.SECONDS);
                f(SensorType.SENSOR_SPEED, new FloatConsumerAdapter(floatValue2, 1));
                break;
            case 291504901:
                float floatValue3 = ((Float) carPropertyValue.getValue()).floatValue();
                FloggerLoggerFactory.b.y(TimeUnit.SECONDS);
                f(SensorType.SENSOR_RPM, new FloatConsumerAdapter(floatValue3, 0));
                break;
            case 291504903:
                float floatValue4 = ((Float) carPropertyValue.getValue()).floatValue();
                float f = this.l;
                int i2 = -1;
                if (NavManeuverTypeEnum > 0.0f && floatValue4 >= 0.0f) {
                    i2 = Math.round((floatValue4 * 100.0f) / f);
                }
                FloggerLoggerFactory.b.y(TimeUnit.SECONDS);
                f(SensorType.SENSOR_FUEL, new TwoIntConsumerAdapter(i2, 1));
                break;
            case 291505923:
                float floatValue5 = ((Float) carPropertyValue.getValue()).floatValue();
                FloggerLoggerFactory.b.y(TimeUnit.SECONDS);
                f(SensorType.SENSOR_ENVIRONMENT_DATA, new FloatConsumerAdapter(floatValue5, 3));
                break;
            default:
                ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/sensors/CarPropertiesFeed", "handlePropertyChanged", 271, "CarPropertiesFeed.java")).p("Unhandled sensor event: %s", carPropertyValue);
                break;
        }
    }

    @Override // com.google.android.apps.auto.aareceiver.sensors.SensorFeed
    public final void c(ImmutableSet cqwVar) {
        UnmodifiableIterator listIterator = cqwVar.listIterator();
        while (listIterator.hasNext()) {
            SensorType ckwVar = (SensorType) listIterator.next();
            int intValue = ((Integer) ((RegularImmutableBiMap) e).c.get(ckwVar)).intValue();
            ckwVar.name();
            CarCompat.registerPropertyCallback(this.j, this.m, intValue, 10.0f);
            CarPropertyValue<?> propertySafe = CarCompat.getPropertySafe(this.j, intValue, 0);
            if (propertySafe != null) {
                b(propertySafe);
            }
        }
    }

    @Override // com.google.android.apps.auto.aareceiver.sensors.SensorFeed
    protected final void d(ImmutableSet cqwVar) {
        CarCompat.unregisterPropertyCallback(this.j, this.m);
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            this.n.removeMessages(((Integer) it.next()).intValue());
        }
    }
}
