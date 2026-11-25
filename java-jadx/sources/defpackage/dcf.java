package defpackage;

import java.util.NoSuchElementException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dcf extends dcg {
    final /* synthetic */ dcl a;
    private int b = 0;
    private final int c;

    public dcf(dcl dclVar) {
        this.a = dclVar;
        this.c = dclVar.d();
    }

    @Override // defpackage.dci
    public final byte a() {
        int i = this.b;
        if (i >= this.c) {
            throw new NoSuchElementException();
        }
        this.b = i + 1;
        return this.a.b(i);
    }

    @Override // j$.util.Iterator
    public final boolean hasNext() {
        return this.b < this.c;
    }
}
