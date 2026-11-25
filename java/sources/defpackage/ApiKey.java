package defpackage;

import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ApiKey {
    public final ApiClientKey a;
    private final int b;
    private final PendingResultInterface c;
    private final String d;

    public ApiKey(ApiClientKey bjyVar, PendingResultInterface bjwVar, String str) {
        this.a = bjyVar;
        this.c = bjwVar;
        this.d = str;
        this.b = Arrays.hashCode(new Object[]{bjyVar, bjwVar, str});
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApiKey)) {
            return false;
        }
        ApiKey bksVar = (ApiKey) obj;
        return ThreadAndNullChecksUtil.n(this.a, bksVar.a) && ThreadAndNullChecksUtil.n(this.c, bksVar.c) && ThreadAndNullChecksUtil.n(this.d, bksVar.d);
    }

    public final int hashCode() {
        return this.b;
    }
}
