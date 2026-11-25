package defpackage;

import androidx.work.impl.WorkDatabase;
import java.util.Iterator;
import java.util.LinkedList;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ala implements Runnable {
    public final ahd c = new ahd();

    static final void b(ahx ahxVar, String str) {
        WorkDatabase workDatabase = ahxVar.d;
        akl n = workDatabase.n();
        akx u = workDatabase.u();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            int f = n.f(str2);
            if (f != 3 && f != 4) {
                n.i(6, str2);
            }
            linkedList.addAll(u.d(str2));
        }
        ahf ahfVar = ahxVar.f;
        synchronized (ahfVar.g) {
            agr a = agr.a();
            String.format("Processor cancelling %s", str);
            a.d(new Throwable[0]);
            ahfVar.f.add(str);
            aib aibVar = (aib) ahfVar.d.remove(str);
            ahf.e(str, aibVar == null ? (aib) ahfVar.e.remove(str) : aibVar);
            if (aibVar != null) {
                ahfVar.d();
            }
        }
        Iterator it = ahxVar.e.iterator();
        while (it.hasNext()) {
            ((ahg) it.next()).b(str);
        }
    }

    public abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
            this.c.a(agv.a);
        } catch (Throwable th) {
            this.c.a(new ags(th));
        }
    }
}
