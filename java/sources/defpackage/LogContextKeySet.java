package defpackage;

import java.util.AbstractSet;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class LogContextKeySet extends AbstractSet {
    final /* synthetic */ BoundedLogContext a;

    public LogContextKeySet(BoundedLogContext cuvVar) {
        this.a = cuvVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new LogContextKeyIterator(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.a.b;
    }
}
