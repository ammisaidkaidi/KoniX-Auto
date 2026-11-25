package defpackage;

import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bqo implements bjw {
    public static final bqo b = new bqo();
    private final boolean c = false;
    private final boolean d = false;
    private final String e = null;
    private final boolean f = false;
    private final boolean i = false;
    private final String g = null;
    private final String h = null;
    private final Long j = null;
    private final Long k = null;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof bqo)) {
            return false;
        }
        bqo bqoVar = (bqo) obj;
        boolean z = bqoVar.c;
        boolean z2 = bqoVar.d;
        String str = bqoVar.e;
        if (hr.n(null, null)) {
            boolean z3 = bqoVar.f;
            boolean z4 = bqoVar.i;
            String str2 = bqoVar.g;
            if (hr.n(null, null)) {
                String str3 = bqoVar.h;
                if (hr.n(null, null)) {
                    Long l = bqoVar.j;
                    if (hr.n(null, null)) {
                        Long l2 = bqoVar.k;
                        if (hr.n(null, null)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{false, false, null, false, false, null, null, null, null});
    }
}
