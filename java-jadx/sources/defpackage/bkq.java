package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bkq extends bkn {
    public final blr b;

    public bkq(blr blrVar, brk brkVar) {
        super(brkVar);
        this.b = blrVar;
    }

    @Override // defpackage.bkm
    public final boolean a(blj bljVar) {
        if (((blw) bljVar.e.get(this.b)) == null) {
            return false;
        }
        throw null;
    }

    @Override // defpackage.bkm
    public final bjb[] b(blj bljVar) {
        if (((blw) bljVar.e.get(this.b)) == null) {
            return null;
        }
        throw null;
    }

    @Override // defpackage.bkn
    public final void c(blj bljVar) {
        if (((blw) bljVar.e.remove(this.b)) != null) {
            throw null;
        }
        this.a.c(false);
    }

    @Override // defpackage.bkn, defpackage.bkr
    public final /* bridge */ /* synthetic */ void g(blb blbVar, boolean z) {
    }
}
