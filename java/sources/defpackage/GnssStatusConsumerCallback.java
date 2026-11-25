package defpackage;

import android.location.GnssStatus;
import com.google.android.projection.protocol.SensorSource;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
final class GnssStatusConsumerCallback extends GnssStatus.Callback {
    final /* synthetic */ LocationSensorFeed a;

    public GnssStatusConsumerCallback(LocationSensorFeed azcVar) {
        this.a = azcVar;
    }

    @Override // android.location.GnssStatus.Callback
    public final void onSatelliteStatusChanged(GnssStatus gnssStatus) {
        LocationSensorFeed azcVar = this.a;
        int i = 0;
        final int i2 = 0;
        for (int i3 = 0; i3 < gnssStatus.getSatelliteCount(); i3++) {
            if (gnssStatus.getConstellationType(i3) == 1) {
                i++;
            }
            if (gnssStatus.usedInFix(i3)) {
                i2++;
            }
        }
        final int[] iArr = new int[i];
        final float[] fArr = new float[i];
        final boolean[] zArr = new boolean[i];
        final float[] fArr2 = new float[i];
        final float[] fArr3 = new float[i];
        int i4 = 0;
        for (int i5 = 0; i5 < gnssStatus.getSatelliteCount(); i5++) {
            if (gnssStatus.getConstellationType(i5) == 1) {
                iArr[i4] = gnssStatus.getSvid(i5);
                fArr[i4] = gnssStatus.getCn0DbHz(i5);
                zArr[i4] = gnssStatus.usedInFix(i5);
                fArr2[i4] = gnssStatus.getAzimuthDegrees(i5);
                fArr3[i4] = gnssStatus.getElevationDegrees(i5);
                i4++;
            }
        }
        final int satelliteCount = gnssStatus.getSatelliteCount();
        azcVar.f(SensorType.SENSOR_GPS_SATELLITE_DATA, new Consumer() { // from class: ayw
            @Override // j$.util.function.Consumer
            public final void accept(Object obj) {
                int i6 = i2;
                int i7 = satelliteCount;
                int[] iArr2 = iArr;
                float[] fArr4 = fArr;
                ((SensorSource) obj).nativeReportGpsSatelliteData(i6, true, i7, iArr2, SensorSource.e(fArr4), zArr, SensorSource.e(fArr2), SensorSource.e(fArr3));
            }

            @Override // j$.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }
        });
    }
}
