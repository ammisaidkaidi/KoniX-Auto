package defpackage;

import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bks {
    public final bjy a;
    private final int b;
    private final bjw c;
    private final String d;

    public bks(bjy bjyVar, bjw bjwVar, String str) {
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
        if (!(obj instanceof bks)) {
            return false;
        }
        bks bksVar = (bks) obj;
        return hr.n(this.a, bksVar.a) && hr.n(this.c, bksVar.c) && hr.n(this.d, bksVar.d);
    }

    public final int hashCode() {
        return this.b;
    }
}
