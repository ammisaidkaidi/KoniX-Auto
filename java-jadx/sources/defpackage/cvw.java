package defpackage;

import j$.util.Iterator;
import j$.util.function.Consumer;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cvw implements Iterator, j$.util.Iterator {
    final /* synthetic */ cvx a;
    private int b = 0;

    public cvw(cvx cvxVar) {
        this.a = cvxVar;
    }

    @Override // j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.b < this.a.size();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final Object next() {
        int i = this.b;
        if (i >= this.a.size()) {
            throw new NoSuchElementException();
        }
        cvx cvxVar = this.a;
        Object obj = cvxVar.b.b[cvxVar.b() + i];
        this.b = i + 1;
        return obj;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
