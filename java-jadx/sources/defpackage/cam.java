package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageStats;
import android.os.SystemClock;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cam extends xt implements bvd, bwq {
    public static final long a = TimeUnit.HOURS.toMillis(12);
    public final bwn b;
    public final Application c;
    public final dgz d;
    public final cbs e;
    private final bvh f;
    private final Executor g;

    public cam(bwo bwoVar, Context context, bvh bvhVar, Executor executor, dgz dgzVar, cbs cbsVar, dny dnyVar) {
        this.b = bwoVar.a(executor, dgzVar, dnyVar);
        this.g = executor;
        this.c = (Application) context;
        this.d = dgzVar;
        this.e = cbsVar;
        this.f = bvhVar;
    }

    @Override // defpackage.bvd
    public final void c(Activity activity) {
        this.f.b(this);
        hh.m(new czb() { // from class: cal
            @Override // defpackage.czb
            public final dag a() {
                cam camVar = cam.this;
                if (((cak) camVar.d.a()).a) {
                    return dad.a;
                }
                if (!btj.c(camVar.c)) {
                    return dad.a;
                }
                bjq.e();
                cbs cbsVar = camVar.e;
                long j = cam.a;
                bjq.e();
                if (btj.c(cbsVar.a)) {
                    long j2 = btj.c(cbsVar.a) ? ((SharedPreferences) cbsVar.b.a()).getLong("primes.packageMetric.lastSendTime", -1L) : -1L;
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    if (elapsedRealtime < j2) {
                        ((SharedPreferences) cbsVar.b.a()).edit().remove("primes.packageMetric.lastSendTime").commit();
                        j2 = -1;
                    }
                    if (j2 != -1 && elapsedRealtime <= j2 + j) {
                        return dad.a;
                    }
                }
                if (!camVar.b.c(null)) {
                    return dad.a;
                }
                Application application = camVar.c;
                bjq.e();
                PackageStats a2 = cai.a(application);
                if (a2 == null) {
                    return hh.i(new IllegalStateException("PackageStats capture failed."));
                }
                ddf n = dpz.y.n();
                ddf n2 = dps.k.n();
                long j3 = a2.cacheSize;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                dps dpsVar = (dps) n2.b;
                dpsVar.a |= 1;
                dpsVar.b = j3;
                long j4 = a2.codeSize;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                dps dpsVar2 = (dps) n2.b;
                dpsVar2.a |= 2;
                dpsVar2.c = j4;
                long j5 = a2.dataSize;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                dps dpsVar3 = (dps) n2.b;
                dpsVar3.a |= 4;
                dpsVar3.d = j5;
                long j6 = a2.externalCacheSize;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                dps dpsVar4 = (dps) n2.b;
                dpsVar4.a |= 8;
                dpsVar4.e = j6;
                long j7 = a2.externalCodeSize;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                dps dpsVar5 = (dps) n2.b;
                dpsVar5.a |= 16;
                dpsVar5.f = j7;
                long j8 = a2.externalDataSize;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                dps dpsVar6 = (dps) n2.b;
                dpsVar6.a |= 32;
                dpsVar6.g = j8;
                long j9 = a2.externalMediaSize;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                dps dpsVar7 = (dps) n2.b;
                dpsVar7.a |= 64;
                dpsVar7.h = j9;
                long j10 = a2.externalObbSize;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                dps dpsVar8 = (dps) n2.b;
                dpsVar8.a |= 128;
                dpsVar8.i = j10;
                dps dpsVar9 = (dps) n2.h();
                ddf ddfVar = (ddf) dpsVar9.E(5);
                ddfVar.n(dpsVar9);
                coc cocVar = ((cak) camVar.d.a()).b;
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                dpz dpzVar = (dpz) n.b;
                dps dpsVar10 = (dps) ddfVar.h();
                dpsVar10.getClass();
                dpzVar.j = dpsVar10;
                dpzVar.a |= 256;
                cbs cbsVar2 = camVar.e;
                if (btj.c(cbsVar2.a)) {
                    ((SharedPreferences) cbsVar2.b.a()).edit().putLong("primes.packageMetric.lastSendTime", SystemClock.elapsedRealtime()).commit();
                }
                bwn bwnVar = camVar.b;
                bwi a3 = bwj.a();
                a3.d((dpz) n.h());
                return bwnVar.b(a3.a());
            }
        }, this.g);
    }

    @Override // defpackage.bwq
    public final void u() {
        this.f.a(this);
    }
}
