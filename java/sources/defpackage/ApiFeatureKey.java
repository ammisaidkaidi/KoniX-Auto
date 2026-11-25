package defpackage;

import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ApiFeatureKey {
    public final ApiKey a;
    public final ApiAvailabilityVersionInfo b;

    public ApiFeatureKey(ApiKey bksVar, ApiAvailabilityVersionInfo bjbVar) {
        this.a = bksVar;
        this.b = bjbVar;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof ApiFeatureKey)) {
            ApiFeatureKey blkVar = (ApiFeatureKey) obj;
            if (ThreadAndNullChecksUtil.n(this.a, blkVar.a) && ThreadAndNullChecksUtil.n(this.b, blkVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b});
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        ViewCompatApi28Statics.d("key", this.a, arrayList);
        ViewCompatApi28Statics.d("feature", this.b, arrayList);
        return ViewCompatApi28Statics.c(arrayList, this);
    }
}
