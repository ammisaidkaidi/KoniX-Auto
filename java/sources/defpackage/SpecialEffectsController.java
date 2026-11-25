package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
class SpecialEffectsController {
    public final AndroidxFragment a;
    public int e;
    public int f;
    private final List g = new ArrayList();
    public final HashSet b = new HashSet();
    public boolean c = false;
    public boolean d = false;

    public SpecialEffectsController(int i, int i2, AndroidxFragment brVar, PrimesConditionLatch xvVar) {
        this.e = i;
        this.f = i2;
        this.a = brVar;
        xvVar.a(new SpecialEffectsCompleteCallback(this));
    }

    public void a() {
        if (this.d) {
            return;
        }
        if (FragmentManagerImpl.R(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("SpecialEffectsController: ");
            StaggeredGridLayoutParams.append(this);
            StaggeredGridLayoutParams.append(" has called complete.");
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
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            PrimesConditionLatch xvVar = (PrimesConditionLatch) arrayList.get(NavInstructionTypeEnum);
            synchronized (xvVar) {
                if (!xvVar.a) {
                    xvVar.a = true;
                    xvVar.c = true;
                    PrimesLatchCallback xuVar = xvVar.b;
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

    public final void e(PrimesConditionLatch xvVar) {
        b();
        this.b.add(xvVar);
    }

    final void f(int i, int i2) {
        switch (i2 - 1) {
            case 1:
                if (this.e == 1) {
                    if (FragmentManagerImpl.R(2)) {
                        StringBuilder sb = new StringBuilder();
                        StaggeredGridLayoutParams.append("SpecialEffectsController: For fragment ");
                        StaggeredGridLayoutParams.append(this.a);
                        StaggeredGridLayoutParams.append(" mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = ");
                        StaggeredGridLayoutParams.append((Object) r.p(this.f));
                        StaggeredGridLayoutParams.append(" to ADDING.");
                    }
                    this.e = 2;
                    this.f = 2;
                    break;
                }
                break;
            case 2:
                if (FragmentManagerImpl.R(2)) {
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
                    if (FragmentManagerImpl.R(2)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("SpecialEffectsController: For fragment ");
                        sb3.append(this.a);
                        sb3.append(" mFinalState = ");
                        sb3.append((Object) r.l(this.e));
                        sb3.append(" -> ");
                        sb3.append((Object) r.l(NavInstructionTypeEnum));
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
