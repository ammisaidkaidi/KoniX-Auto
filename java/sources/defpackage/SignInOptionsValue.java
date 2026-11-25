package defpackage;

import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SignInOptionsValue implements PendingResultInterface {
    public static final SignInOptionsValue b = new SignInOptionsValue();
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
        if (!(obj instanceof SignInOptionsValue)) {
            return false;
        }
        SignInOptionsValue bqoVar = (SignInOptionsValue) obj;
        boolean z = bqoVar.c;
        boolean z2 = bqoVar.d;
        String str = bqoVar.e;
        if (ThreadAndNullChecksUtil.n(null, null)) {
            boolean z3 = bqoVar.f;
            boolean z4 = bqoVar.i;
            String str2 = bqoVar.g;
            if (ThreadAndNullChecksUtil.n(null, null)) {
                String str3 = bqoVar.h;
                if (ThreadAndNullChecksUtil.n(null, null)) {
                    Long l = bqoVar.j;
                    if (ThreadAndNullChecksUtil.n(null, null)) {
                        Long l2 = bqoVar.k;
                        if (ThreadAndNullChecksUtil.n(null, null)) {
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
