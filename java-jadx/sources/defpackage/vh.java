package defpackage;

import android.graphics.PorterDuff;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public class vh {
    private final LinkedHashMap a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;

    public vh() {
        this(6);
    }

    public static int e(int i, PorterDuff.Mode mode) {
        return ((i + 31) * 31) + mode.hashCode();
    }

    private final int f(Object obj, Object obj2) {
        int a = a(obj, obj2);
        if (a >= 0) {
            return a;
        }
        throw new IllegalStateException("Negative size: " + obj + "=" + obj2);
    }

    protected int a(Object obj, Object obj2) {
        return 1;
    }

    public final Object b(Object obj) {
        synchronized (this) {
            Object obj2 = this.a.get(obj);
            if (obj2 != null) {
                this.f++;
                return obj2;
            }
            this.g++;
            return null;
        }
    }

    public final Object c(Object obj, Object obj2) {
        Object put;
        synchronized (this) {
            this.d++;
            this.b += f(obj, obj2);
            put = this.a.put(obj, obj2);
            if (put != null) {
                this.b -= f(obj, put);
            }
        }
        d(this.c);
        return put;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x006c, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(int i) {
        while (true) {
            synchronized (this) {
                if (this.b >= 0 && (!this.a.isEmpty() || this.b == 0)) {
                    if (this.b <= i || this.a.isEmpty()) {
                        break;
                    }
                    Map.Entry entry = (Map.Entry) this.a.entrySet().iterator().next();
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    this.a.remove(key);
                    this.b -= f(key, value);
                    this.e++;
                } else {
                    break;
                }
            }
        }
    }

    public final synchronized String toString() {
        int i;
        int i2;
        i = this.f;
        i2 = this.g + i;
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.c), Integer.valueOf(this.f), Integer.valueOf(this.g), Integer.valueOf(i2 != 0 ? (i * 100) / i2 : 0));
    }

    public vh(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.c = i;
        this.a = new LinkedHashMap(0, 0.75f, true);
    }
}
