package defpackage;

import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class WorkConstraintControllerBase implements WorkConstraintStateListener {
    public final List a = new ArrayList();
    public Object b;
    public final ConstraintTrackerBase c;
    public WorkConstraintStateObserverInterface d;

    public WorkConstraintControllerBase(ConstraintTrackerBase ajkVar) {
        this.c = ajkVar;
    }

    @Override // defpackage.WorkConstraintStateListener
    public final void a(Object obj) {
        this.b = obj;
        e(this.d, obj);
    }

    public abstract boolean b(WorkSpec akkVar);

    public abstract boolean c(Object obj);

    public final void d(WorkConstraintStateObserverInterface aiyVar) {
        if (this.d != aiyVar) {
            this.d = aiyVar;
            e(aiyVar, this.b);
        }
    }

    public final void e(WorkConstraintStateObserverInterface aiyVar, Object obj) {
        if (this.a.isEmpty() || aiyVar == null) {
            return;
        }
        if (obj == null || c(obj)) {
            List list = this.a;
            synchronized (((WorkConstraintsTracker) aiyVar).b) {
                WorkConstraintsCallback aiuVar = ((WorkConstraintsTracker) aiyVar).a;
                if (aiuVar != null) {
                    aiuVar.f(list);
                }
            }
            return;
        }
        List<String> list2 = this.a;
        synchronized (((WorkConstraintsTracker) aiyVar).b) {
            ArrayList arrayList = new ArrayList();
            for (String str : list2) {
                if (((WorkConstraintsTracker) aiyVar).c(str)) {
                    WorkLogger a = WorkLogger.a();
                    String.format("Constraints met for %s", str);
                    a.d(new Throwable[0]);
                    arrayList.add(str);
                }
            }
            WorkConstraintsCallback aiuVar2 = ((WorkConstraintsTracker) aiyVar).a;
            if (aiuVar2 != null) {
                aiuVar2.e(arrayList);
            }
        }
    }
}
