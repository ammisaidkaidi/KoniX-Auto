package android.car;

import android.view.Display;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public class CarOccupantZoneManager {

    public static final class OccupantZoneInfo {
        public int occupantType;
        public int seat;
        public int zoneId;
    }

    public List<OccupantZoneInfo> getAllOccupantZones() {
        return Collections.emptyList();
    }

    public Display getDisplayForOccupant(OccupantZoneInfo occupantZoneInfo, int i) {
        return null;
    }
}
