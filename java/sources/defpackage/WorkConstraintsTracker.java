package defpackage;

import android.content.Context;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkConstraintsTracker implements WorkConstraintStateObserverInterface {
    public final WorkConstraintsCallback a;
    public final Object b;
    private final WorkConstraintControllerBase[] c;

    static {
        WorkLogger.b("WorkConstraintsTracker");
    }

    public WorkConstraintsTracker(Context context, WorkTaskExecutorHolder amhVar, WorkConstraintsCallback aiuVar) {
        Context applicationContext = context.getApplicationContext();
        this.a = aiuVar;
        this.c = new WorkConstraintControllerBase[]{new BatteryChargingConstraintController(applicationContext, amhVar), new BatteryNotLowConstraintController(applicationContext, amhVar), new DeviceIdleConstraintController(applicationContext, amhVar), new NetworkConnectedConstraintController(applicationContext, amhVar), new StorageNotLowConstraintController(applicationContext, amhVar), new TimeConstraintController(applicationContext, amhVar), new ContentUriConstraintController(applicationContext, amhVar)};
        this.b = new Object();
    }

    public final void a(Iterable iterable) {
        synchronized (this.b) {
            WorkConstraintControllerBase[] aizVarArr = this.c;
            for (int i = 0; NavInstructionTypeEnum < 7; i++) {
                aizVarArr[i].d(null);
            }
            WorkConstraintControllerBase[] aizVarArr2 = this.c;
            for (int i2 = 0; i2 < 7; i2++) {
                WorkConstraintControllerBase aizVar = aizVarArr2[i2];
                aizVar.a.clear();
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    WorkSpec akkVar = (WorkSpec) it.next();
                    if (aizVar.b(akkVar)) {
                        aizVar.a.add(akkVar.b);
                    }
                }
                if (aizVar.a.isEmpty()) {
                    aizVar.c.f(aizVar);
                } else {
                    ConstraintTrackerBase ajkVar = aizVar.c;
                    synchronized (ajkVar.b) {
                        if (ajkVar.c.add(aizVar)) {
                            if (ajkVar.c.size() == 1) {
                                ajkVar.d = ajkVar.b();
                                WorkLogger a = WorkLogger.a();
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
            WorkConstraintControllerBase[] aizVarArr3 = this.c;
            for (int i3 = 0; i3 < 7; i3++) {
                aizVarArr3[i3].d(this);
            }
        }
    }

    public final void b() {
        synchronized (this.b) {
            WorkConstraintControllerBase[] aizVarArr = this.c;
            for (int i = 0; NavInstructionTypeEnum < 7; i++) {
                WorkConstraintControllerBase aizVar = aizVarArr[i];
                if (!aizVar.a.isEmpty()) {
                    aizVar.a.clear();
                    aizVar.c.f(aizVar);
                }
            }
        }
    }

    public final boolean c(String str) {
        synchronized (this.b) {
            WorkConstraintControllerBase[] aizVarArr = this.c;
            for (int i = 0; NavInstructionTypeEnum < 7; i++) {
                WorkConstraintControllerBase aizVar = aizVarArr[i];
                Object obj = aizVar.b;
                if (obj != null && aizVar.c(obj) && aizVar.a.contains(str)) {
                    WorkLogger a = WorkLogger.a();
                    String.format("Work %s constrained by %s", str, aizVar.getClass().getSimpleName());
                    a.d(new Throwable[0]);
                    return false;
                }
            }
            return true;
        }
    }
}
