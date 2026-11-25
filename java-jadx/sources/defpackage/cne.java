package defpackage;

import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cne extends cmx implements cmz {
    static final cmy a = new cmy(null);
    private final cmy b;

    public cne() {
        super("", cna.a.b());
        this.b = a;
    }

    @Override // defpackage.cmz
    public final cnj d(String str, cni cniVar, boolean z) {
        if (z) {
            WeakHashMap weakHashMap = cnr.a;
        }
        return new cnf(str, this, cniVar, z);
    }

    @Override // defpackage.cmz
    public final /* synthetic */ Exception e() {
        return this.b;
    }

    @Override // defpackage.cnj
    public final cnj f(String str, cni cniVar) {
        WeakHashMap weakHashMap = cnr.a;
        return d(str, cniVar, true);
    }
}
