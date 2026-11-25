package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class ForwardingSetBase implements SetProvider {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SetProvider) {
            return b().equals(((SetProvider) obj).b());
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
