package defpackage;

import android.content.Context;
import android.content.IntentFilter;
import androidx.preference.Preference;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ccd {
    public static final csz a = csz.g("com/google/android/libraries/performance/primes/sampling/Sampler");
    private static final cbz e = cbz.b(Preference.DEFAULT_ORDER);
    public volatile cci b = cch.a;
    public volatile boolean c = true;
    public volatile cbz d = e;

    public ccd(final Context context, final Executor executor, final cch cchVar, final dgz dgzVar, boolean z, dny dnyVar) {
        final dny dnyVar2 = true != z ? null : dnyVar;
        hh.l(new Runnable() { // from class: cca
            @Override // java.lang.Runnable
            public final void run() {
                final ccd ccdVar = ccd.this;
                Context context2 = context;
                final cch cchVar2 = cchVar;
                final dgz dgzVar2 = dgzVar;
                final dny dnyVar3 = dnyVar2;
                final Executor executor2 = executor;
                Runnable runnable = new Runnable() { // from class: ccc
                    @Override // java.lang.Runnable
                    public final void run() {
                        final ccd ccdVar2 = ccd.this;
                        final cch cchVar3 = cchVar2;
                        final dgz dgzVar3 = dgzVar2;
                        final dny dnyVar4 = dnyVar3;
                        hh.l(new Runnable() { // from class: ccb
                            @Override // java.lang.Runnable
                            public final void run() {
                                ccd ccdVar3 = ccd.this;
                                cch cchVar4 = cchVar3;
                                dgz dgzVar4 = dgzVar3;
                                dny dnyVar5 = dnyVar4;
                                try {
                                    bvl bvlVar = (bvl) dgzVar4.a();
                                    ccdVar3.c = bvlVar.b();
                                    ccdVar3.d = cbz.b(bvlVar.a());
                                } catch (Throwable th) {
                                    ((csx) ((csx) ccd.a.c().g(th)).h("com/google/android/libraries/performance/primes/sampling/Sampler", "fetchSamplingConfig", 78, "Sampler.java")).n("Couldn't get config");
                                    ccdVar3.c = false;
                                }
                                if (!ccdVar3.c || dnyVar5 == null) {
                                    if (dnyVar5 == null) {
                                        ddf n = dpy.d.n();
                                        if (n.c) {
                                            n.k();
                                            n.c = false;
                                        }
                                        dpy dpyVar = (dpy) n.b;
                                        dpyVar.c = 2;
                                        dpyVar.a |= 4;
                                        ccdVar3.b = cchVar4.a((dpy) n.h());
                                        return;
                                    }
                                    return;
                                }
                                try {
                                    ccdVar3.b = cchVar4.a((dpy) dnyVar5.a());
                                } catch (Throwable th2) {
                                    ((csx) ((csx) ccd.a.c().g(th2)).h("com/google/android/libraries/performance/primes/sampling/Sampler", "fetchSamplingConfig", 86, "Sampler.java")).n("Couldn't get sampling strategy");
                                    ddf n2 = dpy.d.n();
                                    if (n2.c) {
                                        n2.k();
                                        n2.c = false;
                                    }
                                    dpy dpyVar2 = (dpy) n2.b;
                                    int i = dpyVar2.a | 2;
                                    dpyVar2.a = i;
                                    dpyVar2.b = 0L;
                                    dpyVar2.c = 1;
                                    dpyVar2.a = i | 4;
                                    ccdVar3.b = cchVar4.a((dpy) n2.h());
                                }
                            }
                        }, executor2);
                    }
                };
                if (btj.c(context2)) {
                    runnable.run();
                    return;
                }
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.USER_UNLOCKED");
                AtomicBoolean atomicBoolean = new AtomicBoolean();
                bti btiVar = new bti(atomicBoolean, runnable);
                context2.registerReceiver(btiVar, intentFilter);
                if (btj.c(context2) && atomicBoolean.compareAndSet(false, true)) {
                    context2.unregisterReceiver(btiVar);
                    runnable.run();
                }
            }
        }, executor);
    }
}
