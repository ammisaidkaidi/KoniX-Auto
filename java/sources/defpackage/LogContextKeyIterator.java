package defpackage;

import j$.util.Iterator;
import j$.util.function.Consumer;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class LogContextKeyIterator implements Iterator, j$.util.Iterator {
    final /* synthetic */ LogContextKeySet a;
    private int b = 0;

    public LogContextKeyIterator(LogContextKeySet cutVar) {
        this.a = cutVar;
    }

    @Override // j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.ProtoLiteMessageBase < this.a.a.b;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        BoundedLogContext cuvVar = this.a.a;
        int[] iArr = cuvVar.a;
        int i = this.b;
        this.b = i + 1;
        return cuvVar.d(iArr[i] & 31);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
