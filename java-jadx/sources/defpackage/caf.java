package defpackage;

import android.app.Activity;
import android.os.Process;
import android.os.StrictMode;
import android.system.Os;
import android.system.OsConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class caf extends bzv implements bwq, bvd {
    private final bvh a;
    private final dny b;
    private final dny c;
    private final dny d;
    private final AtomicBoolean e = new AtomicBoolean();

    public caf(bvh bvhVar, dny dnyVar, dny dnyVar2, dny dnyVar3) {
        this.a = bvhVar;
        this.b = dnyVar;
        this.c = dnyVar2;
        this.d = dnyVar3;
    }

    private static long h(Long l, long j) {
        return l == null ? j : Math.min(l.longValue(), j);
    }

    private static dpd i(bzs bzsVar) {
        ddf n = dpd.f.n();
        if (bzsVar.a != null) {
            String str = bzsVar.a;
            if (n.c) {
                n.k();
                n.c = false;
            }
            dpd dpdVar = (dpd) n.b;
            str.getClass();
            dpdVar.a |= 1;
            dpdVar.b = str;
        }
        if (bzsVar.b != null) {
            long longValue = bzsVar.b.longValue();
            if (n.c) {
                n.k();
                n.c = false;
            }
            dpd dpdVar2 = (dpd) n.b;
            dpdVar2.a |= 2;
            dpdVar2.c = longValue;
        }
        if (bzsVar.c != null) {
            long longValue2 = bzsVar.c.longValue();
            if (n.c) {
                n.k();
                n.c = false;
            }
            dpd dpdVar3 = (dpd) n.b;
            dpdVar3.a |= 4;
            dpdVar3.d = longValue2;
        }
        if (bzsVar.d != null) {
            long longValue3 = bzsVar.d.longValue();
            if (n.c) {
                n.k();
                n.c = false;
            }
            dpd dpdVar4 = (dpd) n.b;
            dpdVar4.a |= 8;
            dpdVar4.e = longValue3;
        }
        return (dpd) n.h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v154, types: [coc] */
    @Override // defpackage.bvd
    public final void c(Activity activity) {
        Long l;
        long j;
        coc cocVar;
        int i;
        boolean z;
        this.a.b(this);
        caa caaVar = caa.a;
        long j2 = 0;
        if (caaVar.g > 0 || caaVar.h > 0) {
            long j3 = caaVar.b ? caaVar.c : caaVar.e;
            if (j3 > 0) {
                if (caaVar.g >= j3 || caaVar.h >= j3) {
                    final ddf n = dpf.z.n();
                    boolean z2 = caaVar.b;
                    if (n.c) {
                        n.k();
                        n.c = false;
                    }
                    dpf dpfVar = (dpf) n.b;
                    dpfVar.a |= 65536;
                    dpfVar.u = z2;
                    if (caaVar.b) {
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        dpf dpfVar2 = (dpf) n.b;
                        dpfVar2.v = 1;
                        dpfVar2.a = 131072 | dpfVar2.a;
                    } else {
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        dpf dpfVar3 = (dpf) n.b;
                        dpfVar3.v = 2;
                        dpfVar3.a = 131072 | dpfVar3.a;
                    }
                    bzz bzzVar = caaVar.l;
                    if (bzzVar.a) {
                        long j4 = caaVar.c;
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        dpf dpfVar4 = (dpf) n.b;
                        dpfVar4.a |= 16;
                        dpfVar4.e = j4;
                        l = Long.valueOf(j4);
                    } else {
                        l = null;
                    }
                    if (bzzVar.b) {
                        long j5 = caaVar.d;
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        dpf dpfVar5 = (dpf) n.b;
                        dpfVar5.a |= 128;
                        dpfVar5.h = j5;
                        l = Long.valueOf(h(l, j5));
                    }
                    boolean z3 = bzzVar.c;
                    boolean z4 = bzzVar.d;
                    boolean z5 = bzzVar.e;
                    if (bzzVar.f) {
                        long j6 = caaVar.e;
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        dpf dpfVar6 = (dpf) n.b;
                        dpfVar6.a |= 512;
                        dpfVar6.j = j6;
                        l = Long.valueOf(h(l, j6));
                    }
                    switch (((Long) this.d.a()).intValue()) {
                        case 1:
                            if (bzzVar.i) {
                                j = caaVar.h;
                                break;
                            }
                            j = -1;
                            break;
                        case 2:
                            if (bzzVar.j) {
                                j = caaVar.i;
                                break;
                            }
                            j = -1;
                            break;
                        case 3:
                            if (bzzVar.g) {
                                j = caaVar.g;
                                break;
                            }
                            j = -1;
                            break;
                        case 4:
                            if (bzzVar.h) {
                                j = caaVar.f;
                                break;
                            }
                            j = -1;
                            break;
                        default:
                            j = -1;
                            break;
                    }
                    if (j != -1) {
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        dpf dpfVar7 = (dpf) n.b;
                        dpfVar7.a |= 1024;
                        dpfVar7.k = j;
                        l = Long.valueOf(h(l, j));
                    }
                    if (bzzVar.g) {
                        long j7 = caaVar.g;
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        dpf dpfVar8 = (dpf) n.b;
                        dpfVar8.a |= 8192;
                        dpfVar8.n = j7;
                        l = Long.valueOf(h(l, j7));
                    }
                    if (bzzVar.h) {
                        long j8 = caaVar.f;
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        dpf dpfVar9 = (dpf) n.b;
                        dpfVar9.a |= 16384;
                        dpfVar9.o = j8;
                        l = Long.valueOf(h(l, j8));
                    }
                    if (bzzVar.i) {
                        long j9 = caaVar.h;
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        dpf dpfVar10 = (dpf) n.b;
                        dpfVar10.a |= 2048;
                        dpfVar10.l = j9;
                        l = Long.valueOf(h(l, j9));
                    }
                    if (bzzVar.j) {
                        long j10 = caaVar.i;
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        dpf dpfVar11 = (dpf) n.b;
                        dpfVar11.a |= 4096;
                        dpfVar11.m = j10;
                        l = Long.valueOf(h(l, j10));
                    }
                    if (bzzVar.k) {
                        long j11 = caaVar.j;
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        dpf dpfVar12 = (dpf) n.b;
                        dpfVar12.a |= 32768;
                        dpfVar12.p = j11;
                        l = Long.valueOf(h(l, j11));
                    }
                    if (caaVar.m.b != null) {
                        dpd i2 = i(caaVar.m);
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        dpf dpfVar13 = (dpf) n.b;
                        i2.getClass();
                        dpfVar13.w = i2;
                        dpfVar13.a |= 262144;
                        if ((i2.a & 2) != 0) {
                            l = Long.valueOf(h(l, i2.c));
                        }
                        if ((i2.a & 4) != 0) {
                            l = Long.valueOf(h(l, i2.d));
                        }
                        if ((i2.a & 8) != 0) {
                            l = Long.valueOf(h(l, i2.e));
                        }
                    }
                    if (caaVar.n.b != null) {
                        dpd i3 = i(caaVar.n);
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        dpf dpfVar14 = (dpf) n.b;
                        i3.getClass();
                        dpfVar14.x = i3;
                        dpfVar14.a |= 524288;
                        if ((i3.a & 2) != 0) {
                            l = Long.valueOf(h(l, i3.c));
                        }
                        if ((i3.a & 4) != 0) {
                            l = Long.valueOf(h(l, i3.d));
                        }
                        if ((i3.a & 8) != 0) {
                            l = Long.valueOf(h(l, i3.e));
                        }
                    }
                    coc cocVar2 = cag.a;
                    if (cocVar2 == null) {
                        long sysconf = Os.sysconf(OsConstants._SC_CLK_TCK);
                        cns e = sysconf > 0 ? coc.e(Long.valueOf(sysconf)) : cns.a;
                        if (e.d()) {
                            StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                            byte[] bArr = new byte[440];
                            try {
                                try {
                                    FileInputStream fileInputStream = new FileInputStream(new File("/proc/self/stat"));
                                    try {
                                        int read = fileInputStream.read(bArr);
                                        fileInputStream.close();
                                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                                        int i4 = 0;
                                        while (true) {
                                            if (i4 >= read) {
                                                i4 = 0;
                                            } else if (bArr[i4] != 40) {
                                                i4++;
                                            }
                                        }
                                        if (i4 == 0 || (i = i4 + 16) >= read) {
                                            cocVar = cns.a;
                                        } else {
                                            while (true) {
                                                if (i <= i4) {
                                                    z = false;
                                                } else if (bArr[i] == 41) {
                                                    i4 = i;
                                                    z = true;
                                                } else {
                                                    i--;
                                                }
                                            }
                                            if (z) {
                                                long j12 = 0;
                                                int i5 = 1;
                                                while (true) {
                                                    if (i4 < read) {
                                                        byte b = bArr[i4];
                                                        if (b == 32) {
                                                            int i6 = i5 + 1;
                                                            if (i5 != 21) {
                                                                i5 = i6;
                                                                i4++;
                                                                j2 = 0;
                                                            } else if (j12 > j2) {
                                                                cocVar = coc.e(Long.valueOf(j12));
                                                            }
                                                        } else {
                                                            if (i5 != 21) {
                                                                continue;
                                                            } else if (j12 <= 922337203685477580L) {
                                                                long j13 = j12 * 10;
                                                                if (b >= 48 && b <= 57) {
                                                                    j12 = j13 + (b - 48);
                                                                }
                                                            }
                                                            i4++;
                                                            j2 = 0;
                                                        }
                                                    }
                                                }
                                                cocVar = cns.a;
                                            } else {
                                                cocVar = cns.a;
                                            }
                                        }
                                    } finally {
                                    }
                                } catch (IOException e2) {
                                    cocVar = cns.a;
                                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                                }
                                cocVar2 = !cocVar.d() ? cns.a : coc.e(Long.valueOf(TimeUnit.SECONDS.toMillis(((Long) cocVar.a()).longValue()) / ((Long) e.a()).longValue()));
                            } catch (Throwable th) {
                                StrictMode.setThreadPolicy(allowThreadDiskReads);
                                throw th;
                            }
                        } else {
                            cocVar2 = cns.a;
                        }
                        cag.a = cocVar2;
                    }
                    if (cocVar2.d()) {
                        Long l2 = (Long) cocVar2.a();
                        long longValue = l2.longValue();
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        dpf dpfVar15 = (dpf) n.b;
                        dpfVar15.a |= 2;
                        dpfVar15.c = longValue;
                        l = Long.valueOf(h(l, l2.longValue()));
                    }
                    long startElapsedRealtime = Process.getStartElapsedRealtime();
                    if (n.c) {
                        n.k();
                        n.c = false;
                    }
                    dpf dpfVar16 = (dpf) n.b;
                    dpfVar16.a |= 4;
                    dpfVar16.d = startElapsedRealtime;
                    long longValue2 = Long.valueOf(h(l, startElapsedRealtime)).longValue();
                    boolean booleanValue = ((Boolean) this.c.a()).booleanValue();
                    if (longValue2 != 0) {
                        if (!booleanValue) {
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dpf dpfVar17 = (dpf) n.b;
                            dpfVar17.a |= 1;
                            dpfVar17.b = longValue2;
                        }
                        dpf dpfVar18 = (dpf) n.b;
                        if ((dpfVar18.a & 16) != 0) {
                            long j14 = dpfVar18.e - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dpf dpfVar19 = (dpf) n.b;
                            dpfVar19.a |= 16;
                            dpfVar19.e = j14;
                        }
                        dpf dpfVar20 = (dpf) n.b;
                        if ((dpfVar20.a & 128) != 0) {
                            long j15 = dpfVar20.h - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dpf dpfVar21 = (dpf) n.b;
                            dpfVar21.a |= 128;
                            dpfVar21.h = j15;
                        }
                        dpf dpfVar22 = (dpf) n.b;
                        if ((dpfVar22.a & 256) != 0) {
                            long j16 = dpfVar22.i - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dpf dpfVar23 = (dpf) n.b;
                            dpfVar23.a |= 256;
                            dpfVar23.i = j16;
                        }
                        dpf dpfVar24 = (dpf) n.b;
                        if ((dpfVar24.a & 32) != 0) {
                            long j17 = dpfVar24.f - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dpf dpfVar25 = (dpf) n.b;
                            dpfVar25.a |= 32;
                            dpfVar25.f = j17;
                        }
                        dpf dpfVar26 = (dpf) n.b;
                        if ((dpfVar26.a & 64) != 0) {
                            long j18 = dpfVar26.g - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dpf dpfVar27 = (dpf) n.b;
                            dpfVar27.a |= 64;
                            dpfVar27.g = j18;
                        }
                        dpf dpfVar28 = (dpf) n.b;
                        if ((dpfVar28.a & 512) != 0) {
                            long j19 = dpfVar28.j - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dpf dpfVar29 = (dpf) n.b;
                            dpfVar29.a |= 512;
                            dpfVar29.j = j19;
                        }
                        dpf dpfVar30 = (dpf) n.b;
                        if ((dpfVar30.a & 1024) != 0) {
                            long j20 = dpfVar30.k - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dpf dpfVar31 = (dpf) n.b;
                            dpfVar31.a |= 1024;
                            dpfVar31.k = j20;
                        }
                        dpf dpfVar32 = (dpf) n.b;
                        if ((dpfVar32.a & 2048) != 0) {
                            long j21 = dpfVar32.l - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dpf dpfVar33 = (dpf) n.b;
                            dpfVar33.a |= 2048;
                            dpfVar33.l = j21;
                        }
                        dpf dpfVar34 = (dpf) n.b;
                        if ((dpfVar34.a & 4096) != 0) {
                            long j22 = dpfVar34.m - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dpf dpfVar35 = (dpf) n.b;
                            dpfVar35.a |= 4096;
                            dpfVar35.m = j22;
                        }
                        dpf dpfVar36 = (dpf) n.b;
                        if ((dpfVar36.a & 8192) != 0) {
                            long j23 = dpfVar36.n - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dpf dpfVar37 = (dpf) n.b;
                            dpfVar37.a |= 8192;
                            dpfVar37.n = j23;
                        }
                        dpf dpfVar38 = (dpf) n.b;
                        if ((dpfVar38.a & 16384) != 0) {
                            long j24 = dpfVar38.o - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dpf dpfVar39 = (dpf) n.b;
                            dpfVar39.a |= 16384;
                            dpfVar39.o = j24;
                        }
                        dpf dpfVar40 = (dpf) n.b;
                        if ((dpfVar40.a & 32768) != 0) {
                            long j25 = dpfVar40.p - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dpf dpfVar41 = (dpf) n.b;
                            dpfVar41.a |= 32768;
                            dpfVar41.p = j25;
                        }
                        dpf dpfVar42 = (dpf) n.b;
                        if ((dpfVar42.a & 262144) != 0) {
                            dpd dpdVar = dpfVar42.w;
                            if (dpdVar == null) {
                                dpdVar = dpd.f;
                            }
                            dpd b2 = xt.b(dpdVar, longValue2);
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dpf dpfVar43 = (dpf) n.b;
                            b2.getClass();
                            dpfVar43.w = b2;
                            dpfVar43.a |= 262144;
                        }
                        dpf dpfVar44 = (dpf) n.b;
                        if ((dpfVar44.a & 524288) != 0) {
                            dpd dpdVar2 = dpfVar44.x;
                            if (dpdVar2 == null) {
                                dpdVar2 = dpd.f;
                            }
                            dpd b3 = xt.b(dpdVar2, longValue2);
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dpf dpfVar45 = (dpf) n.b;
                            b3.getClass();
                            dpfVar45.x = b3;
                            dpfVar45.a |= 524288;
                        }
                        dpf dpfVar46 = (dpf) n.b;
                        if ((dpfVar46.a & 4) != 0) {
                            long j26 = dpfVar46.d - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dpf dpfVar47 = (dpf) n.b;
                            dpfVar47.a |= 4;
                            dpfVar47.d = j26;
                        }
                        dpf dpfVar48 = (dpf) n.b;
                        if ((dpfVar48.a & 2) != 0) {
                            long j27 = dpfVar48.c - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dpf dpfVar49 = (dpf) n.b;
                            dpfVar49.a |= 2;
                            dpfVar49.c = j27;
                        }
                    }
                    btx btxVar = caaVar.k;
                    if (this.e.getAndSet(true)) {
                        dag dagVar = dad.a;
                    } else {
                        final cad cadVar = (cad) this.b.a();
                        hh.m(new czb() { // from class: cac
                            @Override // defpackage.czb
                            public final dag a() {
                                int b4;
                                final cad cadVar2 = cad.this;
                                final ddf ddfVar = n;
                                if (!cadVar2.b.c(null)) {
                                    return dad.a;
                                }
                                int b5 = dpx.b(((dpf) ddfVar.b).v);
                                if (((b5 != 0 && b5 == 3) || ((b4 = dpx.b(((dpf) ddfVar.b).v)) != 0 && b4 == 2)) && (((dpf) ddfVar.b).a & 16) == 0) {
                                    return dad.a;
                                }
                                bzq bzqVar = (bzq) cadVar2.c.a();
                                coc cocVar3 = bzqVar.b;
                                final dag j28 = hh.j(cns.a);
                                coc cocVar4 = bzqVar.a;
                                final dag j29 = hh.j(cns.a);
                                return hh.f(j28, j29).b(new czb() { // from class: cab
                                    @Override // defpackage.czb
                                    public final dag a() {
                                        cad cadVar3 = cad.this;
                                        ddf ddfVar2 = ddfVar;
                                        dag dagVar2 = j28;
                                        dag dagVar3 = j29;
                                        try {
                                            Map map = (Map) ((coc) hh.o(dagVar2)).c();
                                            if (map != null) {
                                                long j30 = ((dpf) ddfVar2.b).b;
                                                for (Map.Entry entry : map.entrySet()) {
                                                    int intValue = ((Integer) entry.getKey()).intValue();
                                                    long longValue3 = ((Long) entry.getValue()).longValue() - j30;
                                                    if (ddfVar2.c) {
                                                        ddfVar2.k();
                                                        ddfVar2.c = false;
                                                    }
                                                    dpf dpfVar50 = (dpf) ddfVar2.b;
                                                    dem demVar = dpfVar50.y;
                                                    if (!demVar.b) {
                                                        dpfVar50.y = demVar.a();
                                                    }
                                                    dpfVar50.y.put(Integer.valueOf(intValue), Long.valueOf(longValue3));
                                                }
                                            }
                                        } catch (Exception e3) {
                                            ((csx) ((csx) cad.a.c().g(e3)).h("com/google/android/libraries/performance/primes/metrics/startup/StartupMetricRecordingService", "setCustomTimestamps", 118, "StartupMetricRecordingService.java")).n("Failed to get custom timestamps future");
                                        }
                                        bwn bwnVar = cadVar3.b;
                                        bwi a = bwj.a();
                                        ddf n2 = dpz.y.n();
                                        ddf n3 = dpb.f.n();
                                        long leastSignificantBits = UUID.randomUUID().getLeastSignificantBits();
                                        if (n3.c) {
                                            n3.k();
                                            n3.c = false;
                                        }
                                        dpb dpbVar = (dpb) n3.b;
                                        int i7 = dpbVar.a | 1;
                                        dpbVar.a = i7;
                                        dpbVar.b = leastSignificantBits;
                                        dpbVar.c = 2;
                                        dpbVar.a = 2 | i7;
                                        dpf dpfVar51 = (dpf) ddfVar2.h();
                                        dpfVar51.getClass();
                                        dpbVar.e = dpfVar51;
                                        dpbVar.a |= 16;
                                        if (n2.c) {
                                            n2.k();
                                            n2.c = false;
                                        }
                                        dpz dpzVar = (dpz) n2.b;
                                        dpb dpbVar2 = (dpb) n3.h();
                                        dpbVar2.getClass();
                                        dpzVar.n = dpbVar2;
                                        dpzVar.a |= 16384;
                                        a.d((dpz) n2.h());
                                        a.b = (dot) ((coc) hh.o(dagVar3)).c();
                                        a.c = null;
                                        a.c(true);
                                        return bwnVar.b(a.a());
                                    }
                                }, czj.a);
                            }
                        }, cadVar.d);
                    }
                }
            }
        }
    }

    @Override // defpackage.bwq
    public final void u() {
        this.a.a(this);
    }
}
