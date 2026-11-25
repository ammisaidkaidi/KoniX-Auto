package defpackage;

import android.content.Context;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aiv implements aiy {
    public final aiu a;
    public final Object b;
    private final aiz[] c;

    static {
        agr.b("WorkConstraintsTracker");
    }

    public aiv(Context context, amh amhVar, aiu aiuVar) {
        Context applicationContext = context.getApplicationContext();
        this.a = aiuVar;
        this.c = new aiz[]{new aiw(applicationContext, amhVar), new aix(applicationContext, amhVar), new aje(applicationContext, amhVar), new aja(applicationContext, amhVar), new ajd(applicationContext, amhVar), new ajc(applicationContext, amhVar), new ajb(applicationContext, amhVar)};
        this.b = new Object();
    }

    public final void a(Iterable iterable) {
        synchronized (this.b) {
            aiz[] aizVarArr = this.c;
            for (int i = 0; i < 7; i++) {
                aizVarArr[i].d(null);
            }
            aiz[] aizVarArr2 = this.c;
            for (int i2 = 0; i2 < 7; i2++) {
                aiz aizVar = aizVarArr2[i2];
                aizVar.a.clear();
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    akk akkVar = (akk) it.next();
                    if (aizVar.b(akkVar)) {
                        aizVar.a.add(akkVar.b);
                    }
                }
                if (aizVar.a.isEmpty()) {
                    aizVar.c.f(aizVar);
                } else {
                    ajk ajkVar = aizVar.c;
                    synchronized (ajkVar.b) {
                        if (ajkVar.c.add(aizVar)) {
                            if (ajkVar.c.size() == 1) {
                                ajkVar.d = ajkVar.b();
                                agr a = agr.a();
                                String.format("%s: initial state = %s", ajkVar.getClass().getSimpleName(), ajkVar.d);
                                a.d(new Throwable[0]);
                                ajkVar.d();
                            }
                            aizVar.a(ajkVar.d);
                        }
                    }
                }
                aizVar.e(aizVar.d, aizVar.b);
            }
            aiz[] aizVarArr3 = this.c;
            for (int i3 = 0; i3 < 7; i3++) {
                aizVarArr3[i3].d(this);
            }
        }
    }

    public final void b() {
        synchronized (this.b) {
            aiz[] aizVarArr = this.c;
            for (int i = 0; i < 7; i++) {
                aiz aizVar = aizVarArr[i];
                if (!aizVar.a.isEmpty()) {
                    aizVar.a.clear();
                    aizVar.c.f(aizVar);
                }
            }
        }
    }

    public final boolean c(String str) {
        synchronized (this.b) {
            aiz[] aizVarArr = this.c;
            for (int i = 0; i < 7; i++) {
                aiz aizVar = aizVarArr[i];
                Object obj = aizVar.b;
                if (obj != null && aizVar.c(obj) && aizVar.a.contains(str)) {
                    agr a = agr.a();
                    String.format("Work %s constrained by %s", str, aizVar.getClass().getSimpleName());
                    a.d(new Throwable[0]);
                    return false;
                }
            }
            return true;
        }
    }
}
