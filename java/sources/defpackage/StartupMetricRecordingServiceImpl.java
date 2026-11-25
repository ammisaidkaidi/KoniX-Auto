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
public final class StartupMetricRecordingServiceImpl extends StartupTraceTracker implements PrimesMetricServiceLifecycle, bvd {
    private final PrimesLifecycleRegistrar a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;
    private final DaggerProviderInterface d;
    private final AtomicBoolean e = new AtomicBoolean();

    public StartupMetricRecordingServiceImpl(PrimesLifecycleRegistrar bvhVar, DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3) {
        this.a = bvhVar;
        this.b = dnyVar;
        this.c = dnyVar2;
        this.d = dnyVar3;
    }

    private static long h(Long l, long j) {
        return l == null ? j : Math.min(l.longValue(), j);
    }

    private static ProtoMessageStringAndThreeLongs i(StartupTimestampsHolder bzsVar) {
        ProtoMsgHoldingMessageAndBool n = ProtoMessageStringAndThreeLongs.f.n();
        if (bzsVar.a != null) {
            String str = bzsVar.a;
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageStringAndThreeLongs dpdVar = (ProtoMessageStringAndThreeLongs) n.b;
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
            ProtoMessageStringAndThreeLongs dpdVar2 = (ProtoMessageStringAndThreeLongs) n.b;
            dpdVar2.a |= 2;
            dpdVar2.c = longValue;
        }
        if (bzsVar.c != null) {
            long longValue2 = bzsVar.c.longValue();
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageStringAndThreeLongs dpdVar3 = (ProtoMessageStringAndThreeLongs) n.b;
            dpdVar3.a |= 4;
            dpdVar3.d = longValue2;
        }
        if (bzsVar.d != null) {
            long longValue3 = bzsVar.d.longValue();
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageStringAndThreeLongs dpdVar4 = (ProtoMessageStringAndThreeLongs) n.b;
            dpdVar4.a |= 8;
            dpdVar4.e = longValue3;
        }
        return (ProtoMessageStringAndThreeLongs) n.h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v154, types: [coc] */
    @Override // defpackage.ActivityEventListenerC
    public final void c(Activity activity) {
        Long l;
        long j;
        GuavaOptional cocVar;
        int i;
        boolean z;
        this.a.b(this);
        StartupTimingRecorder caaVar = caa.a;
        long j2 = 0;
        if (caaVar.g > 0 || caaVar.h > 0) {
            long j3 = caaVar.b ? caaVar.c : caaVar.e;
            if (j3 > 0) {
                if (caaVar.g >= j3 || caaVar.h >= j3) {
                    final ProtoMsgHoldingMessageAndBool n = ProtoMessageManyLongFields.z.n();
                    boolean z2 = caaVar.b;
                    if (n.c) {
                        n.k();
                        n.c = false;
                    }
                    ProtoMessageManyLongFields dpfVar = (ProtoMessageManyLongFields) n.b;
                    dpfVar.a |= 65536;
                    dpfVar.u = z2;
                    if (caaVar.b) {
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        ProtoMessageManyLongFields dpfVar2 = (ProtoMessageManyLongFields) n.b;
                        dpfVar2.v = 1;
                        dpfVar2.a = 131072 | dpfVar2.a;
                    } else {
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        ProtoMessageManyLongFields dpfVar3 = (ProtoMessageManyLongFields) n.b;
                        dpfVar3.v = 2;
                        dpfVar3.a = 131072 | dpfVar3.a;
                    }
                    StartupLifecycleFlags bzzVar = caaVar.l;
                    if (bzzVar.a) {
                        long j4 = caaVar.c;
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        ProtoMessageManyLongFields dpfVar4 = (ProtoMessageManyLongFields) n.b;
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
                        ProtoMessageManyLongFields dpfVar5 = (ProtoMessageManyLongFields) n.b;
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
                        ProtoMessageManyLongFields dpfVar6 = (ProtoMessageManyLongFields) n.b;
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
                    if (ProtoMessageTwoIntsAndFlagValue != -1) {
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        ProtoMessageManyLongFields dpfVar7 = (ProtoMessageManyLongFields) n.b;
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
                        ProtoMessageManyLongFields dpfVar8 = (ProtoMessageManyLongFields) n.b;
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
                        ProtoMessageManyLongFields dpfVar9 = (ProtoMessageManyLongFields) n.b;
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
                        ProtoMessageManyLongFields dpfVar10 = (ProtoMessageManyLongFields) n.b;
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
                        ProtoMessageManyLongFields dpfVar11 = (ProtoMessageManyLongFields) n.b;
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
                        ProtoMessageManyLongFields dpfVar12 = (ProtoMessageManyLongFields) n.b;
                        dpfVar12.a |= 32768;
                        dpfVar12.p = j11;
                        l = Long.valueOf(h(l, j11));
                    }
                    if (caaVar.m.b != null) {
                        ProtoMessageStringAndThreeLongs i2 = i(caaVar.m);
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        ProtoMessageManyLongFields dpfVar13 = (ProtoMessageManyLongFields) n.b;
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
                        ProtoMessageStringAndThreeLongs i3 = i(caaVar.n);
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        ProtoMessageManyLongFields dpfVar14 = (ProtoMessageManyLongFields) n.b;
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
                    GuavaOptional cocVar2 = cag.a;
                    if (cocVar2 == null) {
                        long sysconf = Os.sysconf(OsConstants._SC_CLK_TCK);
                        AbsentOptional e = sysconf > 0 ? GuavaOptional.e(Long.valueOf(sysconf)) : cns.a;
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
                                        if (i4 == 0 || (NavInstructionTypeEnum = i4 + 16) >= read) {
                                            cocVar = cns.a;
                                        } else {
                                            while (true) {
                                                if (NavInstructionTypeEnum <= i4) {
                                                    z = false;
                                                } else if (bArr[i] == 41) {
                                                    i4 = i;
                                                    z = true;
                                                } else {
                                                    i--;
                                                }
                                            }
                                            if (IcuMessageFormat) {
                                                long j12 = 0;
                                                int i5 = 1;
                                                while (true) {
                                                    if (i4 < read) {
                                                        byte b = bArr[i4];
                                                        if (ProtoLiteMessageBase == 32) {
                                                            int i6 = i5 + 1;
                                                            if (i5 != 21) {
                                                                i5 = i6;
                                                                i4++;
                                                                j2 = 0;
                                                            } else if (j12 > j2) {
                                                                cocVar = GuavaOptional.e(Long.valueOf(j12));
                                                            }
                                                        } else {
                                                            if (i5 != 21) {
                                                                continue;
                                                            } else if (j12 <= 922337203685477580L) {
                                                                long j13 = j12 * 10;
                                                                if (ProtoLiteMessageBase >= 48 && ProtoLiteMessageBase <= 57) {
                                                                    j12 = j13 + (ProtoLiteMessageBase - 48);
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
                                cocVar2 = !cocVar.d() ? cns.a : GuavaOptional.e(Long.valueOf(TimeUnit.SECONDS.toMillis(((Long) cocVar.a()).longValue()) / ((Long) e.a()).longValue()));
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
                        ProtoMessageManyLongFields dpfVar15 = (ProtoMessageManyLongFields) n.b;
                        dpfVar15.a |= 2;
                        dpfVar15.c = longValue;
                        l = Long.valueOf(h(l, l2.longValue()));
                    }
                    long startElapsedRealtime = Process.getStartElapsedRealtime();
                    if (n.c) {
                        n.k();
                        n.c = false;
                    }
                    ProtoMessageManyLongFields dpfVar16 = (ProtoMessageManyLongFields) n.b;
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
                            ProtoMessageManyLongFields dpfVar17 = (ProtoMessageManyLongFields) n.b;
                            dpfVar17.a |= 1;
                            dpfVar17.b = longValue2;
                        }
                        ProtoMessageManyLongFields dpfVar18 = (ProtoMessageManyLongFields) n.b;
                        if ((dpfVar18.a & 16) != 0) {
                            long j14 = dpfVar18.e - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            ProtoMessageManyLongFields dpfVar19 = (ProtoMessageManyLongFields) n.b;
                            dpfVar19.a |= 16;
                            dpfVar19.e = j14;
                        }
                        ProtoMessageManyLongFields dpfVar20 = (ProtoMessageManyLongFields) n.b;
                        if ((dpfVar20.a & 128) != 0) {
                            long j15 = dpfVar20.h - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            ProtoMessageManyLongFields dpfVar21 = (ProtoMessageManyLongFields) n.b;
                            dpfVar21.a |= 128;
                            dpfVar21.h = j15;
                        }
                        ProtoMessageManyLongFields dpfVar22 = (ProtoMessageManyLongFields) n.b;
                        if ((dpfVar22.a & 256) != 0) {
                            long j16 = dpfVar22.i - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            ProtoMessageManyLongFields dpfVar23 = (ProtoMessageManyLongFields) n.b;
                            dpfVar23.a |= 256;
                            dpfVar23.i = j16;
                        }
                        ProtoMessageManyLongFields dpfVar24 = (ProtoMessageManyLongFields) n.b;
                        if ((dpfVar24.a & 32) != 0) {
                            long j17 = dpfVar24.f - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            ProtoMessageManyLongFields dpfVar25 = (ProtoMessageManyLongFields) n.b;
                            dpfVar25.a |= 32;
                            dpfVar25.f = j17;
                        }
                        ProtoMessageManyLongFields dpfVar26 = (ProtoMessageManyLongFields) n.b;
                        if ((dpfVar26.a & 64) != 0) {
                            long j18 = dpfVar26.g - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            ProtoMessageManyLongFields dpfVar27 = (ProtoMessageManyLongFields) n.b;
                            dpfVar27.a |= 64;
                            dpfVar27.g = j18;
                        }
                        ProtoMessageManyLongFields dpfVar28 = (ProtoMessageManyLongFields) n.b;
                        if ((dpfVar28.a & 512) != 0) {
                            long j19 = dpfVar28.j - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            ProtoMessageManyLongFields dpfVar29 = (ProtoMessageManyLongFields) n.b;
                            dpfVar29.a |= 512;
                            dpfVar29.j = j19;
                        }
                        ProtoMessageManyLongFields dpfVar30 = (ProtoMessageManyLongFields) n.b;
                        if ((dpfVar30.a & 1024) != 0) {
                            long j20 = dpfVar30.k - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            ProtoMessageManyLongFields dpfVar31 = (ProtoMessageManyLongFields) n.b;
                            dpfVar31.a |= 1024;
                            dpfVar31.k = j20;
                        }
                        ProtoMessageManyLongFields dpfVar32 = (ProtoMessageManyLongFields) n.b;
                        if ((dpfVar32.a & 2048) != 0) {
                            long j21 = dpfVar32.l - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            ProtoMessageManyLongFields dpfVar33 = (ProtoMessageManyLongFields) n.b;
                            dpfVar33.a |= 2048;
                            dpfVar33.l = j21;
                        }
                        ProtoMessageManyLongFields dpfVar34 = (ProtoMessageManyLongFields) n.b;
                        if ((dpfVar34.a & 4096) != 0) {
                            long j22 = dpfVar34.m - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            ProtoMessageManyLongFields dpfVar35 = (ProtoMessageManyLongFields) n.b;
                            dpfVar35.a |= 4096;
                            dpfVar35.m = j22;
                        }
                        ProtoMessageManyLongFields dpfVar36 = (ProtoMessageManyLongFields) n.b;
                        if ((dpfVar36.a & 8192) != 0) {
                            long j23 = dpfVar36.n - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            ProtoMessageManyLongFields dpfVar37 = (ProtoMessageManyLongFields) n.b;
                            dpfVar37.a |= 8192;
                            dpfVar37.n = j23;
                        }
                        ProtoMessageManyLongFields dpfVar38 = (ProtoMessageManyLongFields) n.b;
                        if ((dpfVar38.a & 16384) != 0) {
                            long j24 = dpfVar38.o - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            ProtoMessageManyLongFields dpfVar39 = (ProtoMessageManyLongFields) n.b;
                            dpfVar39.a |= 16384;
                            dpfVar39.o = j24;
                        }
                        ProtoMessageManyLongFields dpfVar40 = (ProtoMessageManyLongFields) n.b;
                        if ((dpfVar40.a & 32768) != 0) {
                            long j25 = dpfVar40.p - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            ProtoMessageManyLongFields dpfVar41 = (ProtoMessageManyLongFields) n.b;
                            dpfVar41.a |= 32768;
                            dpfVar41.p = j25;
                        }
                        ProtoMessageManyLongFields dpfVar42 = (ProtoMessageManyLongFields) n.b;
                        if ((dpfVar42.a & 262144) != 0) {
                            ProtoMessageStringAndThreeLongs dpdVar = dpfVar42.w;
                            if (dpdVar == null) {
                                dpdVar = dpd.f;
                            }
                            ProtoMessageStringAndThreeLongs b2 = PrimesConfigHolder.b(dpdVar, longValue2);
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            ProtoMessageManyLongFields dpfVar43 = (ProtoMessageManyLongFields) n.b;
                            b2.getClass();
                            dpfVar43.w = b2;
                            dpfVar43.a |= 262144;
                        }
                        ProtoMessageManyLongFields dpfVar44 = (ProtoMessageManyLongFields) n.b;
                        if ((dpfVar44.a & 524288) != 0) {
                            ProtoMessageStringAndThreeLongs dpdVar2 = dpfVar44.x;
                            if (dpdVar2 == null) {
                                dpdVar2 = dpd.f;
                            }
                            ProtoMessageStringAndThreeLongs b3 = PrimesConfigHolder.b(dpdVar2, longValue2);
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            ProtoMessageManyLongFields dpfVar45 = (ProtoMessageManyLongFields) n.b;
                            b3.getClass();
                            dpfVar45.x = b3;
                            dpfVar45.a |= 524288;
                        }
                        ProtoMessageManyLongFields dpfVar46 = (ProtoMessageManyLongFields) n.b;
                        if ((dpfVar46.a & 4) != 0) {
                            long j26 = dpfVar46.d - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            ProtoMessageManyLongFields dpfVar47 = (ProtoMessageManyLongFields) n.b;
                            dpfVar47.a |= 4;
                            dpfVar47.d = j26;
                        }
                        ProtoMessageManyLongFields dpfVar48 = (ProtoMessageManyLongFields) n.b;
                        if ((dpfVar48.a & 2) != 0) {
                            long j27 = dpfVar48.c - longValue2;
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            ProtoMessageManyLongFields dpfVar49 = (ProtoMessageManyLongFields) n.b;
                            dpfVar49.a |= 2;
                            dpfVar49.c = j27;
                        }
                    }
                    PrimesMetricName btxVar = caaVar.k;
                    if (this.e.getAndSet(true)) {
                        ListenableFuture dagVar = dad.a;
                    } else {
                        final StartupMetricRecordingService cadVar = (StartupMetricRecordingService) this.b.a();
                        ProjectionIntentHelper.m(new FutureSupplier() { // from class: cac
                            @Override // defpackage.FutureSupplier
                            public final ListenableFuture a() {
                                int b4;
                                final StartupMetricRecordingService cadVar2 = StartupMetricRecordingService.this;
                                final ProtoMsgHoldingMessageAndBool ddfVar = n;
                                if (!cadVar2.b.c(null)) {
                                    return dad.a;
                                }
                                int b5 = CommonObjectsAndPreconditionsUtil.b(((ProtoMessageManyLongFields) ddfVar.b).v);
                                if (((b5 != 0 && b5 == 3) || ((b4 = CommonObjectsAndPreconditionsUtil.b(((ProtoMessageManyLongFields) ddfVar.b).v)) != 0 && b4 == 2)) && (((ProtoMessageManyLongFields) ddfVar.b).a & 16) == 0) {
                                    return dad.a;
                                }
                                StartupConfigurations bzqVar = (StartupConfigurations) cadVar2.c.a();
                                GuavaOptional cocVar3 = bzqVar.b;
                                final ListenableFuture j28 = ProjectionIntentHelper.j(cns.a);
                                GuavaOptional cocVar4 = bzqVar.a;
                                final ListenableFuture j29 = ProjectionIntentHelper.j(cns.a);
                                return ProjectionIntentHelper.f(j28, j29).b(new FutureSupplier() { // from class: cab
                                    @Override // defpackage.FutureSupplier
                                    public final ListenableFuture a() {
                                        StartupMetricRecordingService cadVar3 = StartupMetricRecordingService.this;
                                        ProtoMsgHoldingMessageAndBool ddfVar2 = ddfVar;
                                        ListenableFuture dagVar2 = j28;
                                        ListenableFuture dagVar3 = j29;
                                        try {
                                            Map map = (Map) ((GuavaOptional) ProjectionIntentHelper.o(dagVar2)).c();
                                            if (map != null) {
                                                long j30 = ((ProtoMessageManyLongFields) ddfVar2.b).b;
                                                for (Map.Entry entry : map.entrySet()) {
                                                    int intValue = ((Integer) entry.getKey()).intValue();
                                                    long longValue3 = ((Long) entry.getValue()).longValue() - j30;
                                                    if (ddfVar2.c) {
                                                        ddfVar2.k();
                                                        ddfVar2.c = false;
                                                    }
                                                    ProtoMessageManyLongFields dpfVar50 = (ProtoMessageManyLongFields) ddfVar2.b;
                                                    ProtoFieldMap demVar = dpfVar50.y;
                                                    if (!demVar.b) {
                                                        dpfVar50.y = demVar.a();
                                                    }
                                                    dpfVar50.y.put(Integer.valueOf(intValue), Long.valueOf(longValue3));
                                                }
                                            }
                                        } catch (Exception e3) {
                                            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) StartupMetricRecordingService.a.c().g(e3)).h("com/google/android/libraries/performance/primes/metrics/startup/StartupMetricRecordingService", "setCustomTimestamps", 118, "StartupMetricRecordingService.java")).n("Failed to get custom timestamps future");
                                        }
                                        MetricDispatcherImpl bwnVar = cadVar3.b;
                                        PrimesMetricBuilder a = PrimesMetric.a();
                                        ProtoMsgHoldingMessageAndBool n2 = ProtoRootAggregateMessage.y.n();
                                        ProtoMsgHoldingMessageAndBool n3 = ProtoMessageWithDpfAndEnum.f.n();
                                        long leastSignificantBits = UUID.randomUUID().getLeastSignificantBits();
                                        if (n3.c) {
                                            n3.k();
                                            n3.c = false;
                                        }
                                        ProtoMessageWithDpfAndEnum dpbVar = (ProtoMessageWithDpfAndEnum) n3.b;
                                        int i7 = dpbVar.a | 1;
                                        dpbVar.a = i7;
                                        dpbVar.b = leastSignificantBits;
                                        dpbVar.c = 2;
                                        dpbVar.a = 2 | i7;
                                        ProtoMessageManyLongFields dpfVar51 = (ProtoMessageManyLongFields) ddfVar2.h();
                                        dpfVar51.getClass();
                                        dpbVar.e = dpfVar51;
                                        dpbVar.a |= 16;
                                        if (n2.c) {
                                            n2.k();
                                            n2.c = false;
                                        }
                                        ProtoRootAggregateMessage dpzVar = (ProtoRootAggregateMessage) n2.b;
                                        ProtoMessageWithDpfAndEnum dpbVar2 = (ProtoMessageWithDpfAndEnum) n3.h();
                                        dpbVar2.getClass();
                                        dpzVar.n = dpbVar2;
                                        dpzVar.a |= 16384;
                                        a.d((ProtoRootAggregateMessage) n2.h());
                                        a.b = (ProtoEmptyMessageBeta) ((GuavaOptional) ProjectionIntentHelper.o(dagVar3)).c();
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

    @Override // defpackage.PrimesMetricServiceLifecycle
    public final void u() {
        this.a.a(this);
    }
}
