package defpackage;

import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cnf extends cmx implements cmz {
    private final Exception a;
    private final boolean b;

    public cnf(String str, cmz cmzVar, cni cniVar, boolean z) {
        super(str, cmzVar);
        ex.l(cniVar.b);
        this.a = cmzVar.e();
        this.b = z;
    }

    @Override // defpackage.cmz
    public final cnj d(String str, cni cniVar, boolean z) {
        if (z && !this.b) {
            WeakHashMap weakHashMap = cnr.a;
        }
        boolean z2 = true;
        if ((!z || this.b) && !this.b) {
            z2 = false;
        }
        return new cnf(str, this, cniVar, z2);
    }

    @Override // defpackage.cmz
    public final Exception e() {
        return this.a;
    }

    @Override // defpackage.cnj
    public final cnj f(String str, cni cniVar) {
        return d(str, cniVar, true);
    }

    public cnf(String str, cni cniVar, boolean z) {
        super(str, cna.a.b());
        ex.l(cniVar.b);
        this.a = cne.a;
        this.b = z;
    }
}
