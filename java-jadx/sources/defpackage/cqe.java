package defpackage;

import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cqe extends cqh {
    private final transient cqh a;

    public cqe(cqh cqhVar) {
        this.a = cqhVar;
    }

    private final int w(int i) {
        return (size() - 1) - i;
    }

    private final int x(int i) {
        return size() - i;
    }

    @Override // defpackage.cqh, defpackage.cqa, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.a.contains(obj);
    }

    @Override // defpackage.cqa
    public final boolean f() {
        return this.a.f();
    }

    @Override // java.util.List
    public final Object get(int i) {
        ex.v(i, size());
        return this.a.get(w(i));
    }

    @Override // defpackage.cqh
    public final cqh h() {
        return this.a;
    }

    @Override // defpackage.cqh
    /* renamed from: i */
    public final cqh subList(int i, int i2) {
        ex.q(i, i2, size());
        return this.a.subList(x(i2), x(i)).h();
    }

    @Override // defpackage.cqh, java.util.List
    public final int indexOf(Object obj) {
        int lastIndexOf = this.a.lastIndexOf(obj);
        if (lastIndexOf >= 0) {
            return w(lastIndexOf);
        }
        return -1;
    }

    @Override // defpackage.cqh, java.util.List
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

    @Override // defpackage.cqh, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }
}
