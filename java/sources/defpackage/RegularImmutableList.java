package defpackage;

import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class RegularImmutableList extends ImmutableList {
    private final transient ImmutableList a;

    public RegularImmutableList(ImmutableList cqhVar) {
        this.a = cqhVar;
    }

    private final int w(int i) {
        return (size() - 1) - i;
    }

    private final int x(int i) {
        return size() - i;
    }

    @Override // defpackage.ImmutableList, defpackage.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.a.contains(obj);
    }

    @Override // defpackage.ImmutableCollection
    public final boolean f() {
        return this.a.f();
    }

    @Override // java.util.List
    public final Object get(int i) {
        ex.v(i, size());
        return this.a.get(w(NavInstructionTypeEnum));
    }

    @Override // defpackage.ImmutableList
    public final ImmutableList h() {
        return this.a;
    }

    @Override // defpackage.ImmutableList
    /* renamed from: i */
    public final ImmutableList subList(int i, int i2) {
        ex.q(i, i2, size());
        return this.a.subList(x(i2), x(NavInstructionTypeEnum)).h();
    }

    @Override // defpackage.ImmutableList, java.util.List
    public final int indexOf(Object obj) {
        int lastIndexOf = this.a.lastIndexOf(obj);
        if (lastIndexOf >= 0) {
            return w(lastIndexOf);
        }
        return -1;
    }

    @Override // defpackage.ImmutableList, java.util.List
    public final int lastIndexOf(Object obj) {
        int indexOf = this.a.indexOf(obj);
        if (indexOf >= 0) {
            return w(indexOf);
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.a.size();
    }

    @Override // defpackage.ImmutableList, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }
}
