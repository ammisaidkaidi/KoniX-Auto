package defpackage;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public class up implements Iterable {
    public ul b;
    public ul c;
    public final WeakHashMap d = new WeakHashMap();
    public int e = 0;

    protected ul a(Object obj) {
        ul ulVar = this.b;
        while (ulVar != null && !ulVar.a.equals(obj)) {
            ulVar = ulVar.c;
        }
        return ulVar;
    }

    public Object b(Object obj) {
        ul a = a(obj);
        if (a == null) {
            return null;
        }
        this.e--;
        if (!this.d.isEmpty()) {
            Iterator it = this.d.keySet().iterator();
            while (it.hasNext()) {
                ((uo) it.next()).aK(a);
            }
        }
        ul ulVar = a.d;
        ul ulVar2 = a.c;
        if (ulVar != null) {
            ulVar.c = ulVar2;
        } else {
            this.b = ulVar2;
        }
        ul ulVar3 = a.c;
        if (ulVar3 != null) {
            ulVar3.d = ulVar;
        } else {
            this.c = ulVar;
        }
        a.c = null;
        a.d = null;
        return a.b;
    }

    public final ul d(Object obj, Object obj2) {
        ul ulVar = new ul(obj, obj2);
        this.e++;
        ul ulVar2 = this.c;
        if (ulVar2 == null) {
            this.b = ulVar;
        } else {
            ulVar2.c = ulVar;
            ulVar.d = ulVar2;
        }
        this.c = ulVar;
        return ulVar;
    }

    public final um e() {
        um umVar = new um(this);
        this.d.put(umVar, false);
        return umVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof up)) {
            return false;
        }
        up upVar = (up) obj;
        if (this.e != upVar.e) {
            return false;
        }
        Iterator it = iterator();
        Iterator it2 = upVar.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry next = ((un) it).next();
            Map.Entry next2 = ((un) it2).next();
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
        ul a = a(obj);
        if (a != null) {
            return a.b;
        }
        d(obj, obj2);
        return null;
    }

    public final int hashCode() {
        Iterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((un) it).next().hashCode();
        }
        return i;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        uj ujVar = new uj(this.b, this.c);
        this.d.put(ujVar, false);
        return ujVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator it = iterator();
        while (it.hasNext()) {
            sb.append(((un) it).next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
