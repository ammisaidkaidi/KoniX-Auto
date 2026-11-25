package defpackage;

import java.util.NoSuchElementException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dfd extends dcg {
    final dfe a;
    dci b = b();
    final /* synthetic */ dff c;

    public dfd(dff dffVar) {
        this.c = dffVar;
        this.a = new dfe(dffVar);
    }

    private final dci b() {
        if (this.a.hasNext()) {
            return this.a.next().iterator();
        }
        return null;
    }

    @Override // defpackage.dci
    public final byte a() {
        dci dciVar = this.b;
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
