package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class csd extends cqh {
    private final transient Object[] a;
    private final transient int b;
    private final transient int c;

    public csd(Object[] objArr, int i, int i2) {
        this.a = objArr;
        this.b = i;
        this.c = i2;
    }

    @Override // defpackage.cqa
    public final boolean f() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        ex.v(i, this.c);
        Object obj = this.a[i + i + this.b];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.c;
    }
}
