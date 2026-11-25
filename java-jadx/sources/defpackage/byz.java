package defpackage;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Process;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class byz implements bwq {
    public final Application a;
    public final dgz b;
    public final bwn c;
    public final bze d;
    private final dai e;
    private final bul f;
    private final boolean g;
    private final byy h;

    public byz() {
    }

    public byz(bwo bwoVar, Context context, byy byyVar, dai daiVar, dgz dgzVar, bze bzeVar, bul bulVar, dny dnyVar, Executor executor, coc cocVar) {
        this();
        new AtomicReference(byr.a);
        new ConcurrentHashMap();
        this.h = byyVar;
        this.f = bulVar;
        this.c = bwoVar.a(executor, dgzVar, dnyVar);
        this.a = (Application) context;
        this.e = daiVar;
        this.b = dgzVar;
        this.d = bzeVar;
        this.g = ((Boolean) cocVar.b(Boolean.FALSE)).booleanValue();
    }

    public static boolean c(int i) {
        return i != 1;
    }

    public final void a() {
        this.h.a = new byx() { // from class: bza
            @Override // defpackage.byx
            public final void a(int i, String str) {
                byz.this.d(null, i, str);
            }
        };
    }

    public final void b(btx btxVar) {
        d(btxVar.a, 1, null);
    }

    public final void d(final String str, final int i, final String str2) {
        if (this.f.b) {
            hh.h();
        } else {
            hh.m(new czb() { // from class: bzb
                @Override // defpackage.czb
                public final dag a() {
                    byz byzVar = byz.this;
                    int i2 = i;
                    String str3 = str;
                    String str4 = str2;
                    byq byqVar = (byq) byzVar.b.a();
                    long a = byz.c(i2) ? byqVar.f == 3 ? 1000L : -1L : byzVar.c.a(str3);
                    if (a == -1) {
                        return dad.a;
                    }
                    if (byqVar.c) {
                        System.gc();
                        System.runFinalization();
                        System.gc();
                    }
                    coc cocVar = byqVar.b;
                    if (!byqVar.a) {
                        ddf n = dpz.y.n();
                        dox b = byzVar.d.b(i2, Process.myPid(), null, str4);
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        dpz dpzVar = (dpz) n.b;
                        b.getClass();
                        dpzVar.b = b;
                        dpzVar.a |= 1;
                        dpz dpzVar2 = (dpz) n.h();
                        bwi a2 = bwj.a();
                        a2.a = str3;
                        a2.b(true);
                        a2.d = Long.valueOf(a);
                        a2.d(dpzVar2);
                        a2.b = null;
                        if (byz.c(i2)) {
                            a2.c(true);
                        }
                        return byzVar.c.b(a2.a());
                    }
                    List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = bvk.a(byzVar.a).getRunningAppProcesses();
                    if (runningAppProcesses == null) {
                        return dad.a;
                    }
                    ArrayList arrayList = new ArrayList(runningAppProcesses.size());
                    byzVar.a.getPackageName();
                    for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                        ddf n2 = dpz.y.n();
                        dox b2 = byzVar.d.b(i2, runningAppProcessInfo.pid, runningAppProcessInfo.processName, str4);
                        if (n2.c) {
                            n2.k();
                            n2.c = false;
                        }
                        dpz dpzVar3 = (dpz) n2.b;
                        b2.getClass();
                        dpzVar3.b = b2;
                        dpzVar3.a |= 1;
                        dpz dpzVar4 = (dpz) n2.h();
                        bwi a3 = bwj.a();
                        a3.a = str3;
                        a3.b(true);
                        a3.d = Long.valueOf(a);
                        a3.d(dpzVar4);
                        a3.b = null;
                        if (byz.c(i2)) {
                            a3.c(true);
                        }
                        arrayList.add(byzVar.c.b(a3.a()));
                    }
                    return hh.g(arrayList).a(hh.r(), czj.a);
                }
            }, this.e);
        }
    }

    @Override // defpackage.bwq
    public final void u() {
        if (this.g) {
            a();
        }
    }
}
