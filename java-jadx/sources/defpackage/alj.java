package defpackage;

import androidx.work.impl.WorkDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class alj implements Runnable {
    private final ahx a;
    private final String b;
    private final boolean c;

    static {
        agr.b("StopWorkRunnable");
    }

    public alj(ahx ahxVar, String str, boolean z) {
        this.a = ahxVar;
        this.b = str;
        this.c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean containsKey;
        boolean e;
        ahx ahxVar = this.a;
        WorkDatabase workDatabase = ahxVar.d;
        ahf ahfVar = ahxVar.f;
        akl n = workDatabase.n();
        workDatabase.f();
        try {
            String str = this.b;
            synchronized (ahfVar.g) {
                containsKey = ahfVar.d.containsKey(str);
            }
            if (this.c) {
                ahf ahfVar2 = this.a.f;
                String str2 = this.b;
                synchronized (ahfVar2.g) {
                    agr a = agr.a();
                    String.format("Processor stopping foreground work %s", str2);
                    a.d(new Throwable[0]);
                    e = ahf.e(str2, (aib) ahfVar2.d.remove(str2));
                }
                agr a2 = agr.a();
                String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.b, Boolean.valueOf(e));
                a2.d(new Throwable[0]);
                workDatabase.h();
            }
            if (!containsKey && n.f(this.b) == 2) {
                n.i(1, this.b);
            }
            ahf ahfVar3 = this.a.f;
            String str3 = this.b;
            synchronized (ahfVar3.g) {
                agr a3 = agr.a();
                String.format("Processor stopping background work %s", str3);
                a3.d(new Throwable[0]);
                e = ahf.e(str3, (aib) ahfVar3.e.remove(str3));
            }
            agr a22 = agr.a();
            String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.b, Boolean.valueOf(e));
            a22.d(new Throwable[0]);
            workDatabase.h();
        } finally {
            workDatabase.g();
        }
    }
}
