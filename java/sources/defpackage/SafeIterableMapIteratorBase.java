package defpackage;

import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class SafeIterableMapIteratorBase extends SafeIterableMapIteratorMarker implements Iterator {
    SafeIterableMapEntry a;
    SafeIterableMapEntry b;

    public SafeIterableMapIteratorBase(SafeIterableMapEntry ulVar, SafeIterableMapEntry ulVar2) {
        this.a = ulVar2;
        this.b = ulVar;
    }

    private final SafeIterableMapEntry d() {
        SafeIterableMapEntry ulVar = this.b;
        SafeIterableMapEntry ulVar2 = this.a;
        if (ulVar == ulVar2 || ulVar2 == null) {
            return null;
        }
        return b(ulVar);
    }

    public abstract SafeIterableMapEntry a(SafeIterableMapEntry ulVar);

    @Override // defpackage.SafeIterableMapIteratorMarker
    public final void aK(SafeIterableMapEntry ulVar) {
        if (this.a == ulVar && ulVar == this.b) {
            this.b = null;
            this.a = null;
        }
        SafeIterableMapEntry ulVar2 = this.a;
        if (ulVar2 == ulVar) {
            this.a = a(ulVar2);
        }
        if (this.b == ulVar) {
            this.b = d();
        }
    }

    public abstract SafeIterableMapEntry b(SafeIterableMapEntry ulVar);

    @Override // java.util.Iterator
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final Map.Entry next() {
        SafeIterableMapEntry ulVar = this.b;
        this.b = d();
        return ulVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b != null;
    }
}
