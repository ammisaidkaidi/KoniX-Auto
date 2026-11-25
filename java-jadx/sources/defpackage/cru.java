package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cru extends crt implements Serializable {
    static final crt a = new cru();
    private static final long serialVersionUID = 0;

    private cru() {
    }

    @Override // defpackage.crt, java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        crv crvVar = (crv) obj;
        crv crvVar2 = (crv) obj2;
        return cpo.b.b(crvVar.b, crvVar2.b).b(crvVar.c, crvVar2.c).a();
    }
}
