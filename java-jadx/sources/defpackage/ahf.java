package defpackage;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.ListenableWorker;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ahf implements ahc, ajp {
    public static final String a = agr.b("Processor");
    public final Context c;
    private final agf h;
    private final WorkDatabase i;
    private final List j;
    private final amh l;
    public final Map e = new HashMap();
    public final Map d = new HashMap();
    public final Set f = new HashSet();
    private final List k = new ArrayList();
    public PowerManager.WakeLock b = null;
    public final Object g = new Object();

    public ahf(Context context, agf agfVar, amh amhVar, WorkDatabase workDatabase, List list) {
        this.c = context;
        this.h = agfVar;
        this.l = amhVar;
        this.i = workDatabase;
        this.j = list;
    }

    public static boolean e(String str, aib aibVar) {
        boolean z;
        if (aibVar == null) {
            agr a2 = agr.a();
            String.format("WorkerWrapper could not be found for %s", str);
            a2.d(new Throwable[0]);
            return false;
        }
        aibVar.f = true;
        aibVar.c();
        dag dagVar = aibVar.e;
        if (dagVar != null) {
            z = dagVar.isDone();
            aibVar.e.cancel(true);
        } else {
            z = false;
        }
        ListenableWorker listenableWorker = aibVar.d;
        if (listenableWorker == null || z) {
            String.format("WorkSpec %s is already done. Not interrupting.", aibVar.c);
            agr.a().d(new Throwable[0]);
        } else {
            listenableWorker.aN();
        }
        agr a3 = agr.a();
        String.format("WorkerWrapper interrupted for %s", str);
        a3.d(new Throwable[0]);
        return true;
    }

    @Override // defpackage.ahc
    public final void a(String str, boolean z) {
        synchronized (this.g) {
            this.e.remove(str);
            agr a2 = agr.a();
            String.format("%s %s executed; reschedule = %s", getClass().getSimpleName(), str, Boolean.valueOf(z));
            a2.d(new Throwable[0]);
            Iterator it = this.k.iterator();
            while (it.hasNext()) {
                ((ahc) it.next()).a(str, z);
            }
        }
    }

    public final void b(ahc ahcVar) {
        synchronized (this.g) {
            this.k.add(ahcVar);
        }
    }

    public final void c(ahc ahcVar) {
        synchronized (this.g) {
            this.k.remove(ahcVar);
        }
    }

    public final void d() {
        synchronized (this.g) {
            if (this.d.isEmpty()) {
                try {
                    this.c.startService(ajs.d(this.c));
                } catch (Throwable th) {
                    agr.a();
                    agr.e(a, "Unable to stop foreground service", th);
                }
                PowerManager.WakeLock wakeLock = this.b;
                if (wakeLock != null) {
                    wakeLock.release();
                    this.b = null;
                }
            }
        }
    }

    public final boolean f(String str) {
        boolean z;
        synchronized (this.g) {
            z = true;
            if (!this.e.containsKey(str) && !this.d.containsKey(str)) {
                z = false;
            }
        }
        return z;
    }

    public final boolean g(String str) {
        synchronized (this.g) {
            if (f(str)) {
                agr a2 = agr.a();
                String.format("Work %s is already enqueued for processing", str);
                a2.d(new Throwable[0]);
                return false;
            }
            aia aiaVar = new aia(this.c, this.h, this.l, this, this.i, str);
            aiaVar.f = this.j;
            aib aibVar = new aib(aiaVar);
            ame ameVar = aibVar.h;
            ameVar.aW(new ahe(this, str, ameVar), this.l.c);
            this.e.put(str, aibVar);
            this.l.a.execute(aibVar);
            agr a3 = agr.a();
            String.format("%s: processing %s", getClass().getSimpleName(), str);
            a3.d(new Throwable[0]);
            return true;
        }
    }
}
