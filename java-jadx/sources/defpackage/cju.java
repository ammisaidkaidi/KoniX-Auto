package defpackage;

import java.io.IOException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cju extends cim {
    private final der a;

    public cju(der derVar) {
        this.a = derVar;
    }

    @Override // defpackage.cim
    public final dag a(final IOException iOException, cje cjeVar) {
        if (!(iOException.getCause() instanceof ddu)) {
            return hh.i(iOException);
        }
        dag j = hh.j(this.a);
        cjf cjfVar = cjeVar.a;
        return cyb.e(cyt.p(j, cnm.b(new cja(cjfVar, 0)), cjfVar.c), IOException.class, new czc() { // from class: cjt
            @Override // defpackage.czc
            public final dag a(Object obj) {
                throw iOException;
            }
        }, czj.a);
    }
}
