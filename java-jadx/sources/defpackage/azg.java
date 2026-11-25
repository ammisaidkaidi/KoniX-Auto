package defpackage;

import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback;

/* compiled from: PG */
/* loaded from: classes.dex */
final class azg implements CarPropertyManager$CarPropertyEventCallback {
    final /* synthetic */ azi a;

    public azg(azi aziVar) {
        this.a = aziVar;
    }

    public final void onChangeEvent(CarPropertyValue carPropertyValue) {
        if (carPropertyValue.getPropertyId() != 289408000) {
            ((csx) azi.a.c().h("com/google/android/apps/auto/aareceiver/sensors/RearViewMonitor$1", "onChangeEvent", 49, "RearViewMonitor.java")).o("Received event for unregistered property: %d", carPropertyValue.getPropertyId());
            return;
        }
        this.a.h.removeCallbacksAndMessages(null);
        azi aziVar = this.a;
        int i = aziVar.f;
        aziVar.f = ((Integer) carPropertyValue.getValue()).intValue();
        azi aziVar2 = this.a;
        if (aziVar2.f == 2) {
            aziVar2.h.sendEmptyMessageDelayed(1, 500L);
        } else {
            if (i != 2) {
                return;
            }
            aziVar2.h.sendEmptyMessageDelayed(2, 500L);
        }
    }

    public final void onErrorEvent(int i, int i2) {
        ((csx) azi.a.c().h("com/google/android/apps/auto/aareceiver/sensors/RearViewMonitor$1", "onErrorEvent", 75, "RearViewMonitor.java")).q("Received error event for property %d and area %d", i, i2);
    }
}
