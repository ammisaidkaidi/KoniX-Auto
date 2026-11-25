package defpackage;

import android.util.SparseIntArray;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bnf {
    public final SparseIntArray a;
    public bje b;

    public bnf() {
        bjd bjdVar = bjd.a;
        throw null;
    }

    public final void a() {
        this.a.clear();
    }

    public final int b(int i) {
        return this.a.get(i, -1);
    }

    public bnf(bje bjeVar) {
        this.a = new SparseIntArray();
        hr.d(bjeVar);
        this.b = bjeVar;
    }
}
