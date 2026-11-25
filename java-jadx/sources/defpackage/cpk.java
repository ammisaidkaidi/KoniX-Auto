package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cpk extends AbstractSet implements Serializable {
    transient Object[] a;
    public transient int b;
    private transient Object c;
    private transient int[] d;
    private transient int e;

    public cpk() {
        g(3);
    }

    public static cpk c() {
        return new cpk();
    }

    private final int i() {
        return (1 << (this.b & 31)) - 1;
    }

    private final int j(int i, int i2, int i3, int i4) {
        Object x = ez.x(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            ez.z(x, i3 & i5, i4 + 1);
        }
        Object k = k();
        int[] m = m();
        for (int i6 = 0; i6 <= i; i6++) {
            int v = ez.v(k, i6);
            while (v != 0) {
                int i7 = v - 1;
                int i8 = m[i7];
                int r = ez.r(i8, i) | i6;
                int i9 = r & i5;
                int v2 = ez.v(x, i9);
                ez.z(x, i9, v);
                m[i7] = ez.s(r, v2, i5);
                v = i8 & i;
            }
        }
        this.c = x;
        l(i5);
        return i5;
    }

    private final Object k() {
        Object obj = this.c;
        obj.getClass();
        return obj;
    }

    private final void l(int i) {
        this.b = ez.s(this.b, 32 - Integer.numberOfLeadingZeros(i), 31);
    }

    private final int[] m() {
        int[] iArr = this.d;
        iArr.getClass();
        return iArr;
    }

    private final Object[] n() {
        Object[] objArr = this.a;
        objArr.getClass();
        return objArr;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt < 0) {
            StringBuilder sb = new StringBuilder(25);
            sb.append("Invalid size: ");
            sb.append(readInt);
            throw new InvalidObjectException(sb.toString());
        }
        g(readInt);
        for (int i = 0; i < readInt; i++) {
            add(objectInputStream.readObject());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator it = iterator();
        while (it.hasNext()) {
            objectOutputStream.writeObject(it.next());
        }
    }

    final int a() {
        return isEmpty() ? -1 : 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int min;
        if (h()) {
            ex.s(h(), "Arrays already allocated");
            int i = this.b;
            int w = ez.w(i);
            this.c = ez.x(w);
            l(w - 1);
            this.d = new int[i];
            this.a = new Object[i];
        }
        Set e = e();
        if (e != null) {
            return e.add(obj);
        }
        int[] m = m();
        Object[] n = n();
        int i2 = this.e;
        int i3 = i2 + 1;
        int q = ez.q(obj);
        int i4 = i();
        int i5 = q & i4;
        int v = ez.v(k(), i5);
        if (v != 0) {
            int r = ez.r(q, i4);
            int i6 = 0;
            while (true) {
                int i7 = v - 1;
                int i8 = m[i7];
                if (ez.r(i8, i4) == r && ew.t(obj, n[i7])) {
                    return false;
                }
                int i9 = i8 & i4;
                i6++;
                if (i9 != 0) {
                    v = i9;
                } else {
                    if (i6 >= 9) {
                        LinkedHashSet linkedHashSet = new LinkedHashSet(i() + 1, 1.0f);
                        int a = a();
                        while (a >= 0) {
                            linkedHashSet.add(d(a));
                            a = b(a);
                        }
                        this.c = linkedHashSet;
                        this.d = null;
                        this.a = null;
                        f();
                        return linkedHashSet.add(obj);
                    }
                    if (i3 > i4) {
                        i4 = j(i4, ez.t(i4), q, i2);
                    } else {
                        m[i7] = ez.s(i8, i3, i4);
                    }
                }
            }
        } else if (i3 > i4) {
            i4 = j(i4, ez.t(i4), q, i2);
        } else {
            ez.z(k(), i5, i3);
        }
        int length = m().length;
        if (i3 > length && (min = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            this.d = Arrays.copyOf(m(), min);
            this.a = Arrays.copyOf(n(), min);
        }
        m()[i2] = ez.s(q, 0, i4);
        n()[i2] = obj;
        this.e = i3;
        f();
        return true;
    }

    final int b(int i) {
        int i2 = i + 1;
        if (i2 < this.e) {
            return i2;
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        if (h()) {
            return;
        }
        f();
        Set e = e();
        if (e != null) {
            this.b = hh.u(size(), 3);
            e.clear();
            this.c = null;
            this.e = 0;
            return;
        }
        Arrays.fill(n(), 0, this.e, (Object) null);
        ez.y(k());
        Arrays.fill(m(), 0, this.e, 0);
        this.e = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (h()) {
            return false;
        }
        Set e = e();
        if (e != null) {
            return e.contains(obj);
        }
        int q = ez.q(obj);
        int i = i();
        int v = ez.v(k(), q & i);
        if (v == 0) {
            return false;
        }
        int r = ez.r(q, i);
        do {
            int i2 = v - 1;
            int i3 = m()[i2];
            if (ez.r(i3, i) == r && ew.t(obj, d(i2))) {
                return true;
            }
            v = i3 & i;
        } while (v != 0);
        return false;
    }

    public final Object d(int i) {
        return n()[i];
    }

    final Set e() {
        Object obj = this.c;
        if (obj instanceof Set) {
            return (Set) obj;
        }
        return null;
    }

    final void f() {
        this.b += 32;
    }

    final void g(int i) {
        ex.m(true, "Expected size must be >= 0");
        this.b = hh.u(i, 1);
    }

    final boolean h() {
        return this.c == null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        Set e = e();
        return e != null ? e.iterator() : new cpj(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int i;
        int i2;
        if (h()) {
            return false;
        }
        Set e = e();
        if (e != null) {
            return e.remove(obj);
        }
        int i3 = i();
        int u = ez.u(obj, null, i3, k(), m(), n(), null);
        if (u == -1) {
            return false;
        }
        Object k = k();
        int[] m = m();
        Object[] n = n();
        int size = size() - 1;
        if (u < size) {
            Object obj2 = n[size];
            n[u] = obj2;
            n[size] = null;
            m[u] = m[size];
            m[size] = 0;
            int q = ez.q(obj2) & i3;
            int v = ez.v(k, q);
            int i4 = size + 1;
            if (v == i4) {
                ez.z(k, q, u + 1);
            } else {
                while (true) {
                    i = v - 1;
                    i2 = m[i];
                    int i5 = i2 & i3;
                    if (i5 == i4) {
                        break;
                    }
                    v = i5;
                }
                m[i] = ez.s(i2, u + 1, i3);
            }
        } else {
            n[u] = null;
            m[u] = 0;
        }
        this.e--;
        f();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        Set e = e();
        return e != null ? e.size() : this.e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final Object[] toArray() {
        if (h()) {
            return new Object[0];
        }
        Set e = e();
        return e != null ? e.toArray() : Arrays.copyOf(n(), this.e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        if (h()) {
            if (objArr.length > 0) {
                objArr[0] = null;
            }
            return objArr;
        }
        Set e = e();
        if (e != null) {
            return e.toArray(objArr);
        }
        Object[] n = n();
        int i = this.e;
        ex.q(0, i, n.length);
        int length = objArr.length;
        if (length < i) {
            objArr = fw.n(objArr, i);
        } else if (length > i) {
            objArr[i] = null;
        }
        System.arraycopy(n, 0, objArr, 0, i);
        return objArr;
    }
}
