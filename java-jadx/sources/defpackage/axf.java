package defpackage;

import android.car.CarAppFocusManager;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class axf {
    public static final csz a = csz.g("com/google/android/apps/auto/aareceiver/context/VoiceSessionAppFocusManager");
    public boolean b = false;
    public boolean c = false;
    public final CarAppFocusManager d;
    public final CarAppFocusManager.OnAppFocusOwnershipCallback e;
    private final CarAppFocusManager.OnAppFocusChangedListener f;

    public axf(CarAppFocusManager carAppFocusManager) {
        CarAppFocusManager.OnAppFocusChangedListener onAppFocusChangedListener = new CarAppFocusManager.OnAppFocusChangedListener() { // from class: axd
            @Override // android.car.CarAppFocusManager.OnAppFocusChangedListener
            public final void onAppFocusChanged(int i, boolean z) {
                axf axfVar = axf.this;
                synchronized (axfVar) {
                    if (!axfVar.b) {
                        ((csx) axf.a.c().h("com/google/android/apps/auto/aareceiver/context/VoiceSessionAppFocusManager", "handleAppFocusChange", 82, "VoiceSessionAppFocusManager.java")).n("handleAppFocusChange called on uninitialized object");
                    }
                }
            }
        };
        this.f = onAppFocusChangedListener;
        carAppFocusManager.getClass();
        this.d = carAppFocusManager;
        carAppFocusManager.addFocusListener(onAppFocusChangedListener, 2);
        this.e = new axe();
    }

    public final synchronized void a() {
        this.b = true;
    }

    public final synchronized void b() {
        this.d.abandonAppFocus(this.e);
        this.d.removeFocusListener(this.f);
    }
}
