package defpackage;

import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PendingResultStubImpl implements PendingResultInterface {
    public static final PendingResultStubImpl b = new PendingResultStubImpl();
    private final String c = null;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PendingResultStubImpl)) {
            return false;
        }
        String str = ((PendingResultStubImpl) obj).c;
        return ThreadAndNullChecksUtil.n(null, null);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{null});
    }
}
