package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dnz implements Serializable {
    public final Object a;
    public final Object b;

    public dnz(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dnz)) {
            return false;
        }
        dnz dnzVar = (dnz) obj;
        return dpx.e(this.a, dnzVar.a) && dpx.e(this.b, dnzVar.b);
    }

    public final int hashCode() {
        Object obj = this.a;
        int hashCode = (obj != null ? obj.hashCode() : 0) * 31;
        Object obj2 = this.b;
        return hashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return '(' + this.a + ", " + this.b + ')';
    }
}
