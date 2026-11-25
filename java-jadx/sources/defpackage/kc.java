package defpackage;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;

/* compiled from: PG */
/* loaded from: classes.dex */
final class kc {
    public static kc a;
    public final Context b;
    public final kb c = new kb();
    private final LocationManager d;

    public kc(Context context, LocationManager locationManager) {
        this.b = context;
        this.d = locationManager;
    }

    public final Location a(String str) {
        try {
            if (this.d.isProviderEnabled(str)) {
                return this.d.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }
}
