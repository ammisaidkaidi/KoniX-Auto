package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SerializableObjectPair implements Serializable {
    public final Object a;
    public final Object b;

    public SerializableObjectPair(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SerializableObjectPair)) {
            return false;
        }
        SerializableObjectPair dnzVar = (SerializableObjectPair) obj;
        return CommonObjectsAndPreconditionsUtil.e(this.a, dnzVar.a) && CommonObjectsAndPreconditionsUtil.e(this.b, dnzVar.b);
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
