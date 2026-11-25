package defpackage;

import android.os.health.TimerStat;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bwb extends bvz {
    public static final bwb a = new bwb();

    private bwb() {
    }

    @Override // defpackage.bvz
    public final /* synthetic */ der a(String str, Object obj) {
        return bvs.j(str, (TimerStat) obj);
    }

    @Override // defpackage.bvz
    public final /* synthetic */ der b(der derVar, der derVar2) {
        return bvs.i((dor) derVar, (dor) derVar2);
    }

    @Override // defpackage.bvz
    public final /* bridge */ /* synthetic */ String c(der derVar) {
        dor dorVar = (dor) derVar;
        dom domVar = dorVar.d;
        if (domVar == null) {
            domVar = dom.d;
        }
        int i = domVar.a & 2;
        dom domVar2 = dorVar.d;
        if (i != 0) {
            if (domVar2 == null) {
                domVar2 = dom.d;
            }
            return domVar2.c;
        }
        if (domVar2 == null) {
            domVar2 = dom.d;
        }
        return Long.toHexString(domVar2.b);
    }
}
