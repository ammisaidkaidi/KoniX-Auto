package defpackage;

import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SafeIterableMapListIterator extends SafeIterableMapIteratorMarker implements Iterator {
    final /* synthetic */ SafeIterableMap a;
    private SafeIterableMapEntry b;
    private boolean c = true;

    public SafeIterableMapListIterator(SafeIterableMap upVar) {
        this.a = upVar;
    }

    @Override // java.util.Iterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Map.Entry next() {
        SafeIterableMapEntry ulVar;
        if (this.c) {
            this.c = false;
            ulVar = this.a.b;
        } else {
            SafeIterableMapEntry ulVar2 = this.b;
            ulVar = ulVar2 != null ? ulVar2.c : null;
        }
        this.b = ulVar;
        return this.b;
    }

    @Override // defpackage.SafeIterableMapIteratorMarker
    public final void aK(SafeIterableMapEntry ulVar) {
        SafeIterableMapEntry ulVar2 = this.b;
        if (ulVar == ulVar2) {
            SafeIterableMapEntry ulVar3 = ulVar2.d;
            this.b = ulVar3;
            this.c = ulVar3 == null;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.c) {
            return this.a.b != null;
        }
        SafeIterableMapEntry ulVar = this.b;
        return (ulVar == null || ulVar.c == null) ? false : true;
    }
}
