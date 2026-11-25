package defpackage;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.util.Log;
import com.google.android.projection.protocol.SensorSource;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
final class GpsLocationListener implements LocationListener {
    public static final /* synthetic */ int b = 0;
    final /* synthetic */ LocationSensorFeed a;

    public GpsLocationListener(LocationSensorFeed azcVar) {
        this.a = azcVar;
    }

    @Override // android.location.LocationListener
    public final void onLocationChanged(final Location location) {
        this.a.f(SensorType.SENSOR_LOCATION, new Consumer() { // from class: ayy
            @Override // j$.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }

            @Override // j$.util.function.Consumer
            public final void accept(Object obj) {
                Location location2 = location;
                SensorSource sensorSource = (SensorSource) obj;
                int i = ayz.b;
                if (location2 == null) {
                    Log.w("AHU.SENSOR", "Location and mGpsOverride are both null.");
                    return;
                }
                int round = (int) Math.round(location2.getLatitude() * 1.0E7d);
                int round2 = (int) Math.round(location2.getLongitude() * 1.0E7d);
                boolean hasAccuracy = location2.hasAccuracy();
                double accuracy = location2.getAccuracy();
                Double.isNaN(accuracy);
                int round3 = (int) Math.round(accuracy * 1000.0d);
                boolean hasAltitude = location2.hasAltitude();
                int round4 = (int) Math.round(location2.getAltitude() * 100.0d);
                boolean hasSpeed = location2.hasSpeed();
                double speed = location2.getSpeed();
                Double.isNaN(speed);
                int round5 = (int) Math.round(speed * 1000.0d);
                boolean hasBearing = location2.hasBearing();
                double bearing = location2.getBearing();
                Double.isNaN(bearing);
                sensorSource.nativeReportLocation(0L, round, round2, hasAccuracy, round3, hasAltitude, round4, hasSpeed, round5, hasBearing, (int) Math.round(bearing * 1000000.0d));
            }
        });
    }

    @Override // android.location.LocationListener
    public final void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public final void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public final void onStatusChanged(String str, int i, Bundle bundle) {
    }
}
