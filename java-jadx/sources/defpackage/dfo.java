package defpackage;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dfo extends AbstractMap {
    public boolean c;
    private final int e;
    private volatile dfn f;
    public List a = Collections.emptyList();
    public Map b = Collections.emptyMap();
    public Map d = Collections.emptyMap();

    public dfo(int i) {
        this.e = i;
    }

    static dfo b(int i) {
        return new dfo(i);
    }

    private final int h(Comparable comparable) {
        int size = this.a.size() - 1;
        int i = 0;
        if (size >= 0) {
            int compareTo = comparable.compareTo(((dfl) this.a.get(size)).a);
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        while (i <= size) {
            int i2 = (i + size) / 2;
            int compareTo2 = comparable.compareTo(((dfl) this.a.get(i2)).a);
            if (compareTo2 < 0) {
                size = i2 - 1;
            } else {
                if (compareTo2 <= 0) {
                    return i2;
                }
                i = i2 + 1;
            }
        }
        return -(i + 1);
    }

    private final SortedMap i() {
        g();
        if (this.b.isEmpty() && !(this.b instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.b = treeMap;
            this.d = treeMap.descendingMap();
        }
        return (SortedMap) this.b;
    }

    public final int a() {
        return this.a.size();
    }

    public final Iterable c() {
        return this.b.isEmpty() ? dfk.b : this.b.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        g();
        if (!this.a.isEmpty()) {
            this.a.clear();
        }
        if (this.b.isEmpty()) {
            return;
        }
        this.b.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return h(comparable) >= 0 || this.b.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        g();
        int h = h(comparable);
        if (h >= 0) {
            return ((dfl) this.a.get(h)).setValue(obj);
        }
        g();
        if (this.a.isEmpty() && !(this.a instanceof ArrayList)) {
            this.a = new ArrayList(this.e);
        }
        int i = -(h + 1);
        if (i >= this.e) {
            return i().put(comparable, obj);
        }
        int size = this.a.size();
        int i2 = this.e;
        if (size == i2) {
            dfl dflVar = (dfl) this.a.remove(i2 - 1);
            i().put(dflVar.a, dflVar.b);
        }
        this.a.add(i, new dfl(this, comparable, obj));
        return null;
    }

    public final Object e(int i) {
        g();
        Object obj = ((dfl) this.a.remove(i)).b;
        if (!this.b.isEmpty()) {
            Iterator it = i().entrySet().iterator();
            List list = this.a;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new dfl(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f == null) {
            this.f = new dfn(this);
        }
        return this.f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dfo)) {
            return super.equals(obj);
        }
        dfo dfoVar = (dfo) obj;
        int size = size();
        if (size != dfoVar.size()) {
            return false;
        }
        int a = a();
        if (a != dfoVar.a()) {
            return entrySet().equals(dfoVar.entrySet());
        }
        for (int i = 0; i < a; i++) {
            if (!f(i).equals(dfoVar.f(i))) {
                return false;
            }
        }
        if (a != size) {
            return this.b.equals(dfoVar.b);
        }
        return true;
    }

    public final Map.Entry f(int i) {
        return (Map.Entry) this.a.get(i);
    }

    public final void g() {
        if (this.c) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int h = h(comparable);
        return h >= 0 ? ((dfl) this.a.get(h)).b : this.b.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int a = a();
        int i = 0;
        for (int i2 = 0; i2 < a; i2++) {
            i += ((dfl) this.a.get(i2)).hashCode();
        }
        return this.b.size() > 0 ? i + this.b.hashCode() : i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        g();
        Comparable comparable = (Comparable) obj;
        int h = h(comparable);
        if (h >= 0) {
            return e(h);
        }
        if (this.b.isEmpty()) {
            return null;
        }
        return this.b.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.a.size() + this.b.size();
    }
}
