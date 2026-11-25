package defpackage;

import java.util.NoSuchElementException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ByteStringPieceIterator extends ByteStringIteratorBase {
    final /* synthetic */ ByteString a;
    private int b = 0;
    private final int c;

    public ByteStringPieceIterator(ByteString dclVar) {
        this.a = dclVar;
        this.c = dclVar.d();
    }

    @Override // defpackage.ByteStringIterator
    public final byte a() {
        int i = this.b;
        if (NavInstructionTypeEnum >= this.c) {
            throw new NoSuchElementException();
        }
        this.b = i + 1;
        return this.a.b(NavInstructionTypeEnum);
    }

    @Override // j$.util.Iterator
    public final boolean hasNext() {
        return this.ProtoLiteMessageBase < this.c;
    }
}
