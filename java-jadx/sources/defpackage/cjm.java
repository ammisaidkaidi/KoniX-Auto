package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cjm implements czb {
    public List a;
    final /* synthetic */ cjp b;

    public cjm(cjp cjpVar) {
        this.b = cjpVar;
    }

    @Override // defpackage.czb
    public final dag a() {
        cjp cjpVar = this.b;
        cnd cndVar = cjpVar.e;
        String valueOf = String.valueOf(cjpVar.a);
        cng b = cndVar.b(valueOf.length() != 0 ? "Initialize ".concat(valueOf) : new String("Initialize "));
        try {
            synchronized (this.b.d) {
                if (this.a == null) {
                    cjp cjpVar2 = this.b;
                    this.a = cjpVar2.f;
                    cjpVar2.f = Collections.emptyList();
                }
            }
            ArrayList arrayList = new ArrayList(this.a.size());
            cjo cjoVar = new cjo(this.b);
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                try {
                    arrayList.add(((czc) it.next()).a(cjoVar));
                } catch (Exception e) {
                    arrayList.add(hh.i(e));
                }
            }
            dag a = hh.g(arrayList).a(new Callable() { // from class: cjl
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    cjm cjmVar = cjm.this;
                    synchronized (cjmVar.b.d) {
                        cjmVar.a = null;
                    }
                    return null;
                }
            }, czj.a);
            b.a(a);
            b.close();
            return a;
        } catch (Throwable th) {
            try {
                b.close();
            } catch (Throwable th2) {
            }
            throw th;
        }
    }
}
