package defpackage;

import android.car.drivingstate.CarUxRestrictions;
import android.car.drivingstate.CarUxRestrictionsManager;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ayu extends azj {
    public static final /* synthetic */ int a = 0;
    private static final cqk b;
    private final CarUxRestrictionsManager c;

    static {
        ez.A(16, 1);
        ez.A(8, 2);
        ez.A(64, 8);
        ez.A(4, 16);
        b = cse.a(4, new Object[]{16, 1, 8, 2, 64, 8, 4, 16});
    }

    public ayu(CarUxRestrictionsManager carUxRestrictionsManager) {
        this.c = carUxRestrictionsManager;
    }

    @Override // defpackage.azj
    public final cqw a() {
        return cqw.o(ckw.SENSOR_DRIVING_STATUS_DATA);
    }

    public final void b(CarUxRestrictions carUxRestrictions) {
        int activeRestrictions = carUxRestrictions.getActiveRestrictions();
        cst listIterator = b.entrySet().listIterator();
        int i = 0;
        while (listIterator.hasNext()) {
            Map.Entry entry = (Map.Entry) listIterator.next();
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            if ((intValue & activeRestrictions) != 0) {
                i |= intValue2;
            }
        }
        f(ckw.SENSOR_DRIVING_STATUS_DATA, new ayo(i, 2));
    }

    @Override // defpackage.azj
    public final void c(cqw cqwVar) {
        this.c.registerListener(new CarUxRestrictionsManager.OnUxRestrictionsChangedListener() { // from class: ayt
            @Override // android.car.drivingstate.CarUxRestrictionsManager.OnUxRestrictionsChangedListener
            public final void onUxRestrictionsChanged(CarUxRestrictions carUxRestrictions) {
                ayu.this.b(carUxRestrictions);
            }
        });
        b(this.c.getCurrentCarUxRestrictions());
    }

    @Override // defpackage.azj
    protected final void d(cqw cqwVar) {
        this.c.unregisterListener();
    }
}
