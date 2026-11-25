package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ImmutableSetSerializedForm implements Serializable {
    private static final long serialVersionUID = 0;
    final Object[] a;

    public ImmutableSetSerializedForm(Object[] objArr) {
        this.a = objArr;
    }

    Object readResolve() {
        return ImmutableSet.n(this.a);
    }
}
