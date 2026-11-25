package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
class dl {
    public final br a;
    public int e;
    public int f;
    private final List g = new ArrayList();
    public final HashSet b = new HashSet();
    public boolean c = false;
    public boolean d = false;

    public dl(int i, int i2, br brVar, xv xvVar) {
        this.e = i;
        this.f = i2;
        this.a = brVar;
        xvVar.a(new dk(this));
    }

    public void a() {
        if (this.d) {
            return;
        }
        if (cr.R(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("SpecialEffectsController: ");
            sb.append(this);
            sb.append(" has called complete.");
        }
        this.d = true;
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }

    public void b() {
    }

    final void c(Runnable runnable) {
        this.g.add(runnable);
    }

    final void d() {
        if (this.c) {
            return;
        }
        this.c = true;
        if (this.b.isEmpty()) {
            a();
            return;
        }
        ArrayList arrayList = new ArrayList(this.b);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            xv xvVar = (xv) arrayList.get(i);
            synchronized (xvVar) {
                if (!xvVar.a) {
                    xvVar.a = true;
                    xvVar.c = true;
                    xu xuVar = xvVar.b;
                    if (xuVar != null) {
                        try {
                            xuVar.a();
                        } catch (Throwable th) {
                            synchronized (xvVar) {
                                xvVar.c = false;
                                xvVar.notifyAll();
                                throw th;
                            }
                        }
                    }
                    synchronized (xvVar) {
                        xvVar.c = false;
                        xvVar.notifyAll();
                    }
                }
            }
        }
    }

    public final void e(xv xvVar) {
        b();
        this.b.add(xvVar);
    }

    final void f(int i, int i2) {
        switch (i2 - 1) {
            case 1:
                if (this.e == 1) {
                    if (cr.R(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: For fragment ");
                        sb.append(this.a);
                        sb.append(" mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = ");
                        sb.append((Object) r.p(this.f));
                        sb.append(" to ADDING.");
                    }
                    this.e = 2;
                    this.f = 2;
                    break;
                }
                break;
            case 2:
                if (cr.R(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("SpecialEffectsController: For fragment ");
                    sb2.append(this.a);
                    sb2.append(" mFinalState = ");
                    sb2.append((Object) r.l(this.e));
                    sb2.append(" -> REMOVED. mLifecycleImpact  = ");
                    sb2.append((Object) r.p(this.f));
                    sb2.append(" to REMOVING.");
                }
                this.e = 1;
                this.f = 3;
                break;
            default:
                if (this.e != 1) {
                    if (cr.R(2)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("SpecialEffectsController: For fragment ");
                        sb3.append(this.a);
                        sb3.append(" mFinalState = ");
                        sb3.append((Object) r.l(this.e));
                        sb3.append(" -> ");
                        sb3.append((Object) r.l(i));
                        sb3.append(". ");
                    }
                    this.e = i;
                    break;
                }
                break;
        }
    }

    public final String toString() {
        return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + ((Object) r.l(this.e)) + "} {mLifecycleImpact = " + ((Object) r.p(this.f)) + "} {mFragment = " + this.a + "}";
    }
}
