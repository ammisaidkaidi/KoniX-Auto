package defpackage;

import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
class cov implements crq {
    @Override // defpackage.crq
    public Map a() {
        throw null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof crq) {
            return a().equals(((crq) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return a().toString();
    }
}
