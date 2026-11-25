package defpackage;

import android.text.TextUtils;
import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
final class adf {
    final int a;
    final int b;
    final String c;

    public adf(Preference preference) {
        this.c = preference.getClass().getName();
        this.a = preference.getLayoutResource();
        this.b = preference.getWidgetLayoutResource();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof adf)) {
            return false;
        }
        adf adfVar = (adf) obj;
        return this.a == adfVar.a && this.b == adfVar.b && TextUtils.equals(this.c, adfVar.c);
    }

    public final int hashCode() {
        return ((((this.a + 527) * 31) + this.b) * 31) + this.c.hashCode();
    }
}
