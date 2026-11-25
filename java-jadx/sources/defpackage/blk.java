package defpackage;

import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
final class blk {
    public final bks a;
    public final bjb b;

    public blk(bks bksVar, bjb bjbVar) {
        this.a = bksVar;
        this.b = bjbVar;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof blk)) {
            blk blkVar = (blk) obj;
            if (hr.n(this.a, blkVar.a) && hr.n(this.b, blkVar.b)) {
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
        hq.d("key", this.a, arrayList);
        hq.d("feature", this.b, arrayList);
        return hq.c(arrayList, this);
    }
}
