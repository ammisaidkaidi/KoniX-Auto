package defpackage;

import android.app.Activity;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class byc {
    private final btx a;

    public byc() {
    }

    public byc(btx btxVar) {
        this.a = btxVar;
    }

    public static byc a(Activity activity) {
        return new byc(new btx(activity.getClass().getName()));
    }

    public final String b() {
        return this.a.a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof byc) && b().equals(((byc) obj).b());
    }

    public final int hashCode() {
        return (b().hashCode() * 31) ^ 1231;
    }

    public final String toString() {
        String str = this.a.a;
        StringBuilder sb = new StringBuilder(str.length() + 74);
        sb.append("MeasurementKey{rawStringEventName=null, noPiiEventName=");
        sb.append(str);
        sb.append(", isActivity=true}");
        return sb.toString();
    }
}
