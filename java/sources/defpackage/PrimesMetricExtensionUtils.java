package defpackage;

import android.net.Uri;
import android.os.health.HealthStats;
import android.os.health.TimerStat;
import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public class PrimesMetricExtensionUtils {
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:16:0x006a
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1179)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    private static java.io.IOException a(java.io.File r7, java.io.IOException r8) {
        /*
            java.lang.String r0 = "Inoperable file:"
            java.util.Locale r1 = java.util.Locale.US     // Catch: java.io.IOException -> L6c
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.io.IOException -> L6c
            java.lang.String r3 = r7.getCanonicalPath()     // Catch: java.io.IOException -> L6c
            r4 = 0
            r2[r4] = r3     // Catch: java.io.IOException -> L6c
            long r5 = r7.getFreeSpace()     // Catch: java.io.IOException -> L6c
            java.lang.Long r3 = java.lang.Long.valueOf(r5)     // Catch: java.io.IOException -> L6c
            r5 = 1
            r2[r5] = r3     // Catch: java.io.IOException -> L6c
            java.lang.String r3 = " canonical[%s] freeSpace[%d]"
            java.lang.String r1 = java.lang.String.format(r1, r3, r2)     // Catch: java.io.IOException -> L6c
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: java.io.IOException -> L6c
            int r2 = r1.length()     // Catch: java.io.IOException -> L6c
            if (r2 == 0) goto L2e
            java.lang.String r0 = r0.concat(r1)     // Catch: java.io.IOException -> L6c
            goto L34
        L2e:
            java.lang.String r1 = new java.lang.String     // Catch: java.io.IOException -> L6c
            r1.<init>(r0)     // Catch: java.io.IOException -> L6c
            r0 = r1
        L34:
            java.lang.String r7 = r7.getCanonicalPath()     // Catch: java.io.IOException -> L68 java.lang.Exception -> L6a
            android.system.StructStat r7 = android.system.Os.stat(r7)     // Catch: java.io.IOException -> L68 java.lang.Exception -> L6a
            java.lang.String r1 = java.lang.String.valueOf(r0)     // Catch: java.io.IOException -> L68 java.lang.Exception -> L6a
            java.util.Locale r2 = java.util.Locale.US     // Catch: java.io.IOException -> L68 java.lang.Exception -> L6a
            java.lang.Object[] r3 = new java.lang.Object[r5]     // Catch: java.io.IOException -> L68 java.lang.Exception -> L6a
            int r7 = r7.st_mode     // Catch: java.io.IOException -> L68 java.lang.Exception -> L6a
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch: java.io.IOException -> L68 java.lang.Exception -> L6a
            r3[r4] = r7     // Catch: java.io.IOException -> L68 java.lang.Exception -> L6a
            java.lang.String r7 = " mode[%d]"
            java.lang.String r7 = java.lang.String.format(r2, r7, r3)     // Catch: java.io.IOException -> L68 java.lang.Exception -> L6a
            java.lang.String r7 = java.lang.String.valueOf(r7)     // Catch: java.io.IOException -> L68 java.lang.Exception -> L6a
            int r2 = r7.length()     // Catch: java.io.IOException -> L68 java.lang.Exception -> L6a
            if (r2 == 0) goto L61
            java.lang.String r0 = r1.concat(r7)     // Catch: java.io.IOException -> L68 java.lang.Exception -> L6a
            goto L77
        L61:
            java.lang.String r7 = new java.lang.String     // Catch: java.io.IOException -> L68 java.lang.Exception -> L6a
            r7.<init>(r1)     // Catch: java.io.IOException -> L68 java.lang.Exception -> L6a
            r0 = r7
            goto L77
        L68:
            r7 = move-exception
            goto L6d
        L6a:
            r7 = move-exception
            goto L77
        L6c:
            r7 = move-exception
        L6d:
            java.lang.String r7 = java.lang.String.valueOf(r0)
            java.lang.String r0 = " failed"
            java.lang.String r0 = r7.concat(r0)
        L77:
            java.io.IOException r7 = new java.io.IOException
            r7.<init>(r0, r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.PrimesMetricExtensionUtils.a(java.io.File, java.io.IOException):java.io.IOException");
    }

    private static IOException b(File file, IOException iOException) {
        File parentFile = file.getParentFile();
        return parentFile == null ? a(file, iOException) : parentFile.exists() ? parentFile.isDirectory() ? parentFile.canRead() ? parentFile.canWrite() ? a(file, iOException) : a(file, iOException) : parentFile.canWrite() ? a(file, iOException) : a(file, iOException) : parentFile.canRead() ? parentFile.canWrite() ? a(file, iOException) : a(file, iOException) : parentFile.canWrite() ? a(file, iOException) : a(file, iOException) : a(file, iOException);
    }

    public static long d(HealthStats healthStats, int i) {
        if (healthStats == null || !healthStats.hasMeasurement(NavInstructionTypeEnum)) {
            return 0L;
        }
        return healthStats.getMeasurement(NavInstructionTypeEnum);
    }

    public static List e(HealthStats healthStats, int i) {
        return (healthStats == null || !healthStats.hasTimers(NavInstructionTypeEnum)) ? Collections.emptyList() : TimerStatMetricExtensionConverter.a.d(healthStats.getTimers(NavInstructionTypeEnum));
    }

    public static Map f(HealthStats healthStats, int i) {
        return (healthStats == null || !healthStats.hasStats(NavInstructionTypeEnum)) ? Collections.emptyMap() : healthStats.getStats(NavInstructionTypeEnum);
    }

    public static ProtoMessageLongAndString g(String str) {
        ProtoMsgHoldingMessageAndBool n = dom.d.n();
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMessageLongAndString domVar = (ProtoMessageLongAndString) n.b;
        domVar.a |= 2;
        domVar.c = str;
        return (ProtoMessageLongAndString) n.h();
    }

    public static ProtoMessageTwoIntsLongAndDom h(HealthStats healthStats, int i) {
        if (healthStats == null || !healthStats.hasTimer(NavInstructionTypeEnum)) {
            return null;
        }
        return j(null, healthStats.getTimer(NavInstructionTypeEnum));
    }

    static ProtoMessageTwoIntsLongAndDom i(ProtoMessageTwoIntsLongAndDom dorVar, ProtoMessageTwoIntsLongAndDom dorVar2) {
        if (dorVar == null || dorVar2 == null) {
            return dorVar;
        }
        int i = dorVar.b - dorVar2.b;
        long j = dorVar.c - dorVar2.c;
        if (NavInstructionTypeEnum == 0) {
            if (ProtoMessageTwoIntsAndFlagValue == 0) {
                return null;
            }
            i = 0;
        }
        ProtoMsgHoldingMessageAndBool n = dor.e.n();
        ProtoMessageLongAndString domVar = dorVar.d;
        if (domVar == null) {
            domVar = dom.d;
        }
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMessageTwoIntsLongAndDom dorVar3 = (ProtoMessageTwoIntsLongAndDom) n.b;
        domVar.getClass();
        dorVar3.d = domVar;
        int i2 = dorVar3.a | 4;
        dorVar3.a = i2;
        int i3 = i2 | 1;
        dorVar3.a = i3;
        dorVar3.b = i;
        dorVar3.a = i3 | 2;
        dorVar3.c = j;
        return (ProtoMessageTwoIntsLongAndDom) n.h();
    }

    public static ProtoMessageTwoIntsLongAndDom j(String str, TimerStat timerStat) {
        ProtoMsgHoldingMessageAndBool n = dor.e.n();
        int count = timerStat.getCount();
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMessageTwoIntsLongAndDom dorVar = (ProtoMessageTwoIntsLongAndDom) n.b;
        dorVar.a |= 1;
        dorVar.b = count;
        long time = timerStat.getTime();
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMessageTwoIntsLongAndDom dorVar2 = (ProtoMessageTwoIntsLongAndDom) n.b;
        int i = dorVar2.a | 2;
        dorVar2.a = i;
        dorVar2.c = time;
        if (dorVar2.ProtoLiteMessageBase < 0) {
            dorVar2.a = i | 1;
            dorVar2.b = 0;
        }
        if (str != null) {
            ProtoMessageLongAndString g = g(str);
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageTwoIntsLongAndDom dorVar3 = (ProtoMessageTwoIntsLongAndDom) n.b;
            g.getClass();
            dorVar3.d = g;
            dorVar3.a |= 4;
        }
        ProtoMessageTwoIntsLongAndDom dorVar4 = (ProtoMessageTwoIntsLongAndDom) n.b;
        if (dorVar4.b == 0 && dorVar4.c == 0) {
            return null;
        }
        return (ProtoMessageTwoIntsLongAndDom) n.h();
    }

    static ProtoMegaConfigMessage k(ProtoMegaConfigMessage dosVar, ProtoMegaConfigMessage dosVar2) {
        ProtoMessageTwoIntsLongAndDom dorVar;
        ProtoMessageTwoIntsLongAndDom dorVar2;
        ProtoMessageTwoIntsLongAndDom dorVar3;
        ProtoMessageTwoIntsLongAndDom dorVar4;
        ProtoMessageTwoIntsLongAndDom dorVar5;
        ProtoMessageTwoIntsLongAndDom dorVar6;
        ProtoMessageTwoIntsLongAndDom dorVar7;
        ProtoMessageTwoIntsLongAndDom dorVar8;
        ProtoMessageTwoIntsLongAndDom dorVar9;
        ProtoMessageTwoIntsLongAndDom dorVar10;
        ProtoMessageTwoIntsLongAndDom dorVar11;
        ProtoMessageTwoIntsLongAndDom dorVar12;
        ProtoMessageTwoIntsLongAndDom dorVar13;
        ProtoMessageTwoIntsLongAndDom dorVar14;
        ProtoMessageTwoIntsLongAndDom dorVar15;
        ProtoMessageTwoIntsLongAndDom dorVar16;
        ProtoMessageTwoIntsLongAndDom dorVar17;
        ProtoMessageTwoIntsLongAndDom dorVar18;
        ProtoMessageTwoIntsLongAndDom dorVar19;
        ProtoMessageTwoIntsLongAndDom dorVar20;
        ProtoMessageTwoIntsLongAndDom dorVar21;
        ProtoMessageTwoIntsLongAndDom dorVar22;
        ProtoMessageTwoIntsLongAndDom dorVar23;
        ProtoMessageTwoIntsLongAndDom dorVar24;
        ProtoMessageTwoIntsLongAndDom dorVar25;
        ProtoMessageTwoIntsLongAndDom dorVar26;
        ProtoMessageTwoIntsLongAndDom dorVar27;
        ProtoMessageTwoIntsLongAndDom dorVar28;
        ProtoMessageTwoIntsLongAndDom dorVar29;
        ProtoMessageTwoIntsLongAndDom dorVar30;
        if (dosVar == null || dosVar2 == null) {
            return dosVar;
        }
        ProtoMsgHoldingMessageAndBool n = dos.ar.n();
        if ((dosVar.a & 1) != 0) {
            long j = dosVar.c - dosVar2.c;
            if (ProtoMessageTwoIntsAndFlagValue != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMegaConfigMessage dosVar3 = (ProtoMegaConfigMessage) n.b;
                dosVar3.a |= 1;
                dosVar3.c = j;
            }
        }
        if ((dosVar.a & 2) != 0) {
            long j2 = dosVar.d - dosVar2.d;
            if (j2 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMegaConfigMessage dosVar4 = (ProtoMegaConfigMessage) n.b;
                dosVar4.a |= 2;
                dosVar4.d = j2;
            }
        }
        if ((dosVar.a & 4) != 0) {
            long j3 = dosVar.e - dosVar2.e;
            if (j3 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMegaConfigMessage dosVar5 = (ProtoMegaConfigMessage) n.b;
                dosVar5.a |= 4;
                dosVar5.e = j3;
            }
        }
        if ((dosVar.a & 8) != 0) {
            long j4 = dosVar.f - dosVar2.f;
            if (j4 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMegaConfigMessage dosVar6 = (ProtoMegaConfigMessage) n.b;
                dosVar6.a |= 8;
                dosVar6.f = j4;
            }
        }
        n.Q(TimerStatMetricExtensionConverter.a.e(dosVar.g, dosVar2.g));
        n.R(TimerStatMetricExtensionConverter.a.e(dosVar.h, dosVar2.h));
        n.S(TimerStatMetricExtensionConverter.a.e(dosVar.i, dosVar2.i));
        n.P(TimerStatMetricExtensionConverter.a.e(dosVar.j, dosVar2.j));
        n.O(TimerStatMetricExtensionConverter.a.e(dosVar.k, dosVar2.k));
        n.K(TimerStatMetricExtensionConverter.a.e(dosVar.l, dosVar2.l));
        if ((dosVar.a & 16) != 0) {
            dorVar = dosVar.m;
            if (dorVar == null) {
                dorVar = dor.e;
            }
        } else {
            dorVar = null;
        }
        if ((dosVar2.a & 16) != 0) {
            dorVar2 = dosVar2.m;
            if (dorVar2 == null) {
                dorVar2 = dor.e;
            }
        } else {
            dorVar2 = null;
        }
        ProtoMessageTwoIntsLongAndDom i = i(dorVar, dorVar2);
        if (NavInstructionTypeEnum != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMegaConfigMessage dosVar7 = (ProtoMegaConfigMessage) n.b;
            dosVar7.m = i;
            dosVar7.a |= 16;
        }
        n.L(TimerStatMetricExtensionConverter.a.e(dosVar.n, dosVar2.n));
        n.N(DopMetricExtensionConverter.a.e(dosVar.p, dosVar2.p));
        n.M(DonMetricExtensionConverter.a.e(dosVar.u, dosVar2.u));
        if ((dosVar.a & 32) != 0) {
            long j5 = dosVar.v - dosVar2.v;
            if (j5 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMegaConfigMessage dosVar8 = (ProtoMegaConfigMessage) n.b;
                dosVar8.a |= 32;
                dosVar8.v = j5;
            }
        }
        if ((dosVar.a & 64) != 0) {
            long j6 = dosVar.w - dosVar2.w;
            if (j6 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMegaConfigMessage dosVar9 = (ProtoMegaConfigMessage) n.b;
                dosVar9.a |= 64;
                dosVar9.w = j6;
            }
        }
        if ((dosVar.a & 128) != 0) {
            long j7 = dosVar.x - dosVar2.x;
            if (j7 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMegaConfigMessage dosVar10 = (ProtoMegaConfigMessage) n.b;
                dosVar10.a |= 128;
                dosVar10.x = j7;
            }
        }
        if ((dosVar.a & 256) != 0) {
            long j8 = dosVar.y - dosVar2.y;
            if (j8 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMegaConfigMessage dosVar11 = (ProtoMegaConfigMessage) n.b;
                dosVar11.a |= 256;
                dosVar11.y = j8;
            }
        }
        if ((dosVar.a & 512) != 0) {
            long j9 = dosVar.z - dosVar2.z;
            if (j9 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMegaConfigMessage dosVar12 = (ProtoMegaConfigMessage) n.b;
                dosVar12.a |= 512;
                dosVar12.z = j9;
            }
        }
        if ((dosVar.a & 1024) != 0) {
            long j10 = dosVar.A - dosVar2.A;
            if (j10 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMegaConfigMessage dosVar13 = (ProtoMegaConfigMessage) n.b;
                dosVar13.a |= 1024;
                dosVar13.A = j10;
            }
        }
        if ((dosVar.a & 2048) != 0) {
            long j11 = dosVar.B - dosVar2.B;
            if (j11 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).L(j11);
            }
        }
        if ((dosVar.a & 4096) != 0) {
            long j12 = dosVar.C - dosVar2.C;
            if (j12 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).M(j12);
            }
        }
        if ((dosVar.a & 8192) != 0) {
            long j13 = dosVar.D - dosVar2.D;
            if (j13 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).N(j13);
            }
        }
        if ((dosVar.a & 16384) != 0) {
            long j14 = dosVar.E - dosVar2.E;
            if (j14 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).O(j14);
            }
        }
        if ((dosVar.a & 32768) != 0) {
            long j15 = dosVar.F - dosVar2.F;
            if (j15 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).P(j15);
            }
        }
        if ((dosVar.a & 65536) != 0) {
            long j16 = dosVar.G - dosVar2.G;
            if (j16 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).Q(j16);
            }
        }
        if ((dosVar.a & 131072) != 0) {
            long j17 = dosVar.H - dosVar2.H;
            if (j17 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).R(j17);
            }
        }
        if ((dosVar.a & 262144) != 0) {
            long j18 = dosVar.I - dosVar2.I;
            if (j18 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).S(j18);
            }
        }
        if ((dosVar.a & 524288) != 0) {
            dorVar3 = dosVar.J;
            if (dorVar3 == null) {
                dorVar3 = dor.e;
            }
        } else {
            dorVar3 = null;
        }
        if ((524288 & dosVar2.a) != 0) {
            dorVar4 = dosVar2.J;
            if (dorVar4 == null) {
                dorVar4 = dor.e;
            }
        } else {
            dorVar4 = null;
        }
        ProtoMessageTwoIntsLongAndDom i2 = i(dorVar3, dorVar4);
        if (i2 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ((ProtoMegaConfigMessage) n.b).T(i2);
        }
        if ((dosVar.a & 1048576) != 0) {
            long j19 = dosVar.K - dosVar2.K;
            if (j19 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).U(j19);
            }
        }
        if ((dosVar.a & 2097152) != 0) {
            dorVar5 = dosVar.L;
            if (dorVar5 == null) {
                dorVar5 = dor.e;
            }
        } else {
            dorVar5 = null;
        }
        if ((2097152 & dosVar2.a) != 0) {
            dorVar6 = dosVar2.L;
            if (dorVar6 == null) {
                dorVar6 = dor.e;
            }
        } else {
            dorVar6 = null;
        }
        ProtoMessageTwoIntsLongAndDom i3 = i(dorVar5, dorVar6);
        if (i3 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ((ProtoMegaConfigMessage) n.b).V(i3);
        }
        if ((dosVar.a & 4194304) != 0) {
            dorVar7 = dosVar.M;
            if (dorVar7 == null) {
                dorVar7 = dor.e;
            }
        } else {
            dorVar7 = null;
        }
        if ((dosVar2.a & 4194304) != 0) {
            dorVar8 = dosVar2.M;
            if (dorVar8 == null) {
                dorVar8 = dor.e;
            }
        } else {
            dorVar8 = null;
        }
        ProtoMessageTwoIntsLongAndDom i4 = i(dorVar7, dorVar8);
        if (i4 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ((ProtoMegaConfigMessage) n.b).W(i4);
        }
        if ((dosVar.a & 8388608) != 0) {
            dorVar9 = dosVar.N;
            if (dorVar9 == null) {
                dorVar9 = dor.e;
            }
        } else {
            dorVar9 = null;
        }
        if ((dosVar2.a & 8388608) != 0) {
            dorVar10 = dosVar2.N;
            if (dorVar10 == null) {
                dorVar10 = dor.e;
            }
        } else {
            dorVar10 = null;
        }
        ProtoMessageTwoIntsLongAndDom i5 = i(dorVar9, dorVar10);
        if (i5 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ((ProtoMegaConfigMessage) n.b).X(i5);
        }
        if ((dosVar.a & 16777216) != 0) {
            dorVar11 = dosVar.O;
            if (dorVar11 == null) {
                dorVar11 = dor.e;
            }
        } else {
            dorVar11 = null;
        }
        if ((dosVar2.a & 16777216) != 0) {
            dorVar12 = dosVar2.O;
            if (dorVar12 == null) {
                dorVar12 = dor.e;
            }
        } else {
            dorVar12 = null;
        }
        ProtoMessageTwoIntsLongAndDom i6 = i(dorVar11, dorVar12);
        if (i6 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ((ProtoMegaConfigMessage) n.b).Y(i6);
        }
        if ((dosVar.a & 33554432) != 0) {
            dorVar13 = dosVar.P;
            if (dorVar13 == null) {
                dorVar13 = dor.e;
            }
        } else {
            dorVar13 = null;
        }
        if ((dosVar2.a & 33554432) != 0) {
            dorVar14 = dosVar2.P;
            if (dorVar14 == null) {
                dorVar14 = dor.e;
            }
        } else {
            dorVar14 = null;
        }
        ProtoMessageTwoIntsLongAndDom i7 = i(dorVar13, dorVar14);
        if (i7 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ((ProtoMegaConfigMessage) n.b).Z(i7);
        }
        if ((dosVar.a & 67108864) != 0) {
            dorVar15 = dosVar.Q;
            if (dorVar15 == null) {
                dorVar15 = dor.e;
            }
        } else {
            dorVar15 = null;
        }
        if ((dosVar2.a & 67108864) != 0) {
            dorVar16 = dosVar2.Q;
            if (dorVar16 == null) {
                dorVar16 = dor.e;
            }
        } else {
            dorVar16 = null;
        }
        ProtoMessageTwoIntsLongAndDom i8 = i(dorVar15, dorVar16);
        if (i8 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ((ProtoMegaConfigMessage) n.b).aa(i8);
        }
        if ((dosVar.a & 134217728) != 0) {
            dorVar17 = dosVar.R;
            if (dorVar17 == null) {
                dorVar17 = dor.e;
            }
        } else {
            dorVar17 = null;
        }
        if ((dosVar2.a & 134217728) != 0) {
            dorVar18 = dosVar2.R;
            if (dorVar18 == null) {
                dorVar18 = dor.e;
            }
        } else {
            dorVar18 = null;
        }
        ProtoMessageTwoIntsLongAndDom i9 = i(dorVar17, dorVar18);
        if (i9 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ((ProtoMegaConfigMessage) n.b).ab(i9);
        }
        if ((dosVar.a & 268435456) != 0) {
            dorVar19 = dosVar.S;
            if (dorVar19 == null) {
                dorVar19 = dor.e;
            }
        } else {
            dorVar19 = null;
        }
        if ((dosVar2.a & 268435456) != 0) {
            dorVar20 = dosVar2.S;
            if (dorVar20 == null) {
                dorVar20 = dor.e;
            }
        } else {
            dorVar20 = null;
        }
        ProtoMessageTwoIntsLongAndDom i10 = i(dorVar19, dorVar20);
        if (i10 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ((ProtoMegaConfigMessage) n.b).ac(i10);
        }
        if ((dosVar.a & 536870912) != 0) {
            dorVar21 = dosVar.T;
            if (dorVar21 == null) {
                dorVar21 = dor.e;
            }
        } else {
            dorVar21 = null;
        }
        if ((dosVar2.a & 536870912) != 0) {
            dorVar22 = dosVar2.T;
            if (dorVar22 == null) {
                dorVar22 = dor.e;
            }
        } else {
            dorVar22 = null;
        }
        ProtoMessageTwoIntsLongAndDom i11 = i(dorVar21, dorVar22);
        if (i11 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ((ProtoMegaConfigMessage) n.b).ad(i11);
        }
        if ((dosVar.a & 1073741824) != 0) {
            dorVar23 = dosVar.U;
            if (dorVar23 == null) {
                dorVar23 = dor.e;
            }
        } else {
            dorVar23 = null;
        }
        if ((dosVar2.a & 1073741824) != 0) {
            dorVar24 = dosVar2.U;
            if (dorVar24 == null) {
                dorVar24 = dor.e;
            }
        } else {
            dorVar24 = null;
        }
        ProtoMessageTwoIntsLongAndDom i12 = i(dorVar23, dorVar24);
        if (i12 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ((ProtoMegaConfigMessage) n.b).ae(i12);
        }
        if ((dosVar.a & Integer.MIN_VALUE) != 0) {
            dorVar25 = dosVar.V;
            if (dorVar25 == null) {
                dorVar25 = dor.e;
            }
        } else {
            dorVar25 = null;
        }
        if ((dosVar2.a & Integer.MIN_VALUE) != 0) {
            dorVar26 = dosVar2.V;
            if (dorVar26 == null) {
                dorVar26 = dor.e;
            }
        } else {
            dorVar26 = null;
        }
        ProtoMessageTwoIntsLongAndDom i13 = i(dorVar25, dorVar26);
        if (i13 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ((ProtoMegaConfigMessage) n.b).af(i13);
        }
        if ((dosVar.b & 1) != 0) {
            dorVar27 = dosVar.W;
            if (dorVar27 == null) {
                dorVar27 = dor.e;
            }
        } else {
            dorVar27 = null;
        }
        if ((dosVar2.b & 1) != 0) {
            dorVar28 = dosVar2.W;
            if (dorVar28 == null) {
                dorVar28 = dor.e;
            }
        } else {
            dorVar28 = null;
        }
        ProtoMessageTwoIntsLongAndDom i14 = i(dorVar27, dorVar28);
        if (i14 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ((ProtoMegaConfigMessage) n.b).ag(i14);
        }
        if ((dosVar.b & 2) != 0) {
            dorVar29 = dosVar.X;
            if (dorVar29 == null) {
                dorVar29 = dor.e;
            }
        } else {
            dorVar29 = null;
        }
        if ((dosVar2.b & 2) != 0) {
            dorVar30 = dosVar2.X;
            if (dorVar30 == null) {
                dorVar30 = dor.e;
            }
        } else {
            dorVar30 = null;
        }
        ProtoMessageTwoIntsLongAndDom i15 = i(dorVar29, dorVar30);
        if (i15 != null) {
            if (n.c) {
                n.k();
                n.c = false;
            }
            ((ProtoMegaConfigMessage) n.b).ah(i15);
        }
        if ((dosVar.b & 4) != 0) {
            long j20 = dosVar.Y - dosVar2.Y;
            if (j20 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).ai(j20);
            }
        }
        if ((dosVar.b & 8) != 0) {
            long j21 = dosVar.Z - dosVar2.Z;
            if (j21 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).aj(j21);
            }
        }
        if ((dosVar.b & 16) != 0) {
            long j22 = dosVar.aa - dosVar2.aa;
            if (j22 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).ak(j22);
            }
        }
        if ((dosVar.b & 32) != 0) {
            long j23 = dosVar.ab - dosVar2.ab;
            if (j23 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).al(j23);
            }
        }
        if ((dosVar.b & 64) != 0) {
            long j24 = dosVar.ac - dosVar2.ac;
            if (j24 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).am(j24);
            }
        }
        if ((dosVar.b & 128) != 0) {
            long j25 = dosVar.ad - dosVar2.ad;
            if (j25 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).an(j25);
            }
        }
        if ((dosVar.b & 256) != 0) {
            long j26 = dosVar.ae - dosVar2.ae;
            if (j26 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).ao(j26);
            }
        }
        if ((dosVar.b & 512) != 0) {
            long j27 = dosVar.af - dosVar2.af;
            if (j27 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).ap(j27);
            }
        }
        if ((dosVar.b & 1024) != 0) {
            long j28 = dosVar.ag - dosVar2.ag;
            if (j28 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).aq(j28);
            }
        }
        if ((dosVar.b & 2048) != 0) {
            long j29 = dosVar.ah - dosVar2.ah;
            if (j29 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ((ProtoMegaConfigMessage) n.b).ar(j29);
            }
        }
        if ((dosVar.b & 4096) != 0) {
            long j30 = dosVar.ai - dosVar2.ai;
            if (j30 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMegaConfigMessage dosVar14 = (ProtoMegaConfigMessage) n.b;
                dosVar14.b |= 4096;
                dosVar14.ai = j30;
            }
        }
        if ((dosVar.b & 8192) != 0) {
            long j31 = dosVar.aj - dosVar2.aj;
            if (j31 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMegaConfigMessage dosVar15 = (ProtoMegaConfigMessage) n.b;
                dosVar15.b |= 8192;
                dosVar15.aj = j31;
            }
        }
        if ((dosVar.b & 16384) != 0) {
            long j32 = dosVar.ak - dosVar2.ak;
            if (j32 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMegaConfigMessage dosVar16 = (ProtoMegaConfigMessage) n.b;
                dosVar16.b |= 16384;
                dosVar16.ak = j32;
            }
        }
        if ((dosVar.b & 32768) != 0) {
            long j33 = dosVar.al - dosVar2.al;
            if (j33 != 0) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMegaConfigMessage dosVar17 = (ProtoMegaConfigMessage) n.b;
                dosVar17.b |= 32768;
                dosVar17.al = j33;
            }
        }
        if ((dosVar.b & 65536) != 0) {
            long j34 = dosVar.am - dosVar2.am;
            if (j34 != 0) {
                n.T(j34);
            }
        }
        ProtoMessageTwoIntsLongAndDom i16 = i(dosVar.as() ? dosVar.at() : null, dosVar2.as() ? dosVar2.at() : null);
        if (i16 != null) {
            n.W(i16);
        }
        if (dosVar.au()) {
            long j35 = dosVar.ao - dosVar2.ao;
            if (j35 != 0) {
                n.aa(j35);
            }
        }
        if (dosVar.av()) {
            long j36 = dosVar.ap - dosVar2.ap;
            if (j36 != 0) {
                n.Z(j36);
            }
        }
        if (dosVar.aw()) {
            long j37 = dosVar.aq - dosVar2.aq;
            if (j37 != 0) {
                n.U(j37);
            }
        }
        ProtoMegaConfigMessage dosVar18 = (ProtoMegaConfigMessage) n.h();
        if (o(dosVar18)) {
            return null;
        }
        return dosVar18;
    }

    static boolean l(ProtoMessageWithTwoEnumsAndDom donVar) {
        return donVar == null || (donVar.b.size() == 0 && donVar.c.size() == 0);
    }

    static boolean m(ProtoMessageSixLongsAndDom dopVar) {
        if (dopVar != null) {
            return dopVar.ProtoLiteMessageBase <= 0 && dopVar.PhenotypeFlagMessage <= 0 && dopVar.ProtoMsgIntStringInt <= 0 && dopVar.ProtoFlagValueMessage <= 0 && dopVar.NavManeuverTypeEnum <= 0 && dopVar.ProtoMessageIntAndBooleanG <= 0;
        }
        return true;
    }

    static boolean n(ProtoMessageThreeIntsAndDom doqVar) {
        return doqVar == null || (((long) doqVar.b) <= 0 && ((long) doqVar.c) <= 0);
    }

    static boolean o(ProtoMegaConfigMessage dosVar) {
        if (dosVar != null) {
            return dosVar.PhenotypeFlagMessage <= 0 && dosVar.ProtoMsgIntStringInt <= 0 && dosVar.ProtoFlagValueMessage <= 0 && dosVar.NavManeuverTypeEnum <= 0 && dosVar.g.size() == 0 && dosVar.h.size() == 0 && dosVar.i.size() == 0 && dosVar.j.size() == 0 && dosVar.k.size() == 0 && dosVar.l.size() == 0 && dosVar.n.size() == 0 && dosVar.o.size() == 0 && dosVar.p.size() == 0 && dosVar.u.size() == 0 && dosVar.MessageFormatAttributeHolder <= 0 && dosVar.MessageFormatField <= 0 && dosVar.IcuPluralSelector <= 0 && dosVar.MessageFormatFormatterState <= 0 && dosVar.IcuMessageFormat <= 0 && dosVar.A <= 0 && dosVar.B <= 0 && dosVar.C <= 0 && dosVar.D <= 0 && dosVar.E <= 0 && dosVar.F <= 0 && dosVar.G <= 0 && dosVar.H <= 0 && dosVar.I <= 0 && dosVar.K <= 0 && dosVar.Y <= 0 && dosVar.Z <= 0 && dosVar.AlwaysTrueDecimalPredicate <= 0 && dosVar.AndDecimalPredicate <= 0 && dosVar.DecimalPredicateCombinerBase <= 0 && dosVar.DecimalPredicate <= 0 && dosVar.DecimalQuantityValue <= 0 && dosVar.PluralRanges <= 0 && dosVar.PluralSampleListParser <= 0 && dosVar.OrDecimalPredicate <= 0 && dosVar.DecimalRangeCondition <= 0 && dosVar.PluralRuleExpression <= 0 && dosVar.PluralKeywordValues <= 0 && dosVar.PluralRulesLocaleData <= 0 && dosVar.OrdinalPluralRulesData <= 0 && dosVar.PatternSpecParser <= 0 && dosVar.CarUiApiException <= 0 && dosVar.CarUiRuntimeException <= 0;
        }
        return true;
    }

    public static IOException p(MobStoreFileStorageRegistry chmVar, Uri uri, IOException iOException) {
        try {
            PipeTransform cidVar = new PipeTransform();
            cidVar.a = true;
            File file = (File) chmVar.b(uri, cidVar);
            return file.exists() ? file.isFile() ? file.canRead() ? file.canWrite() ? b(file, iOException) : b(file, iOException) : file.canWrite() ? b(file, iOException) : b(file, iOException) : file.canRead() ? file.canWrite() ? b(file, iOException) : b(file, iOException) : file.canWrite() ? b(file, iOException) : b(file, iOException) : b(file, iOException);
        } catch (IOException e) {
            return new IOException(iOException);
        }
    }

    public static void q(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }
}
