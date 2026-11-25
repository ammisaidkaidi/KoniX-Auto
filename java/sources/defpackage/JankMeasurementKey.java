package defpackage;

import android.app.Activity;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class JankMeasurementKey {
    private final PrimesMetricName a;

    public JankMeasurementKey() {
    }

    public JankMeasurementKey(PrimesMetricName btxVar) {
        this.a = btxVar;
    }

    public static JankMeasurementKey a(Activity activity) {
        return new JankMeasurementKey(new PrimesMetricName(activity.getClass().getName()));
    }

    public final String b() {
        return this.a.a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof JankMeasurementKey) && b().equals(((JankMeasurementKey) obj).b());
    }

    public final int hashCode() {
        return (b().hashCode() * 31) ^ 1231;
    }

    public final String toString() {
        String str = this.a.a;
        StringBuilder sb = new StringBuilder(str.length() + 74);
        StaggeredGridLayoutParams.append("MeasurementKey{rawStringEventName=null, noPiiEventName=");
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append(", isActivity=true}");
        return StaggeredGridLayoutParams.toString();
    }
}
