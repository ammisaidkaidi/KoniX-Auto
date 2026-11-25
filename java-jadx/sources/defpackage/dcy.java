package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dcy {
    private final Object a;
    private final int b;

    public dcy(Object obj, int i) {
        this.a = obj;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof dcy)) {
            return false;
        }
        dcy dcyVar = (dcy) obj;
        return this.a == dcyVar.a && this.b == dcyVar.b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.a) * 65535) + this.b;
    }
}
