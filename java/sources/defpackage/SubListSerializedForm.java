package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SubListSerializedForm implements Serializable {
    private final ImmutableList a;

    public SubListSerializedForm(ImmutableList cqhVar) {
        this.a = cqhVar;
    }

    Object readResolve() {
        return this.a.isEmpty() ? cqt.a : GuavaCollectPreconditionsUtil.G(this.a, ImmutableList.q(crv.a)) ? cqt.b : new StandardForwardingSet(this.a);
    }
}
