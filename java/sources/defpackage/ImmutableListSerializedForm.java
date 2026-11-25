package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ImmutableListSerializedForm implements Serializable {
    private static final long serialVersionUID = 0;
    final Object[] a;

    public ImmutableListSerializedForm(Object[] objArr) {
        this.a = objArr;
    }

    Object readResolve() {
        return ImmutableList.o(this.a);
    }
}
