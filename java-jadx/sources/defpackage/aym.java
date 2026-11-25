package defpackage;

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
public final class aym extends azj {
    public static final csz a = csz.g("com/google/android/apps/auto/aareceiver/sensors/CarPropertiesFeed");
    static final cqk b;
    static final cqw c;
    private static final cpy e;
    private static final cqk i;
    private final CarPropertyManager j;
    private final Context k;
    private final float l;
    private final CarPropertyManager$CarPropertyEventCallback m = new ayk(this);
    final Set d = new HashSet();
    private final Handler n = new ayl(this, Looper.getMainLooper());

    static {
        cpw cpwVar = new cpw();
        cpwVar.d(291504647, ckw.SENSOR_SPEED);
        cpwVar.d(291504901, ckw.SENSOR_RPM);
        cpwVar.d(291504644, ckw.SENSOR_ODOMETER);
        cpwVar.d(291504903, ckw.SENSOR_FUEL);
        cpwVar.d(287310850, ckw.SENSOR_PARKING_BRAKE);
        cpwVar.d(289408000, ckw.SENSOR_GEAR);
        cpwVar.d(291505923, ckw.SENSOR_ENVIRONMENT_DATA);
        e = cpwVar.b();
        cqi cqiVar = new cqi();
        cqiVar.f(291504647, "android.car.permission.CAR_SPEED");
        cqiVar.f(291504901, "android.car.permission.CAR_ENGINE_DETAILED");
        cqiVar.f(291504644, "android.car.permission.CAR_MILEAGE");
        cqiVar.f(291504903, "android.car.permission.CAR_ENERGY");
        cqiVar.f(287310850, "android.car.permission.CAR_POWERTRAIN");
        cqiVar.f(289408000, "android.car.permission.CAR_POWERTRAIN");
        cqiVar.f(291505923, "android.car.permission.CAR_EXTERIOR_ENVIRONMENT");
        b = cqiVar.c();
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
        cqiVar2.f(4, 101);
        cqiVar2.f(2, 102);
        cqiVar2.f(1, 0);
        cqiVar2.f(8, 100);
        i = cqiVar2.c();
        c = cqw.p(291504647, 291504901);
    }

    public aym(Context context, CarPropertyManager carPropertyManager, CarInfoManager carInfoManager) {
        this.k = context;
        this.j = carPropertyManager;
        this.l = CarCompat.getFuelCapacitySafe(carInfoManager);
    }

    @Override // defpackage.azj
    public final cqw a() {
        cqu k = cqw.k();
        for (CarPropertyConfig carPropertyConfig : CarCompat.getPropertyListSafe(this.j)) {
            ckw ckwVar = (ckw) e.get(Integer.valueOf(carPropertyConfig.getPropertyId()));
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
                f(ckw.SENSOR_PARKING_BRAKE, new azd(((Boolean) carPropertyValue.getValue()).booleanValue(), 1));
                break;
            case 289408000:
                int intValue = ((Integer) carPropertyValue.getValue()).intValue();
                Integer num = (Integer) i.get(Integer.valueOf(intValue));
                if (num == null) {
                    ((csx) a.c().h("com/google/android/apps/auto/aareceiver/sensors/CarPropertiesFeed", "handlePropertyChanged", 253, "CarPropertiesFeed.java")).o("Car in unknown gear: %d", intValue);
                    break;
                } else {
                    f(ckw.SENSOR_GEAR, new ayq(num, 1));
                    break;
                }
            case 291504644:
                float floatValue = ((Float) carPropertyValue.getValue()).floatValue();
                csz.b.y(TimeUnit.SECONDS);
                f(ckw.SENSOR_ODOMETER, new ayj(floatValue, 2));
                break;
            case 291504647:
                float floatValue2 = ((Float) carPropertyValue.getValue()).floatValue();
                csz.b.y(TimeUnit.SECONDS);
                f(ckw.SENSOR_SPEED, new ayj(floatValue2, 1));
                break;
            case 291504901:
                float floatValue3 = ((Float) carPropertyValue.getValue()).floatValue();
                csz.b.y(TimeUnit.SECONDS);
                f(ckw.SENSOR_RPM, new ayj(floatValue3, 0));
                break;
            case 291504903:
                float floatValue4 = ((Float) carPropertyValue.getValue()).floatValue();
                float f = this.l;
                int i2 = -1;
                if (f > 0.0f && floatValue4 >= 0.0f) {
                    i2 = Math.round((floatValue4 * 100.0f) / f);
                }
                csz.b.y(TimeUnit.SECONDS);
                f(ckw.SENSOR_FUEL, new ayo(i2, 1));
                break;
            case 291505923:
                float floatValue5 = ((Float) carPropertyValue.getValue()).floatValue();
                csz.b.y(TimeUnit.SECONDS);
                f(ckw.SENSOR_ENVIRONMENT_DATA, new ayj(floatValue5, 3));
                break;
            default:
                ((csx) a.c().h("com/google/android/apps/auto/aareceiver/sensors/CarPropertiesFeed", "handlePropertyChanged", 271, "CarPropertiesFeed.java")).p("Unhandled sensor event: %s", carPropertyValue);
                break;
        }
    }

    @Override // defpackage.azj
    public final void c(cqw cqwVar) {
        cst listIterator = cqwVar.listIterator();
        while (listIterator.hasNext()) {
            ckw ckwVar = (ckw) listIterator.next();
            int intValue = ((Integer) ((cry) e).c.get(ckwVar)).intValue();
            ckwVar.name();
            CarCompat.registerPropertyCallback(this.j, this.m, intValue, 10.0f);
            CarPropertyValue<?> propertySafe = CarCompat.getPropertySafe(this.j, intValue, 0);
            if (propertySafe != null) {
                b(propertySafe);
            }
        }
    }

    @Override // defpackage.azj
    protected final void d(cqw cqwVar) {
        CarCompat.unregisterPropertyCallback(this.j, this.m);
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            this.n.removeMessages(((Integer) it.next()).intValue());
        }
    }
}
