package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bvw extends bvz {
    public static final bvw a = new bvw();

    private bvw() {
    }

    @Override // defpackage.bvz
    public final /* bridge */ /* synthetic */ der a(String str, Object obj) {
        int intValue = ((Long) obj).intValue();
        if (intValue == 0) {
            return null;
        }
        ddf n = dol.d.n();
        if (n.c) {
            n.k();
            n.c = false;
        }
        dol dolVar = (dol) n.b;
        dolVar.a |= 1;
        dolVar.b = intValue;
        if (str != null) {
            dom g = bvs.g(str);
            if (n.c) {
                n.k();
                n.c = false;
            }
            dol dolVar2 = (dol) n.b;
            g.getClass();
            dolVar2.c = g;
            dolVar2.a |= 2;
        }
        return (dol) n.h();
    }

    @Override // defpackage.bvz
    public final /* synthetic */ der b(der derVar, der derVar2) {
        dol dolVar = (dol) derVar;
        dol dolVar2 = (dol) derVar2;
        if (dolVar == null || dolVar2 == null) {
            return dolVar;
        }
        if ((dolVar.a & 1) == 0) {
            return null;
        }
        ddf n = dol.d.n();
        dom domVar = dolVar.c;
        if (domVar == null) {
            domVar = dom.d;
        }
        if (n.c) {
            n.k();
            n.c = false;
        }
        dol dolVar3 = (dol) n.b;
        domVar.getClass();
        dolVar3.c = domVar;
        int i = dolVar3.a | 2;
        dolVar3.a = i;
        int i2 = dolVar.b - dolVar2.b;
        if (i2 == 0) {
            return null;
        }
        dolVar3.a = i | 1;
        dolVar3.b = i2;
        return (dol) n.h();
    }

    @Override // defpackage.bvz
    public final /* bridge */ /* synthetic */ String c(der derVar) {
        dom domVar = ((dol) derVar).c;
        if (domVar == null) {
            domVar = dom.d;
        }
        return domVar.c;
    }
}
