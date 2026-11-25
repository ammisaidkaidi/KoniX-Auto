package com.google.android.apps.auto.aareceiver.context;

import android.car.CarAppFocusManager;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class VoiceSessionAppFocusManager {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/context/VoiceSessionAppFocusManager");
    public boolean b = false;
    public boolean c = false;
    public final CarAppFocusManager d;
    public final CarAppFocusManager.OnAppFocusOwnershipCallback e;
    private final CarAppFocusManager.OnAppFocusChangedListener f;

    public VoiceSessionAppFocusManager(CarAppFocusManager carAppFocusManager) {
        CarAppFocusManager.OnAppFocusChangedListener onAppFocusChangedListener = new CarAppFocusManager.OnAppFocusChangedListener() { // from class: axd
            @Override // android.car.CarAppFocusManager.OnAppFocusChangedListener
            public final void onAppFocusChanged(int i, boolean z) {
                VoiceSessionAppFocusManager axfVar = VoiceSessionAppFocusManager.this;
                synchronized (axfVar) {
                    if (!axfVar.b) {
                        ((ParameterizedLoggerApi) VoiceSessionAppFocusManager.a.c().h("com/google/android/apps/auto/aareceiver/context/VoiceSessionAppFocusManager", "handleAppFocusChange", 82, "VoiceSessionAppFocusManager.java")).n("handleAppFocusChange called on uninitialized object");
                    }
                }
            }
        };
        this.f = onAppFocusChangedListener;
        carAppFocusManager.getClass();
        this.d = carAppFocusManager;
        carAppFocusManager.addFocusListener(onAppFocusChangedListener, 2);
        this.e = new VoiceAppFocusCallback();
    }

    public final synchronized void a() {
        this.b = true;
    }

    public final synchronized void b() {
        this.d.abandonAppFocus(this.e);
        this.d.removeFocusListener(this.f);
    }
}
