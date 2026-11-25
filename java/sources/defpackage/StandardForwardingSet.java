package defpackage;

import java.io.Serializable;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StandardForwardingSet extends ForwardingSetBase implements Serializable {
    public static final StandardForwardingSet a = new StandardForwardingSet(ImmutableList.p());
    public static final StandardForwardingSet b = new StandardForwardingSet(ImmutableList.q(crv.a));
    private final transient ImmutableList c;

    public StandardForwardingSet(ImmutableList cqhVar) {
        this.c = cqhVar;
    }

    public static RangeSetBuilder a() {
        return new RangeSetBuilder();
    }

    @Override // defpackage.SetProvider
    public final /* bridge */ /* synthetic */ Set b() {
        return this.c.isEmpty() ? csf.a : new RegularImmutableSortedSet(this.c, GuavaRange.a());
    }

    Object writeReplace() {
        return new SubListSerializedForm(this.c);
    }
}
