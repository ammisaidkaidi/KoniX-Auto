package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ReverseImmutableList extends ImmutableList {
    static final ImmutableList a = new ReverseImmutableList(new Object[0], 0);
    final transient Object[] b;
    public final transient int c;

    public ReverseImmutableList(Object[] objArr, int i) {
        this.b = objArr;
        this.c = i;
    }

    @Override // defpackage.ImmutableList, defpackage.ImmutableCollection
    public final int a(Object[] objArr, int i) {
        System.arraycopy(this.b, 0, objArr, i, this.c);
        return i + this.c;
    }

    @Override // defpackage.ImmutableCollection
    public final int b() {
        return this.c;
    }

    @Override // defpackage.ImmutableCollection
    public final int c() {
        return 0;
    }

    @Override // defpackage.ImmutableCollection
    public final boolean f() {
        return false;
    }

    @Override // defpackage.ImmutableCollection
    public final Object[] g() {
        return this.b;
    }

    @Override // java.util.List
    public final Object get(int i) {
        ex.v(i, this.c);
        Object obj = this.b[i];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.c;
    }
}
