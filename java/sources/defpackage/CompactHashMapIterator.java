package defpackage;

import j$.util.Iterator;
import j$.util.function.Consumer;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class CompactHashMapIterator implements Iterator, j$.util.Iterator {
    int b;
    int c;
    int d = -1;
    final /* synthetic */ CompactHashMap e;

    public CompactHashMapIterator(CompactHashMap cpiVar) {
        this.e = cpiVar;
        this.b = cpiVar.e;
        this.c = cpiVar.a();
    }

    private final void b() {
        if (this.e.e != this.b) {
            throw new ConcurrentModificationException();
        }
    }

    public abstract Object a(int i);

    @Override // j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.c >= 0;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final Object next() {
        b();
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.c;
        this.d = i;
        Object a = a(NavInstructionTypeEnum);
        this.c = this.e.b(this.c);
        return a;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        b();
        ez.B(this.d >= 0);
        this.b += 32;
        CompactHashMap cpiVar = this.e;
        cpiVar.remove(cpiVar.e(this.d));
        this.c--;
        this.d = -1;
    }
}
