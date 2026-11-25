package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class IdentityFunction implements Serializable, cny {
    private static final long serialVersionUID = 0;
    private final Object a = null;

    @Override // defpackage.GuavaFunction
    public final Object a(Object obj) {
        return null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof IdentityFunction)) {
            return false;
        }
        Object obj2 = ((IdentityFunction) obj).a;
        return ew.t(null, null);
    }

    public final int hashCode() {
        return 0;
    }

    public final String toString() {
        return "Functions.constant(null)";
    }
}
