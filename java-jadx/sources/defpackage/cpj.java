package defpackage;

import j$.util.Iterator;
import j$.util.function.Consumer;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cpj implements Iterator, j$.util.Iterator {
    int a;
    int b;
    int c = -1;
    final /* synthetic */ cpk d;

    public cpj(cpk cpkVar) {
        this.d = cpkVar;
        this.a = cpkVar.b;
        this.b = cpkVar.a();
    }

    private final void a() {
        if (this.d.b != this.a) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.b >= 0;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final Object next() {
        a();
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.b;
        this.c = i;
        Object d = this.d.d(i);
        this.b = this.d.b(this.b);
        return d;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        a();
        ez.B(this.c >= 0);
        this.a += 32;
        cpk cpkVar = this.d;
        cpkVar.remove(cpkVar.d(this.c));
        this.b--;
        this.c = -1;
    }
}
