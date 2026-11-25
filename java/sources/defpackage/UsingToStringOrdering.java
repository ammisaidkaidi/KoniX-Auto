package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class UsingToStringOrdering extends GuavaOrdering implements Serializable {
    private static final long serialVersionUID = 0;
    final GuavaOrdering a;

    public UsingToStringOrdering(GuavaOrdering crtVar) {
        this.a = crtVar;
    }

    @Override // defpackage.GuavaOrdering
    public final GuavaOrdering a() {
        return this.a;
    }

    @Override // defpackage.GuavaOrdering, java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.a.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof UsingToStringOrdering) {
            return this.a.equals(((UsingToStringOrdering) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return -this.a.hashCode();
    }

    public final String toString() {
        return this.a.toString().concat(".reverse()");
    }
}
