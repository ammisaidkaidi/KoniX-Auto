package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class buo implements dhx {
    private final dny a;
    private final /* synthetic */ int b;

    public buo(dny dnyVar, int i) {
        this.b = i;
        this.a = dnyVar;
    }

    @Override // defpackage.dny
    public final /* synthetic */ Object a() {
        Looper looper;
        switch (this.b) {
            case 0:
                return Boolean.valueOf(dna.a.a().c(((dhr) this.a).a()));
            case 1:
                return dmu.a.a().a(((dhr) this.a).a());
            case 2:
                return Boolean.valueOf(dmx.a.a().a(((dhr) this.a).a()));
            case 3:
                return Boolean.valueOf(dnm.a.a().c(((dhr) this.a).a()));
            case 4:
                return Long.valueOf(dnm.a.a().a(((dhr) this.a).a()));
            case 5:
                return dna.a.a().a(((dhr) this.a).a());
            case 6:
                return dna.a.a().b(((dhr) this.a).a());
            case 7:
                return dnd.a.a().a(((dhr) this.a).a());
            case 8:
                return dnj.a.a().a(((dhr) this.a).a());
            case 9:
                return Boolean.valueOf(dna.a.a().d(((dhr) this.a).a()));
            case 10:
                return dnm.a.a().b(((dhr) this.a).a());
            case 11:
                return dnp.a.a().a(((dhr) this.a).a());
            case 12:
                return dns.a.a().a(((dhr) this.a).a());
            case 13:
                return dnv.a.a().a(((dhr) this.a).a());
            case 14:
                return new bvi((cvv) this.a.a(), null);
            case 15:
                return new bvj((bvi) this.a.a());
            case 16:
                return new bwl(dhw.b(this.a));
            case 17:
                Context a = ((dhr) this.a).a();
                PackageManager packageManager = a.getPackageManager();
                String packageName = a.getPackageName();
                try {
                    return packageManager.getPackageInfo(packageName, 0).versionName;
                } catch (PackageManager.NameNotFoundException e) {
                    ((csx) ((csx) bwt.a.c().g(e)).h("com/google/android/libraries/performance/primes/metrics/core/PrimesCoreMetricDaggerModule", "provideVersionName", 84, "PrimesCoreMetricDaggerModule.java")).p("Failed to get PackageInfo for: %s", packageName);
                    return null;
                }
            case 18:
                return new bwv((cor) this.a.a());
            case 19:
                Object o = Build.VERSION.SDK_INT >= 30 ? cqw.o((bwq) this.a.a()) : csf.a;
                dpx.m(o);
                return o;
            default:
                coc cocVar = (coc) ((dhy) this.a).a;
                if (cocVar.d()) {
                    looper = (Looper) cocVar.a();
                } else {
                    HandlerThread handlerThread = new HandlerThread("Primes-Jank", 10);
                    handlerThread.start();
                    looper = handlerThread.getLooper();
                }
                return new Handler(looper);
        }
    }
}
