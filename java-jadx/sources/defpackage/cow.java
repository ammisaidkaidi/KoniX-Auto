package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class cow implements crx {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof crx) {
            return b().equals(((crx) obj).b());
        }
        return false;
    }

    public final int hashCode() {
        return b().hashCode();
    }

    public final String toString() {
        return b().toString();
    }
}
