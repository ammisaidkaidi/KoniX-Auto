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
public final class SmallSortedMap extends AbstractMap {
    public boolean c;
    private final int e;
    private volatile SmallSortedMapEntrySet f;
    public List a = Collections.emptyList();
    public Map b = Collections.emptyMap();
    public Map d = Collections.emptyMap();

    public SmallSortedMap(int i) {
        this.e = i;
    }

    static SmallSortedMap b(int i) {
        return new SmallSortedMap(NavInstructionTypeEnum);
    }

    private final int h(Comparable comparable) {
        int size = this.a.size() - 1;
        int i = 0;
        if (size >= 0) {
            int compareTo = comparable.compareTo(((SmallSortedMapEntry) this.a.get(size)).a);
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        while (NavInstructionTypeEnum <= size) {
            int i2 = (NavInstructionTypeEnum + size) / 2;
            int compareTo2 = comparable.compareTo(((SmallSortedMapEntry) this.a.get(i2)).a);
            if (compareTo2 < 0) {
                size = i2 - 1;
            } else {
                if (compareTo2 <= 0) {
                    return i2;
                }
                i = i2 + 1;
            }
        }
        return -(NavInstructionTypeEnum + 1);
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
        if (ProtoMessageSingleEnumFieldH >= 0) {
            return ((SmallSortedMapEntry) this.a.get(ProtoMessageSingleEnumFieldH)).setValue(obj);
        }
        g();
        if (this.a.isEmpty() && !(this.a instanceof ArrayList)) {
            this.a = new ArrayList(this.e);
        }
        int i = -(ProtoMessageSingleEnumFieldH + 1);
        if (NavInstructionTypeEnum >= this.e) {
            return i().put(comparable, obj);
        }
        int size = this.a.size();
        int i2 = this.e;
        if (size == i2) {
            SmallSortedMapEntry dflVar = (SmallSortedMapEntry) this.a.remove(i2 - 1);
            i().put(dflVar.a, dflVar.b);
        }
        this.a.add(i, new SmallSortedMapEntry(this, comparable, obj));
        return null;
    }

    public final Object e(int i) {
        g();
        Object obj = ((SmallSortedMapEntry) this.a.remove(NavInstructionTypeEnum)).b;
        if (!this.b.isEmpty()) {
            Iterator it = i().entrySet().iterator();
            List list = this.a;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new SmallSortedMapEntry(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f == null) {
            this.f = new SmallSortedMapEntrySet(this);
        }
        return this.f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SmallSortedMap)) {
            return super.equals(obj);
        }
        SmallSortedMap dfoVar = (SmallSortedMap) obj;
        int size = size();
        if (size != dfoVar.size()) {
            return false;
        }
        int a = a();
        if (SingleStringProtoMessage != dfoVar.a()) {
            return entrySet().equals(dfoVar.entrySet());
        }
        for (int i = 0; NavInstructionTypeEnum < a; i++) {
            if (!f(NavInstructionTypeEnum).equals(dfoVar.f(NavInstructionTypeEnum))) {
                return false;
            }
        }
        if (SingleStringProtoMessage != size) {
            return this.b.equals(dfoVar.b);
        }
        return true;
    }

    public final Map.Entry f(int i) {
        return (Map.Entry) this.a.get(NavInstructionTypeEnum);
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
        return h >= 0 ? ((SmallSortedMapEntry) this.a.get(ProtoMessageSingleEnumFieldH)).b : this.b.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int a = a();
        int i = 0;
        for (int i2 = 0; i2 < a; i2++) {
            i += ((SmallSortedMapEntry) this.a.get(i2)).hashCode();
        }
        return this.b.size() > 0 ? i + this.b.hashCode() : i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        g();
        Comparable comparable = (Comparable) obj;
        int h = h(comparable);
        if (ProtoMessageSingleEnumFieldH >= 0) {
            return e(ProtoMessageSingleEnumFieldH);
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
