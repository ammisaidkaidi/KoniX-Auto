package defpackage;

import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ayk implements CarPropertyManager$CarPropertyEventCallback {
    final /* synthetic */ aym a;

    public ayk(aym aymVar) {
        this.a = aymVar;
    }

    public final void onChangeEvent(CarPropertyValue carPropertyValue) {
        this.a.b(carPropertyValue);
    }

    public final void onErrorEvent(int i, int i2) {
        ((csx) aym.a.c().h("com/google/android/apps/auto/aareceiver/sensors/CarPropertiesFeed$1", "onErrorEvent", 52, "CarPropertiesFeed.java")).q("Error event for property id %d in area %d", i, i2);
    }
}
