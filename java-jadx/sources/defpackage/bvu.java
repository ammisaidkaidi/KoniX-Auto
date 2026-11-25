package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.SystemClock;
import android.os.health.HealthStats;
import android.os.health.SystemHealthManager;
import android.util.Base64;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.util.Collections;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bvu extends bvs implements buw, bve, bvd, bwq {
    private static final csz b = csz.g("com/google/android/libraries/performance/primes/metrics/battery/BatteryMetricServiceImpl");
    final AtomicBoolean a = new AtomicBoolean();
    private final Context c;
    private final bvh d;
    private final dai e;
    private final bwd f;
    private final bvn g;
    private final bwn h;
    private final AtomicBoolean i;

    public bvu(bwo bwoVar, Context context, bvh bvhVar, dai daiVar, dgz dgzVar, bwd bwdVar, bvn bvnVar, dny dnyVar, Executor executor) {
        new ConcurrentHashMap();
        this.i = new AtomicBoolean(false);
        this.h = bwoVar.a(executor, dgzVar, dnyVar);
        this.c = context;
        this.d = bvhVar;
        this.e = daiVar;
        this.f = bwdVar;
        this.g = bvnVar;
    }

    private final dag v(final doi doiVar) {
        return hh.m(new czb() { // from class: bvt
            @Override // defpackage.czb
            public final dag a() {
                return bvu.this.r(doiVar, null);
            }
        }, this.e);
    }

    @Override // defpackage.buw
    public void a(Activity activity, Bundle bundle) {
        if (this.i.getAndSet(true)) {
            return;
        }
        b(null);
    }

    @Override // defpackage.bve
    public void b(Activity activity) {
        if (this.a.get()) {
            return;
        }
        t();
    }

    @Override // defpackage.bvd
    public void c(Activity activity) {
        s();
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x031c, code lost:
    
        if ((r5 / r8) <= 3.472222222222222E-5d) goto L162;
     */
    /* JADX WARN: Removed duplicated region for block: B:197:0x009e A[Catch: all -> 0x0548, TryCatch #2 {, blocks: (B:9:0x0014, B:14:0x0046, B:17:0x0097, B:20:0x0119, B:197:0x009e, B:199:0x00a4, B:201:0x00ac, B:203:0x00b1, B:205:0x00b7, B:206:0x00bc, B:208:0x00c2, B:209:0x00cb, B:211:0x00d1, B:212:0x00da, B:214:0x00e0, B:215:0x00e9, B:217:0x00ef, B:218:0x00f8, B:220:0x00fe, B:221:0x0103, B:223:0x0107, B:225:0x010b, B:226:0x0115, B:236:0x004b, B:240:0x0052, B:243:0x005c, B:244:0x007d, B:246:0x0031), top: B:8:0x0014, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ dag r(doi doiVar, btx btxVar) {
        Object obj;
        cdl cdlVar;
        doi doiVar2;
        bwc bwcVar;
        dot dotVar;
        boolean commit;
        Long l;
        dos dosVar;
        dpz dpzVar = null;
        if (!this.h.c(null)) {
            return dad.a;
        }
        bjq.e();
        synchronized (this.f) {
            cbp cbpVar = this.f.a;
            dex dexVar = (dex) cdl.j.E(7);
            bjq.e();
            byte[] decode = !btj.c(cbpVar.b) ? null : Base64.decode(((SharedPreferences) cbpVar.c.a()).getString("primes.battery.snapshot", ""), 0);
            if (decode != null) {
                int length = decode.length;
                if (length == 0) {
                    obj = null;
                } else if (decode[0] == 1) {
                    try {
                        obj = dexVar.d(decode, length - 1, dcz.b());
                    } catch (ddu e) {
                        ((csx) ((csx) cbp.a.c().g(e)).h("com/google/android/libraries/performance/primes/persistent/PersistentStorage", "readProto", 80, "PersistentStorage.java")).n("failure reading proto");
                        obj = null;
                    }
                } else {
                    ((csx) cbp.a.c().h("com/google/android/libraries/performance/primes/persistent/PersistentStorage", "readProto", 83, "PersistentStorage.java")).n("wrong header");
                }
                cdlVar = (cdl) obj;
                if (cdlVar != null) {
                    bwcVar = null;
                } else {
                    if ((cdlVar.a & 32) != 0) {
                        doi b2 = doi.b(cdlVar.g);
                        if (b2 == null) {
                            b2 = doi.UNKNOWN;
                        }
                        doiVar2 = b2;
                    } else {
                        doiVar2 = null;
                    }
                    dos dosVar2 = cdlVar.b;
                    dos dosVar3 = dosVar2 == null ? dos.ar : dosVar2;
                    Long valueOf = (cdlVar.a & 2) != 0 ? Long.valueOf(cdlVar.c) : null;
                    Long valueOf2 = (cdlVar.a & 4) != 0 ? Long.valueOf(cdlVar.d) : null;
                    Long valueOf3 = (cdlVar.a & 8) != 0 ? Long.valueOf(cdlVar.e) : null;
                    Long valueOf4 = (cdlVar.a & 16) != 0 ? Long.valueOf(cdlVar.f) : null;
                    int i = cdlVar.a;
                    String str = (i & 64) != 0 ? cdlVar.h : null;
                    if ((i & 256) != 0) {
                        dot dotVar2 = cdlVar.i;
                        dotVar = dotVar2 == null ? dot.a : dotVar2;
                    } else {
                        dotVar = null;
                    }
                    bwcVar = new bwc(dosVar3, valueOf, valueOf2, valueOf3, valueOf4, doiVar2, str, dotVar);
                }
            }
            obj = null;
            cdlVar = (cdl) obj;
            if (cdlVar != null) {
            }
        }
        bvn bvnVar = this.g;
        Long valueOf5 = Long.valueOf(SystemClock.elapsedRealtime());
        Long valueOf6 = Long.valueOf(System.currentTimeMillis());
        SystemHealthManager systemHealthManager = (SystemHealthManager) bvnVar.a.a.getSystemService("systemhealth");
        HealthStats takeMyUidSnapshot = systemHealthManager != null ? systemHealthManager.takeMyUidSnapshot() : null;
        ((bto) bvnVar.c).a();
        bwc c = xs.c(valueOf5, valueOf6, takeMyUidSnapshot, doiVar, bvnVar);
        synchronized (this.f) {
            bwd bwdVar = this.f;
            ddf n = cdl.j.n();
            dos dosVar4 = c.a;
            if (dosVar4 != null) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                cdl cdlVar2 = (cdl) n.b;
                cdlVar2.b = dosVar4;
                cdlVar2.a |= 1;
            }
            Long l2 = c.b;
            if (l2 != null) {
                long longValue = l2.longValue();
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                cdl cdlVar3 = (cdl) n.b;
                cdlVar3.a |= 2;
                cdlVar3.c = longValue;
            }
            Long l3 = c.c;
            if (l3 != null) {
                long longValue2 = l3.longValue();
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                cdl cdlVar4 = (cdl) n.b;
                cdlVar4.a |= 4;
                cdlVar4.d = longValue2;
            }
            Long l4 = c.d;
            if (l4 != null) {
                long longValue3 = l4.longValue();
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                cdl cdlVar5 = (cdl) n.b;
                cdlVar5.a |= 8;
                cdlVar5.e = longValue3;
            }
            Long l5 = c.e;
            if (l5 != null) {
                long longValue4 = l5.longValue();
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                cdl cdlVar6 = (cdl) n.b;
                cdlVar6.a |= 16;
                cdlVar6.f = longValue4;
            }
            doi doiVar3 = c.f;
            if (doiVar3 != null) {
                int i2 = doiVar3.h;
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                cdl cdlVar7 = (cdl) n.b;
                cdlVar7.a |= 32;
                cdlVar7.g = i2;
            }
            String str2 = c.g;
            if (str2 != null) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                cdl cdlVar8 = (cdl) n.b;
                cdlVar8.a |= 64;
                cdlVar8.h = str2;
            }
            dot dotVar3 = c.h;
            if (dotVar3 != null) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                cdl cdlVar9 = (cdl) n.b;
                cdlVar9.i = dotVar3;
                cdlVar9.a |= 256;
            }
            cbp cbpVar2 = bwdVar.a;
            cdl cdlVar10 = (cdl) n.h();
            cdlVar10.getClass();
            byte[] h = cdlVar10.h();
            bjq.e();
            if (btj.c(cbpVar2.b)) {
                int length2 = h.length;
                byte[] bArr = new byte[length2 + 1];
                bArr[0] = 1;
                System.arraycopy(h, 0, bArr, 1, length2);
                commit = ((SharedPreferences) cbpVar2.c.a()).edit().putString("primes.battery.snapshot", Base64.encodeToString(bArr, 0)).commit();
            } else {
                commit = false;
            }
        }
        if (!commit) {
            this.d.b(this);
            synchronized (this.f) {
                cbp cbpVar3 = this.f.a;
                bjq.e();
                if (btj.c(cbpVar3.b)) {
                    ((SharedPreferences) cbpVar3.c.a()).edit().remove("primes.battery.snapshot").commit();
                }
            }
            throw new IOException("Failure storing persistent snapshot and helper data");
        }
        bvn bvnVar2 = this.g;
        if (bwcVar != null && Objects.equals(bwcVar.d, c.d) && Objects.equals(bwcVar.e, c.e) && bwcVar.b != null && bwcVar.c != null && (l = c.b) != null && c.c != null) {
            long longValue5 = l.longValue();
            Long l6 = bwcVar.b;
            l6.getClass();
            long longValue6 = longValue5 - l6.longValue();
            Long l7 = c.c;
            l7.getClass();
            long longValue7 = l7.longValue();
            Long l8 = bwcVar.c;
            l8.getClass();
            long longValue8 = longValue7 - l8.longValue();
            if (longValue8 > 0) {
                long abs = Math.abs(longValue6 - longValue8);
                if (abs >= 25) {
                    double d = abs;
                    double d2 = longValue8;
                    Double.isNaN(d);
                    Double.isNaN(d2);
                }
                bwf bwfVar = bvnVar2.a;
                dos k = bvs.k(c.a, bwcVar.a);
                if (k == null) {
                    dosVar = null;
                } else {
                    ddf ddfVar = (ddf) k.E(5);
                    ddfVar.n(k);
                    bvv bvvVar = bwfVar.b;
                    Collections.unmodifiableList(((dos) ddfVar.b).g);
                    for (int i3 = 0; i3 < ((dos) ddfVar.b).g.size(); i3++) {
                        ddfVar.ac(i3, bvvVar.b(ddfVar.D(i3)));
                    }
                    Collections.unmodifiableList(((dos) ddfVar.b).h);
                    for (int i4 = 0; i4 < ((dos) ddfVar.b).h.size(); i4++) {
                        ddfVar.ad(i4, bvvVar.b(ddfVar.E(i4)));
                    }
                    Collections.unmodifiableList(((dos) ddfVar.b).i);
                    for (int i5 = 0; i5 < ((dos) ddfVar.b).i.size(); i5++) {
                        ddfVar.ae(i5, bvvVar.b(ddfVar.F(i5)));
                    }
                    Collections.unmodifiableList(((dos) ddfVar.b).j);
                    for (int i6 = 0; i6 < ((dos) ddfVar.b).j.size(); i6++) {
                        ddfVar.ab(i6, bvvVar.b(ddfVar.G(i6)));
                    }
                    Collections.unmodifiableList(((dos) ddfVar.b).k);
                    for (int i7 = 0; i7 < ((dos) ddfVar.b).k.size(); i7++) {
                        ddfVar.Y(i7, bvvVar.b(ddfVar.H(i7)));
                    }
                    Collections.unmodifiableList(((dos) ddfVar.b).l);
                    for (int i8 = 0; i8 < ((dos) ddfVar.b).l.size(); i8++) {
                        ddfVar.V(i8, bvvVar.b(ddfVar.I(i8)));
                    }
                    Collections.unmodifiableList(((dos) ddfVar.b).n);
                    for (int i9 = 0; i9 < ((dos) ddfVar.b).n.size(); i9++) {
                        ddfVar.X(i9, bvvVar.b(ddfVar.J(i9)));
                    }
                    dosVar = (dos) ddfVar.h();
                }
                if (dosVar != null && (dosVar.a & 1) != 0 && dosVar.c > 0) {
                    ddf n2 = doj.k.n();
                    Long l9 = c.b;
                    l9.getClass();
                    long longValue9 = l9.longValue();
                    Long l10 = bwcVar.b;
                    l10.getClass();
                    long longValue10 = longValue9 - l10.longValue();
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    doj dojVar = (doj) n2.b;
                    int i10 = dojVar.a | 64;
                    dojVar.a = i10;
                    dojVar.h = longValue10;
                    doi doiVar4 = bwcVar.f;
                    if (doiVar4 != null) {
                        dojVar.b = doiVar4.h;
                        i10 |= 1;
                        dojVar.a = i10;
                    }
                    String str3 = bwcVar.g;
                    if (str3 != null) {
                        i10 |= 8;
                        dojVar.a = i10;
                        dojVar.e = str3;
                    }
                    dot dotVar4 = bwcVar.h;
                    if (dotVar4 != null) {
                        dojVar.f = dotVar4;
                        i10 |= 16;
                        dojVar.a = i10;
                    }
                    doi doiVar5 = c.f;
                    if (doiVar5 != null) {
                        dojVar.g = doiVar5.h;
                        dojVar.a = i10 | 32;
                    }
                    Long l11 = c.b;
                    if (l11 != null) {
                        long longValue11 = l11.longValue();
                        if (n2.c) {
                            n2.k();
                            n2.c = false;
                        }
                        doj dojVar2 = (doj) n2.b;
                        dojVar2.a |= 256;
                        dojVar2.j = longValue11;
                    }
                    doj dojVar3 = (doj) n2.b;
                    dojVar3.i = dosVar;
                    dojVar3.a |= 128;
                    ddf n3 = dpz.y.n();
                    ddf n4 = dok.c.n();
                    if (n4.c) {
                        n4.k();
                        n4.c = false;
                    }
                    dok dokVar = (dok) n4.b;
                    doj dojVar4 = (doj) n2.h();
                    dojVar4.getClass();
                    dokVar.b = dojVar4;
                    dokVar.a |= 1;
                    if (n3.c) {
                        n3.k();
                        n3.c = false;
                    }
                    dpz dpzVar2 = (dpz) n3.b;
                    dok dokVar2 = (dok) n4.h();
                    dokVar2.getClass();
                    dpzVar2.k = dokVar2;
                    dpzVar2.a |= 512;
                    dpzVar = (dpz) n3.h();
                }
            }
        }
        if (dpzVar == null) {
            return dad.a;
        }
        bwn bwnVar = this.h;
        bwi a = bwj.a();
        a.a = c.g;
        a.b(true);
        a.d(dpzVar);
        a.b = c.h;
        return bwnVar.b(a.a());
    }

    public dag s() {
        if (!btj.c(this.c)) {
            return dad.a;
        }
        try {
            ex.r(this.a.getAndSet(false));
            return v(doi.FOREGROUND_TO_BACKGROUND);
        } catch (Exception e) {
            return hh.i(e);
        }
    }

    public dag t() {
        if (!btj.c(this.c)) {
            return dad.a;
        }
        if (!this.a.getAndSet(true)) {
            return v(doi.BACKGROUND_TO_FOREGROUND);
        }
        ((csx) b.c().h("com/google/android/libraries/performance/primes/metrics/battery/BatteryMetricServiceImpl", "onAppToForeground", 134, "BatteryMetricServiceImpl.java")).n("App is already in the foreground.");
        return hh.h();
    }

    @Override // defpackage.bwq
    public void u() {
        this.d.a(this);
    }
}
