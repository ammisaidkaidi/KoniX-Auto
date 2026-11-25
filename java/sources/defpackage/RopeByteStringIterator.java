package defpackage;

import java.util.NoSuchElementException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class RopeByteStringIterator extends ByteStringIteratorBase {
    final ByteStringLeafIterator a;
    ByteStringIterator b = b();
    final /* synthetic */ RopeByteString c;

    public RopeByteStringIterator(RopeByteString dffVar) {
        this.c = dffVar;
        this.a = new ByteStringLeafIterator(dffVar);
    }

    private final ByteStringIterator b() {
        if (this.a.hasNext()) {
            return this.a.next().iterator();
        }
        return null;
    }

    @Override // defpackage.ByteStringIterator
    public final byte a() {
        ByteStringIterator dciVar = this.b;
        if (dciVar == null) {
            throw new NoSuchElementException();
        }
        byte a = dciVar.a();
        if (!this.b.hasNext()) {
            this.b = b();
        }
        return a;
    }

    @Override // j$.util.Iterator
    public final boolean hasNext() {
        return this.b != null;
    }
}
