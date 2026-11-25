package defpackage;

import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class RegularImmutableSet extends ImmutableSet {
    public final transient Object[] a;
    public final transient int b;
    public final transient int c;
    private final transient ImmutableMapBase d;

    public RegularImmutableSet(ImmutableMapBase cqkVar, Object[] objArr, int i, int i2) {
        this.d = cqkVar;
        this.a = objArr;
        this.b = i;
        this.c = i2;
    }

    @Override // defpackage.ImmutableCollection
    public final int a(Object[] objArr, int i) {
        return d().a(objArr, i);
    }

    @Override // defpackage.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.d.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.ImmutableSet, defpackage.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: e */
    public final UnmodifiableIterator listIterator() {
        return d().iterator();
    }

    @Override // defpackage.ImmutableCollection
    public final boolean f() {
        return true;
    }

    @Override // defpackage.ImmutableSet
    public final ImmutableList i() {
        return new ImmutableSetAsList(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.c;
    }
}
