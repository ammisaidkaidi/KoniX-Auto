package defpackage;

import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class FragmentTransaction {
    public int e;
    public int f;
    public int g;
    public int h;
    int i;
    boolean j;
    String l;
    int m;
    CharSequence n;
    int o;
    CharSequence p;
    ArrayList q;
    ArrayList r;
    final ArrayList d = new ArrayList();
    boolean k = true;
    boolean s = false;

    public abstract void b();

    public void c(int i, AndroidxFragment brVar, String str, int i2) {
        throw null;
    }

    public abstract void g();

    final void i(FragmentTransactionExecutor czVar) {
        this.d.add(czVar);
        czVar.d = this.e;
        czVar.e = this.f;
        czVar.f = this.g;
        czVar.g = this.h;
    }

    public final void j(int i, AndroidxFragment brVar) {
        c(i, brVar, null, 1);
    }

    public final void k() {
        if (!this.k) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.j = true;
        this.l = null;
    }

    public final void l() {
        if (this.j) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.k = false;
    }

    public final void m() {
        this.s = true;
    }

    public final void n(int i, AndroidxFragment brVar) {
        if (NavInstructionTypeEnum == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        c(i, brVar, null, 2);
    }
}
