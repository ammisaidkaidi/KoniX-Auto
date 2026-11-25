package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bxu extends bxr implements bwq, bvd {
    private static final csz a = csz.g("com/google/android/libraries/performance/primes/metrics/crash/applicationexit/ApplicationExitMetricServiceImpl");
    private final bwn b;
    private final Context c;
    private final bvh d;
    private final Executor e;
    private final bxo f;
    private final dny g;
    private final dgz h;
    private final dny i;
    private final dny j;

    public bxu(bwo bwoVar, Context context, bvh bvhVar, Executor executor, bxo bxoVar, dny dnyVar, dgz dgzVar, dny dnyVar2, dny dnyVar3) {
        this.b = bwoVar.a(executor, dgzVar, null);
        this.c = context;
        this.d = bvhVar;
        this.e = executor;
        this.f = bxoVar;
        this.g = dnyVar;
        this.h = dgzVar;
        this.i = dnyVar2;
        this.j = dnyVar3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ dag e(final bxu bxuVar) {
        if (!((bxn) bxuVar.h.a()).b()) {
            return dad.a;
        }
        if (!Application.getProcessName().equals(bxuVar.c.getPackageName())) {
            return dad.a;
        }
        if (!((Boolean) bxuVar.i.a()).booleanValue()) {
            return dad.a;
        }
        final List a2 = bxuVar.f.a(0, 0, ((SharedPreferences) bxuVar.g.a()).getString("lastExitProcessName", null), ((SharedPreferences) bxuVar.g.a()).getLong("lastExitTimestamp", -1L));
        if (a2.isEmpty()) {
            return dad.a;
        }
        doh dohVar = (doh) bxuVar.j.a();
        ddf n = dog.e.n();
        int i = ((crz) a2).c;
        if (n.c) {
            n.k();
            n.c = false;
        }
        dog dogVar = (dog) n.b;
        int i2 = dogVar.a | 2;
        dogVar.a = i2;
        dogVar.d = i;
        dohVar.getClass();
        dogVar.c = dohVar;
        dogVar.a = i2 | 1;
        HashSet hashSet = new HashSet();
        for (int i3 = 0; i3 < dohVar.a.size(); i3++) {
            int c = dpx.c(dohVar.a.e(i3));
            if (c == 0) {
                c = 1;
            }
            hashSet.add(Integer.valueOf(c - 1));
        }
        csu it = ((cqh) a2).iterator();
        while (it.hasNext()) {
            dof dofVar = (dof) it.next();
            int c2 = dpx.c(dofVar.c);
            if (c2 == 0) {
                c2 = 1;
            }
            if (hashSet.contains(Integer.valueOf(c2 - 1))) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                dog dogVar2 = (dog) n.b;
                dofVar.getClass();
                ddr ddrVar = dogVar2.b;
                if (!ddrVar.c()) {
                    dogVar2.b = ddk.z(ddrVar);
                }
                dogVar2.b.add(dofVar);
            }
        }
        dog dogVar3 = (dog) n.h();
        bwn bwnVar = bxuVar.b;
        bwi a3 = bwj.a();
        ddf n2 = dpz.y.n();
        if (n2.c) {
            n2.k();
            n2.c = false;
        }
        dpz dpzVar = (dpz) n2.b;
        dogVar3.getClass();
        dpzVar.x = dogVar3;
        dpzVar.a |= 134217728;
        a3.d((dpz) n2.h());
        return cyt.o(bwnVar.b(a3.a()), new cny() { // from class: bxs
            @Override // defpackage.cny
            public final Object a(Object obj) {
                bxu.this.f(a2, (Void) obj);
                return null;
            }
        }, bxuVar.e);
    }

    @Override // defpackage.bvd
    public void c(Activity activity) {
        this.d.b(this);
        g();
    }

    public /* synthetic */ Void f(List list, Void r7) {
        int i = 0;
        dof dofVar = (dof) list.get(0);
        do {
            String str = dofVar.b;
            i++;
            if (((SharedPreferences) this.g.a()).edit().putString("lastExitProcessName", str).putLong("lastExitTimestamp", dofVar.f).commit()) {
                return null;
            }
        } while (i < 3);
        ((csx) a.c().h("com/google/android/libraries/performance/primes/metrics/crash/applicationexit/ApplicationExitMetricServiceImpl", "updateLastRecordedAppExit", 172, "ApplicationExitMetricServiceImpl.java")).n("Failed to persist most recent App Exit");
        return null;
    }

    public void g() {
        hh.m(new czb() { // from class: bxt
            @Override // defpackage.czb
            public final dag a() {
                return bxu.e(bxu.this);
            }
        }, this.e);
    }

    @Override // defpackage.bwq
    public void u() {
        this.d.a(this);
    }
}
