package defpackage;

import android.car.Car;
import android.car.Car$CarServiceLifecycleListener;
import android.car.drivingstate.CarUxRestrictions;
import android.car.drivingstate.CarUxRestrictionsManager;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ars {
    private static ars d = null;
    public CarUxRestrictions a = a();
    public final Set b = Collections.newSetFromMap(new WeakHashMap());
    public final CarUxRestrictionsManager.OnUxRestrictionsChangedListener c;

    private ars(Context context) {
        CarUxRestrictionsManager.OnUxRestrictionsChangedListener onUxRestrictionsChangedListener = new CarUxRestrictionsManager.OnUxRestrictionsChangedListener() { // from class: arq
            @Override // android.car.drivingstate.CarUxRestrictionsManager.OnUxRestrictionsChangedListener
            public final void onUxRestrictionsChanged(CarUxRestrictions carUxRestrictions) {
                ars arsVar = ars.this;
                if (carUxRestrictions == null) {
                    arsVar.a = ars.a();
                } else {
                    arsVar.a = carUxRestrictions;
                }
                Iterator it = arsVar.b.iterator();
                while (it.hasNext()) {
                    ((arr) it.next()).a(arsVar.a);
                }
            }
        };
        this.c = onUxRestrictionsChangedListener;
        try {
            if (Build.VERSION.SDK_INT >= 30) {
                Car.createCar(context.getApplicationContext(), null, 0L, new Car$CarServiceLifecycleListener() { // from class: arp
                    @Override // android.car.Car$CarServiceLifecycleListener
                    public final void onLifecycleChanged(Car car, boolean z) {
                        ars arsVar = ars.this;
                        if (z) {
                            ars.d(car, arsVar.c);
                        } else {
                            Log.w("CarUxRestrictionsUtil", "Car service disconnected, assuming fully restricted uxr");
                            arsVar.c.onUxRestrictionsChanged(null);
                        }
                    }
                });
            } else {
                d(CarCompat.createCar(context.getApplicationContext()), onUxRestrictionsChangedListener);
            }
        } catch (RuntimeException e) {
            Log.w("CarUxRestrictionsUtil", "Unable to connect to car service, assuming unrestricted", e);
            this.c.onUxRestrictionsChanged(new CarUxRestrictions.Builder(false, 0, 0L).build());
        }
    }

    public static CarUxRestrictions a() {
        return new CarUxRestrictions.Builder(true, 511, 0L).build();
    }

    public static ars b(Context context) {
        if (d == null) {
            d = new ars(context);
        }
        return d;
    }

    public static void d(Car car, CarUxRestrictionsManager.OnUxRestrictionsChangedListener onUxRestrictionsChangedListener) {
        try {
            CarUxRestrictionsManager carUxRestrictionsManager = (CarUxRestrictionsManager) car.getCarManager("uxrestriction");
            carUxRestrictionsManager.registerListener(onUxRestrictionsChangedListener);
            onUxRestrictionsChangedListener.onUxRestrictionsChanged(carUxRestrictionsManager.getCurrentCarUxRestrictions());
        } catch (Throwable th) {
            Log.e("CarUxRestrictionsUtil", "Car not connected", th);
        }
    }

    public final void c(arr arrVar) {
        this.b.add(arrVar);
        arrVar.a(this.a);
    }

    public final void e(arr arrVar) {
        this.b.remove(arrVar);
    }
}
