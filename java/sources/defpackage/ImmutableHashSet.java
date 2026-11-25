package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ImmutableHashSet extends ImmutableSet {
    public static final ImmutableHashSet a;
    private static final Object[] e;
    final transient Object[] b;
    public final transient int c;
    final transient Object[] d;
    private final transient int f;
    private final transient int g;

    static {
        Object[] objArr = new Object[0];
        e = objArr;
        a = new ImmutableHashSet(objArr, 0, objArr, 0, 0);
    }

    public ImmutableHashSet(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.b = objArr;
        this.c = i;
        this.d = objArr2;
        this.f = i2;
        this.g = i3;
    }

    @Override // defpackage.ImmutableCollection
    public final int a(Object[] objArr, int i) {
        System.arraycopy(this.b, 0, objArr, i, this.g);
        return i + this.g;
    }

    @Override // defpackage.ImmutableCollection
    public final int b() {
        return this.g;
    }

    @Override // defpackage.ImmutableCollection
    public final int c() {
        return 0;
    }

    @Override // defpackage.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        Object[] objArr = this.d;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int q = ez.q(obj);
        while (true) {
            int i = q & this.f;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            q = i + 1;
        }
    }

    @Override // defpackage.ImmutableSet, defpackage.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: e */
    public final UnmodifiableIterator listIterator() {
        return d().iterator();
    }

    @Override // defpackage.ImmutableCollection
    public final boolean f() {
        return false;
    }

    @Override // defpackage.ImmutableCollection
    public final Object[] g() {
        return this.b;
    }

    @Override // defpackage.ImmutableSet
    public final boolean h() {
        return true;
    }

    @Override // defpackage.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.c;
    }

    @Override // defpackage.ImmutableSet
    public final ImmutableList i() {
        return ImmutableList.l(this.b, this.g);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.g;
    }
}
