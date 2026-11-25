package defpackage;

import j$.util.Iterator;
import j$.util.function.Consumer;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class LogContextValueIterator implements Iterator, j$.util.Iterator {
    final /* synthetic */ BoundedLogContext a;
    private final MetadataKey b;
    private int c;
    private int d;

    public LogContextValueIterator(BoundedLogContext cuvVar, MetadataKey cttVar, int i) {
        this.a = cuvVar;
        this.b = cttVar;
        int i2 = i & 31;
        this.c = i2;
        this.d = i >>> (i2 + 5);
    }

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
        Object d = this.b.d(this.a.e(this.c));
        int i = this.d;
        if (NavInstructionTypeEnum != 0) {
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(NavInstructionTypeEnum) + 1;
            this.d >>>= numberOfTrailingZeros;
            this.c += numberOfTrailingZeros;
        } else {
            this.c = -1;
        }
        return d;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
