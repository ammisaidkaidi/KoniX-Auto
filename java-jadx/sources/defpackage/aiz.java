package defpackage;

import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class aiz implements ais {
    public final List a = new ArrayList();
    public Object b;
    public final ajk c;
    public aiy d;

    public aiz(ajk ajkVar) {
        this.c = ajkVar;
    }

    @Override // defpackage.ais
    public final void a(Object obj) {
        this.b = obj;
        e(this.d, obj);
    }

    public abstract boolean b(akk akkVar);

    public abstract boolean c(Object obj);

    public final void d(aiy aiyVar) {
        if (this.d != aiyVar) {
            this.d = aiyVar;
            e(aiyVar, this.b);
        }
    }

    public final void e(aiy aiyVar, Object obj) {
        if (this.a.isEmpty() || aiyVar == null) {
            return;
        }
        if (obj == null || c(obj)) {
            List list = this.a;
            synchronized (((aiv) aiyVar).b) {
                aiu aiuVar = ((aiv) aiyVar).a;
                if (aiuVar != null) {
                    aiuVar.f(list);
                }
            }
            return;
        }
        List<String> list2 = this.a;
        synchronized (((aiv) aiyVar).b) {
            ArrayList arrayList = new ArrayList();
            for (String str : list2) {
                if (((aiv) aiyVar).c(str)) {
                    agr a = agr.a();
                    String.format("Constraints met for %s", str);
                    a.d(new Throwable[0]);
                    arrayList.add(str);
                }
            }
            aiu aiuVar2 = ((aiv) aiyVar).a;
            if (aiuVar2 != null) {
                aiuVar2.e(arrayList);
            }
        }
    }
}
