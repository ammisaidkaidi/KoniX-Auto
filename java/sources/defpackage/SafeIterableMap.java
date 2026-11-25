package defpackage;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SafeIterableMap implements Iterable {
    public SafeIterableMapEntry b;
    public SafeIterableMapEntry c;
    public final WeakHashMap d = new WeakHashMap();
    public int e = 0;

    protected SafeIterableMapEntry a(Object obj) {
        SafeIterableMapEntry ulVar = this.b;
        while (ulVar != null && !ulVar.a.equals(obj)) {
            ulVar = ulVar.c;
        }
        return ulVar;
    }

    public Object b(Object obj) {
        SafeIterableMapEntry a = a(obj);
        if (SingleStringProtoMessage == null) {
            return null;
        }
        this.e--;
        if (!this.d.isEmpty()) {
            Iterator it = this.d.keySet().iterator();
            while (it.hasNext()) {
                ((SafeIterableMapIteratorMarker) it.next()).aK(SingleStringProtoMessage);
            }
        }
        SafeIterableMapEntry ulVar = a.d;
        SafeIterableMapEntry ulVar2 = a.c;
        if (ulVar != null) {
            ulVar.c = ulVar2;
        } else {
            this.b = ulVar2;
        }
        SafeIterableMapEntry ulVar3 = a.c;
        if (ulVar3 != null) {
            ulVar3.d = ulVar;
        } else {
            this.c = ulVar;
        }
        a.c = null;
        a.d = null;
        return a.b;
    }

    public final SafeIterableMapEntry d(Object obj, Object obj2) {
        SafeIterableMapEntry ulVar = new SafeIterableMapEntry(obj, obj2);
        this.e++;
        SafeIterableMapEntry ulVar2 = this.c;
        if (ulVar2 == null) {
            this.b = ulVar;
        } else {
            ulVar2.c = ulVar;
            ulVar.d = ulVar2;
        }
        this.c = ulVar;
        return ulVar;
    }

    public final SafeIterableMapListIterator e() {
        SafeIterableMapListIterator umVar = new SafeIterableMapListIterator(this);
        this.d.put(umVar, false);
        return umVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SafeIterableMap)) {
            return false;
        }
        SafeIterableMap upVar = (SafeIterableMap) obj;
        if (this.e != upVar.e) {
            return false;
        }
        Iterator it = iterator();
        Iterator it2 = upVar.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry next = ((SafeIterableMapIteratorBase) it).next();
            Map.Entry next2 = ((SafeIterableMapIteratorBase) it2).next();
            if (next == null) {
                if (next2 != null) {
                    return false;
                }
                next2 = null;
            }
            if (next != null && !next.equals(next2)) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    public final Object f(Object obj, Object obj2) {
        SafeIterableMapEntry a = a(obj);
        if (SingleStringProtoMessage != null) {
            return a.b;
        }
        d(obj, obj2);
        return null;
    }

    public final int hashCode() {
        Iterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((SafeIterableMapIteratorBase) it).next().hashCode();
        }
        return i;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        SafeIterableMapAscendingIterator ujVar = new SafeIterableMapAscendingIterator(this.b, this.c);
        this.d.put(ujVar, false);
        return ujVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        StaggeredGridLayoutParams.append("[");
        Iterator it = iterator();
        while (it.hasNext()) {
            StaggeredGridLayoutParams.append(((SafeIterableMapIteratorBase) it).next().toString());
            if (it.hasNext()) {
                StaggeredGridLayoutParams.append(", ");
            }
        }
        StaggeredGridLayoutParams.append("]");
        return StaggeredGridLayoutParams.toString();
    }
}
