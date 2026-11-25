package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cjp {
    public final String a;
    public final cjq b;
    public final cmw c;
    public final cnd e;
    private final dag g;
    private final cmw i = new cmw(new cjm(this), czj.a);
    public final Object d = new Object();
    public List f = new ArrayList();
    private final czq h = czq.a();

    public cjp(cjq cjqVar, dag dagVar, boolean z) {
        this.b = cjqVar;
        this.g = dagVar;
        this.a = ((cjf) cjqVar).a;
        int i = 1;
        this.c = new cmw(new ciy((cjf) cjqVar, i), czj.a);
        if (z) {
            this.e = cnd.d();
        } else {
            this.e = cnd.c();
        }
        c(new cji(this, i));
    }

    public final dag a() {
        dag dagVar;
        this.e.a();
        if (this.i.d.isDone()) {
            dagVar = ((cjf) this.b).a();
        } else {
            cnd cndVar = this.e;
            String valueOf = String.valueOf(this.a);
            cng b = cndVar.b(valueOf.length() != 0 ? "Get ".concat(valueOf) : new String("Get "));
            try {
                dag p = cyt.p(this.i.c(), cnm.b(new cji(this, 0)), czj.a);
                b.a(p);
                b.close();
                dagVar = p;
            } catch (Throwable th) {
                try {
                    b.close();
                } catch (Throwable th2) {
                }
                throw th;
            }
        }
        hh.k(this.g);
        return hh.k(dagVar);
    }

    public final dag b(final cny cnyVar, final Executor executor) {
        final czc b = cnm.b(new czc() { // from class: cjk
            @Override // defpackage.czc
            public final dag a(Object obj) {
                return hh.j(cny.this.a(obj));
            }
        });
        cnd cndVar = this.e;
        String valueOf = String.valueOf(this.a);
        cng b2 = cndVar.b(valueOf.length() != 0 ? "Update ".concat(valueOf) : new String("Update "));
        try {
            final dag c = this.i.c();
            this.h.b(new czb() { // from class: cjh
                @Override // defpackage.czb
                public final dag a() {
                    return dag.this;
                }
            }, czj.a);
            dag b3 = this.h.b(cnm.a(new czb() { // from class: cjg
                @Override // defpackage.czb
                public final dag a() {
                    final cjp cjpVar = cjp.this;
                    dag dagVar = c;
                    final czc czcVar = b;
                    final Executor executor2 = executor;
                    return cyt.p(dagVar, cnm.b(new czc() { // from class: cjj
                        @Override // defpackage.czc
                        public final dag a(Object obj) {
                            cjp cjpVar2 = cjp.this;
                            return cjpVar2.b.d(czcVar, executor2);
                        }
                    }), czj.a);
                }
            }), czj.a);
            b3.getClass();
            if (!c.isDone()) {
                if (b3.isDone()) {
                    hh.q(b3, c);
                } else {
                    czy czyVar = new czy(b3, c);
                    b3.aW(czyVar, czj.a);
                    c.aW(czyVar, czj.a);
                }
            }
            hh.k(this.g);
            b2.a(b3);
            b2.close();
            return b3;
        } catch (Throwable th) {
            try {
                b2.close();
            } catch (Throwable th2) {
            }
            throw th;
        }
    }

    public final void c(czc czcVar) {
        synchronized (this.d) {
            this.f.add(czcVar);
        }
    }
}
