package defpackage;

import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cph extends AbstractCollection {
    final /* synthetic */ cpi a;

    public cph(cpi cpiVar) {
        this.a = cpiVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        cpi cpiVar = this.a;
        Map j = cpiVar.j();
        return j != null ? j.values().iterator() : new cpc(cpiVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.a.size();
    }
}
