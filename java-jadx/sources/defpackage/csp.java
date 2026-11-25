package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class csp extends cqw {
    final transient Object a;

    public csp(Object obj) {
        obj.getClass();
        this.a = obj;
    }

    @Override // defpackage.cqa
    public final int a(Object[] objArr, int i) {
        objArr[i] = this.a;
        return i + 1;
    }

    @Override // defpackage.cqa, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.a.equals(obj);
    }

    @Override // defpackage.cqw, defpackage.cqa
    public final cqh d() {
        return cqh.q(this.a);
    }

    @Override // defpackage.cqw, defpackage.cqa, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: e */
    public final cst listIterator() {
        return new crj(this.a);
    }

    @Override // defpackage.cqa
    public final boolean f() {
        return false;
    }

    @Override // defpackage.cqw, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.a.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        sb.append('[');
        sb.append(obj);
        sb.append(']');
        return sb.toString();
    }
}
