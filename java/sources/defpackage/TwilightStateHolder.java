package defpackage;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TwilightStateHolder {
    public static TwilightStateHolder a;
    public final Context b;
    public final EmptyStubKb c = new EmptyStubKb();
    private final LocationManager d;

    public TwilightStateHolder(Context context, LocationManager locationManager) {
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
