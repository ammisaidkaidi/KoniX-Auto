package com.google.android.apps.auto.aareceiver.ui;

import android.car.CarOccupantZoneManager;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.view.Display;
import j$.util.Optional;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ClusterDisplayProvider {
    private static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/ui/ClusterDisplayProvider");
    private final Context b;
    private final Optional c;
    private final String d = "android.hardware.display.category.PRESENTATION";

    public ClusterDisplayProvider(Context context, Optional optional) {
        this.b = context;
        this.c = optional;
    }

    public final Optional a() {
        CarOccupantZoneManager.OccupantZoneInfo occupantZoneInfo;
        if (Build.VERSION.SDK_INT <= 29) {
            Display[] displays = ((DisplayManager) this.b.getSystemService(DisplayManager.class)).getDisplays(this.d);
            if (displays.length != 0) {
                return Optional.of(displays[0]);
            }
            ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/ui/ClusterDisplayProvider", "getClusterDisplayQOrLower", 59, "ClusterDisplayProvider.java")).n("Could not retrieve cluster display.");
            return Optional.empty();
        }
        if (!this.c.isPresent()) {
            ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/ui/ClusterDisplayProvider", "getClusterDisplayROrGreater", 65, "ClusterDisplayProvider.java")).n("CarOccupantZoneManager null, could not retrieve cluster display.");
            return Optional.empty();
        }
        CarOccupantZoneManager carOccupantZoneManager = (CarOccupantZoneManager) this.c.get();
        Iterator<CarOccupantZoneManager.OccupantZoneInfo> it = carOccupantZoneManager.getAllOccupantZones().iterator();
        while (true) {
            if (!it.hasNext()) {
                occupantZoneInfo = null;
                break;
            }
            occupantZoneInfo = it.next();
            if (occupantZoneInfo.occupantType == 0) {
                break;
            }
        }
        if (occupantZoneInfo != null) {
            return Optional.ofNullable(carOccupantZoneManager.getDisplayForOccupant(occupantZoneInfo, 2));
        }
        ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/ui/ClusterDisplayProvider", "getClusterDisplayROrGreater", 73, "ClusterDisplayProvider.java")).n("OccupantZoneInfo null, could not retrieve cluster display.");
        return Optional.empty();
    }
}
