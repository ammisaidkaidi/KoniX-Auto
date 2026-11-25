package defpackage;

import android.car.drivingstate.CarUxRestrictions;
import android.car.drivingstate.CarUxRestrictionsManager;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DrivingStateSensorFeed extends SensorFeed {
    public static final /* synthetic */ int a = 0;
    private static final ImmutableMapBase b;
    private final CarUxRestrictionsManager c;

    static {
        ez.A(16, 1);
        ez.A(8, 2);
        ez.A(64, 8);
        ez.A(4, 16);
        b = ImmutableMapFromEntries.a(4, new Object[]{16, 1, 8, 2, 64, 8, 4, 16});
    }

    public DrivingStateSensorFeed(CarUxRestrictionsManager carUxRestrictionsManager) {
        this.c = carUxRestrictionsManager;
    }

    @Override // com.google.android.apps.auto.aareceiver.sensors.SensorFeed
    public final ImmutableSet a() {
        return ImmutableSet.o(SensorType.SENSOR_DRIVING_STATUS_DATA);
    }

    public final void b(CarUxRestrictions carUxRestrictions) {
        int activeRestrictions = carUxRestrictions.getActiveRestrictions();
        UnmodifiableIterator listIterator = b.entrySet().listIterator();
        int i = 0;
        while (listIterator.hasNext()) {
            Map.Entry entry = (Map.Entry) listIterator.next();
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            if ((intValue & activeRestrictions) != 0) {
                i |= intValue2;
            }
        }
        f(SensorType.SENSOR_DRIVING_STATUS_DATA, new TwoIntConsumerAdapter(i, 2));
    }

    @Override // com.google.android.apps.auto.aareceiver.sensors.SensorFeed
    public final void c(ImmutableSet cqwVar) {
        this.c.registerListener(new CarUxRestrictionsManager.OnUxRestrictionsChangedListener() { // from class: ayt
            @Override // android.car.drivingstate.CarUxRestrictionsManager.OnUxRestrictionsChangedListener
            public final void onUxRestrictionsChanged(CarUxRestrictions carUxRestrictions) {
                DrivingStateSensorFeed.this.b(carUxRestrictions);
            }
        });
        b(this.c.getCurrentCarUxRestrictions());
    }

    @Override // com.google.android.apps.auto.aareceiver.sensors.SensorFeed
    protected final void d(ImmutableSet cqwVar) {
        this.c.unregisterListener();
    }
}
