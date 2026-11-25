package defpackage;

import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bsw implements bsn {
    private final bsp a;
    private final dgl b;
    private final bsa c;

    public bsw(bsp bspVar, dgl dglVar, bsa bsaVar) {
        this.a = bspVar;
        this.b = dglVar;
        this.c = bsaVar;
    }

    private final boolean b(dgj dgjVar) {
        int i = 0;
        while (true) {
            if (i >= dgjVar.a.size()) {
                Iterator it = dgjVar.b.iterator();
                while (it.hasNext()) {
                    if (!c((dgk) it.next())) {
                        return false;
                    }
                }
                return true;
            }
            int b = dgi.b(dgjVar.a.e(i));
            if (!this.a.a(b != 0 ? b : 1, this.c).a()) {
                return false;
            }
            i++;
        }
    }

    private final boolean c(dgk dgkVar) {
        for (int i = 0; i < dgkVar.a.size(); i++) {
            int b = dgi.b(dgkVar.a.e(i));
            if (b == 0) {
                b = 1;
            }
            if (this.a.a(b, this.c).a()) {
                return true;
            }
        }
        Iterator it = dgkVar.b.iterator();
        while (it.hasNext()) {
            if (b((dgj) it.next())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.bsn
    public final boolean a() {
        Boolean valueOf;
        int b;
        dgl dglVar = this.b;
        int i = dglVar.a;
        if (i == 2) {
            valueOf = Boolean.valueOf(b((dgj) dglVar.b));
        } else if (i == 3) {
            valueOf = Boolean.valueOf(c((dgk) dglVar.b));
        } else {
            bsp bspVar = this.a;
            int i2 = 1;
            if (i == 1 && (b = dgi.b(((Integer) dglVar.b).intValue())) != 0) {
                i2 = b;
            }
            valueOf = Boolean.valueOf(bspVar.a(i2, this.c).a());
        }
        return valueOf.booleanValue();
    }
}
