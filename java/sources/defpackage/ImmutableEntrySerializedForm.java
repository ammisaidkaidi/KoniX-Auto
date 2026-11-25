package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ImmutableEntrySerializedForm implements Serializable {
    private static final long serialVersionUID = 0;
    final ImmutableMapBase a;

    public ImmutableEntrySerializedForm(ImmutableMapBase cqkVar) {
        this.a = cqkVar;
    }

    Object readResolve() {
        return this.a.entrySet();
    }
}
