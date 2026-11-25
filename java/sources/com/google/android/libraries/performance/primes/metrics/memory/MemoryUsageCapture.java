package com.google.android.libraries.performance.primes.metrics.memory;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import android.os.PowerManager;
import android.os.StrictMode;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MemoryUsageCapture {
    private static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/libraries/performance/primes/metrics/memory/MemoryUsageCapture");
    private static StopwatchTicker b = ex.i(bpe.o);
    private final DaggerProviderInterface c;
    private final Context d;

    public MemoryUsageCapture(DaggerProviderInterface dnyVar, Context context) {
        this.c = dnyVar;
        this.d = context;
    }

    public static /* synthetic */ GuavaOptional a() {
        try {
            return GuavaOptional.e(Debug.MemoryInfo.class.getDeclaredMethod("getOtherPss", Integer.TYPE));
        } catch (Error e) {
            e = e;
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) a.b().g(ProtoFlagValueMessage)).h("com/google/android/libraries/performance/primes/metrics/memory/MemoryUsageCapture", "lambda$static$0", 94, "MemoryUsageCapture.java")).n("MemoryInfo.getOtherPss(which) failure");
            return cns.a;
        } catch (NoSuchMethodException e2) {
            return cns.a;
        } catch (Exception e3) {
            e = e3;
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) a.b().g(ProtoFlagValueMessage)).h("com/google/android/libraries/performance/primes/metrics/memory/MemoryUsageCapture", "lambda$static$0", 94, "MemoryUsageCapture.java")).n("MemoryInfo.getOtherPss(which) failure");
            return cns.a;
        }
    }

    private static int c(Debug.MemoryInfo memoryInfo) {
        Method method = (Method) ((GuavaOptional) b.a()).c();
        if (method == null) {
            return -1;
        }
        try {
            return ((Integer) method.invoke(memoryInfo, 14)).intValue();
        } catch (Error | Exception e) {
            b = bpe.p;
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) a.b().g(ProtoFlagValueMessage)).h("com/google/android/libraries/performance/primes/metrics/memory/MemoryUsageCapture", "getOtherGraphicsPss", 119, "MemoryUsageCapture.java")).n("MemoryInfo.getOtherPss(which) invocation failure");
            return -1;
        }
    }

    private static Integer d(String str) {
        if (str == null) {
            return null;
        }
        return Integer.valueOf(Integer.parseInt(str));
    }

    private static Long e(Pattern pattern, String str) {
        Matcher matcher = pattern.matcher(str);
        try {
            if (!matcher.find()) {
                return null;
            }
            String group = matcher.group(1);
            Object[] objArr = new Object[0];
            if (group != null) {
                return Long.valueOf(Long.parseLong(group));
            }
            throw new GuavaUncheckedException(ex.k("expected a non-null reference", objArr));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    final ProtoMessageWithDowDphDov b(int i, int i2, String str, String str2) {
        ActivityManager.MemoryInfo memoryInfo;
        UrlSanitizerPatterns bzdVar;
        MemoryConfigurations a2 = ((JankMetricServiceFactory) this.c).a();
        GoogleSignatureVerifier.e();
        Debug.MemoryInfo memoryInfo2 = a2.d ? ProcessNameReader.a(this.d).getProcessMemoryInfo(new int[]{i2})[0] : null;
        if (a2.e) {
            ActivityManager.MemoryInfo memoryInfo3 = new ActivityManager.MemoryInfo();
            ProcessNameReader.a(this.d).getMemoryInfo(memoryInfo3);
            memoryInfo = memoryInfo3;
        } else {
            memoryInfo = null;
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                File file = new File("/proc/self/status");
                Charset defaultCharset = Charset.defaultCharset();
                defaultCharset.getClass();
                SuppressedCloseableStack cxlVar = new SuppressedCloseableStack(cxl.a);
                try {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    cxlVar.c.addFirst(fileInputStream);
                    byte[] b2 = MaxBytesValidator.b(fileInputStream, fileInputStream.getChannel().size());
                    cxlVar.close();
                    String str3 = new String(b2, defaultCharset);
                    if (str3.isEmpty()) {
                        ((ParameterizedLoggerApi) a.b().h("com/google/android/libraries/performance/primes/metrics/memory/MemoryUsageCapture", "procStatusFromString", 220, "MemoryUsageCapture.java")).n("Null or empty proc status");
                        bzdVar = null;
                    } else {
                        UrlSanitizerPatterns bzdVar2 = new UrlSanitizerPatterns();
                        bzdVar2.f = e(bzd.a, str3);
                        bzdVar2.g = e(bzd.b, str3);
                        bzdVar2.h = e(bzd.c, str3);
                        bzdVar2.i = e(bzd.d, str3);
                        bzdVar2.j = e(bzd.e, str3);
                        bzdVar = bzdVar2;
                    }
                } finally {
                }
            } catch (IOException e) {
                ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) a.b().g(ProtoFlagValueMessage)).h("com/google/android/libraries/performance/primes/metrics/memory/MemoryUsageCapture", "getProcStatus", 249, "MemoryUsageCapture.java")).n("Error reading proc status");
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                bzdVar = null;
            }
            ProtoMsgSubclassOfDdf ddhVar = (ProtoMsgSubclassOfDdf) ProtoMessageWithDowDphDov.h.n();
            ProtoMsgHoldingMessageAndBool n = ProtoMessageWrappingDou.c.n();
            ProtoMsgHoldingMessageAndBool n2 = ProtoMessagePackedIntsAndLongs.D.n();
            if (memoryInfo2 != null) {
                int i3 = memoryInfo2.dalvikPss;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessagePackedIntsAndLongs douVar = (ProtoMessagePackedIntsAndLongs) n2.b;
                douVar.a |= 1;
                douVar.b = i3;
                int i4 = memoryInfo2.nativePss;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessagePackedIntsAndLongs douVar2 = (ProtoMessagePackedIntsAndLongs) n2.b;
                douVar2.a |= 2;
                douVar2.c = i4;
                int i5 = memoryInfo2.otherPss;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessagePackedIntsAndLongs douVar3 = (ProtoMessagePackedIntsAndLongs) n2.b;
                douVar3.a |= 4;
                douVar3.d = i5;
                int i6 = memoryInfo2.dalvikPrivateDirty;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessagePackedIntsAndLongs douVar4 = (ProtoMessagePackedIntsAndLongs) n2.b;
                douVar4.a |= 8;
                douVar4.e = i6;
                int i7 = memoryInfo2.nativePrivateDirty;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessagePackedIntsAndLongs douVar5 = (ProtoMessagePackedIntsAndLongs) n2.b;
                douVar5.a |= 16;
                douVar5.f = i7;
                int i8 = memoryInfo2.otherPrivateDirty;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessagePackedIntsAndLongs douVar6 = (ProtoMessagePackedIntsAndLongs) n2.b;
                douVar6.a |= 32;
                douVar6.g = i8;
                int totalPss = memoryInfo2.getTotalPss();
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessagePackedIntsAndLongs douVar7 = (ProtoMessagePackedIntsAndLongs) n2.b;
                douVar7.a |= 64;
                douVar7.h = totalPss;
                int totalPrivateClean = memoryInfo2.getTotalPrivateClean();
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessagePackedIntsAndLongs douVar8 = (ProtoMessagePackedIntsAndLongs) n2.b;
                douVar8.a |= 128;
                douVar8.i = totalPrivateClean;
                int totalSwappablePss = memoryInfo2.getTotalSwappablePss();
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessagePackedIntsAndLongs douVar9 = (ProtoMessagePackedIntsAndLongs) n2.b;
                douVar9.a |= 512;
                douVar9.k = totalSwappablePss;
                int totalSharedDirty = memoryInfo2.getTotalSharedDirty();
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessagePackedIntsAndLongs douVar10 = (ProtoMessagePackedIntsAndLongs) n2.b;
                douVar10.a |= 256;
                douVar10.j = totalSharedDirty;
                int c = c(memoryInfo2);
                if (PhenotypeFlagMessage != -1) {
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    ProtoMessagePackedIntsAndLongs douVar11 = (ProtoMessagePackedIntsAndLongs) n2.b;
                    douVar11.a |= 1024;
                    douVar11.l = c;
                }
                try {
                    Map<String, String> memoryStats = memoryInfo2.getMemoryStats();
                    Integer d = d(memoryStats.get("summary.code"));
                    if (ProtoMsgIntStringInt != null) {
                        int intValue = d.intValue();
                        if (n2.c) {
                            n2.k();
                            n2.c = false;
                        }
                        ProtoMessagePackedIntsAndLongs douVar12 = (ProtoMessagePackedIntsAndLongs) n2.b;
                        douVar12.a |= 4096;
                        douVar12.n = intValue;
                    }
                    Integer d2 = d(memoryStats.get("summary.stack"));
                    if (d2 != null) {
                        int intValue2 = d2.intValue();
                        if (n2.c) {
                            n2.k();
                            n2.c = false;
                        }
                        ProtoMessagePackedIntsAndLongs douVar13 = (ProtoMessagePackedIntsAndLongs) n2.b;
                        douVar13.a |= 8192;
                        douVar13.o = intValue2;
                    }
                    Integer d3 = d(memoryStats.get("summary.graphics"));
                    if (d3 != null) {
                        int intValue3 = d3.intValue();
                        if (n2.c) {
                            n2.k();
                            n2.c = false;
                        }
                        ProtoMessagePackedIntsAndLongs douVar14 = (ProtoMessagePackedIntsAndLongs) n2.b;
                        douVar14.a |= 16384;
                        douVar14.p = intValue3;
                    }
                    Integer d4 = d(memoryStats.get("summary.system"));
                    if (d4 != null) {
                        int intValue4 = d4.intValue();
                        if (n2.c) {
                            n2.k();
                            n2.c = false;
                        }
                        ProtoMessagePackedIntsAndLongs douVar15 = (ProtoMessagePackedIntsAndLongs) n2.b;
                        douVar15.a |= 65536;
                        douVar15.v = intValue4;
                    }
                    Integer d5 = d(memoryStats.get("summary.java-heap"));
                    if (d5 != null) {
                        int intValue5 = d5.intValue();
                        if (n2.c) {
                            n2.k();
                            n2.c = false;
                        }
                        ProtoMessagePackedIntsAndLongs douVar16 = (ProtoMessagePackedIntsAndLongs) n2.b;
                        douVar16.a |= 2048;
                        douVar16.m = intValue5;
                    }
                    Integer d6 = d(memoryStats.get("summary.private-other"));
                    if (d6 != null) {
                        int intValue6 = d6.intValue();
                        if (n2.c) {
                            n2.k();
                            n2.c = false;
                        }
                        ProtoMessagePackedIntsAndLongs douVar17 = (ProtoMessagePackedIntsAndLongs) n2.b;
                        douVar17.a |= 32768;
                        douVar17.u = intValue6;
                    }
                } catch (NumberFormatException e2) {
                    ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) a.b().g(e2)).h("com/google/android/libraries/performance/primes/metrics/memory/MemoryUsageCapture", "addDebugInfoToMemoryStats", 326, "MemoryUsageCapture.java")).n("failed to collect memory summary stats");
                }
            }
            if (memoryInfo != null) {
                int i9 = (int) (memoryInfo.availMem >> 10);
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessagePackedIntsAndLongs douVar18 = (ProtoMessagePackedIntsAndLongs) n2.b;
                douVar18.a |= 131072;
                douVar18.w = i9;
                int i10 = (int) (memoryInfo.totalMem >> 20);
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessagePackedIntsAndLongs douVar19 = (ProtoMessagePackedIntsAndLongs) n2.b;
                douVar19.a |= 262144;
                douVar19.x = i10;
            }
            if (bzdVar != null) {
                Long l = bzdVar.f;
                if (ProtoMessageSingleStringL != null) {
                    long longValue = l.longValue();
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    ProtoMessagePackedIntsAndLongs douVar20 = (ProtoMessagePackedIntsAndLongs) n2.b;
                    douVar20.a |= 524288;
                    douVar20.y = longValue;
                }
                Long l2 = bzdVar.g;
                if (l2 != null) {
                    long longValue2 = l2.longValue();
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    ProtoMessagePackedIntsAndLongs douVar21 = (ProtoMessagePackedIntsAndLongs) n2.b;
                    douVar21.a |= 1048576;
                    douVar21.z = longValue2;
                }
                Long l3 = bzdVar.h;
                if (l3 != null) {
                    long longValue3 = l3.longValue();
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    ProtoMessagePackedIntsAndLongs douVar22 = (ProtoMessagePackedIntsAndLongs) n2.b;
                    douVar22.a |= 2097152;
                    douVar22.A = longValue3;
                }
                Long l4 = bzdVar.i;
                if (l4 != null) {
                    long longValue4 = l4.longValue();
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    ProtoMessagePackedIntsAndLongs douVar23 = (ProtoMessagePackedIntsAndLongs) n2.b;
                    douVar23.a |= 4194304;
                    douVar23.B = longValue4;
                }
                Long l5 = bzdVar.j;
                if (l5 != null) {
                    long longValue5 = l5.longValue();
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    ProtoMessagePackedIntsAndLongs douVar24 = (ProtoMessagePackedIntsAndLongs) n2.b;
                    douVar24.a |= 8388608;
                    douVar24.C = longValue5;
                }
            }
            ProtoMessagePackedIntsAndLongs douVar25 = (ProtoMessagePackedIntsAndLongs) n2.h();
            if (n.c) {
                n.k();
                n.c = false;
            }
            ProtoMessageWrappingDou dowVar = (ProtoMessageWrappingDou) n.b;
            douVar25.getClass();
            dowVar.b = douVar25;
            dowVar.a |= 1;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            ProtoMessageWithDowDphDov doxVar = (ProtoMessageWithDowDphDov) ddhVar.b;
            ProtoMessageWrappingDou dowVar2 = (ProtoMessageWrappingDou) n.h();
            dowVar2.getClass();
            doxVar.b = dowVar2;
            doxVar.a |= 1;
            ProtoMsgHoldingMessageAndBool n3 = ProtoMessageWrappingDpg.c.n();
            ProtoMessageLongBoolIntString d7 = PrimesMetricTransmitter.d(str, this.d);
            if (n3.c) {
                n3.k();
                n3.c = false;
            }
            ProtoMessageWrappingDpg dphVar = (ProtoMessageWrappingDpg) n3.b;
            d7.getClass();
            dphVar.b = d7;
            dphVar.a |= 1;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            ProtoMessageWithDowDphDov doxVar2 = (ProtoMessageWithDowDphDov) ddhVar.b;
            ProtoMessageWrappingDpg dphVar2 = (ProtoMessageWrappingDpg) n3.h();
            dphVar2.getClass();
            doxVar2.c = dphVar2;
            doxVar2.a |= 2;
            ProtoMsgHoldingMessageAndBool n4 = ProtoMessageIntAndBoolean.c.n();
            Context context = this.d;
            int i11 = bvk.b;
            Object systemService = context.getSystemService("power");
            systemService.getClass();
            boolean isInteractive = ((PowerManager) systemService).isInteractive();
            if (n4.c) {
                n4.k();
                n4.c = false;
            }
            ProtoMessageIntAndBoolean dovVar = (ProtoMessageIntAndBoolean) n4.b;
            dovVar.a |= 1;
            dovVar.b = isInteractive;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            ProtoMessageWithDowDphDov doxVar3 = (ProtoMessageWithDowDphDov) ddhVar.b;
            ProtoMessageIntAndBoolean dovVar2 = (ProtoMessageIntAndBoolean) n4.h();
            dovVar2.getClass();
            doxVar3.f = dovVar2;
            doxVar3.a |= 8;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            ProtoMessageWithDowDphDov doxVar4 = (ProtoMessageWithDowDphDov) ddhVar.b;
            doxVar4.e = i - 1;
            int i12 = doxVar4.a | 4;
            doxVar4.a = i12;
            if (str2 != null) {
                doxVar4.a = i12 | 16;
                doxVar4.g = str2;
            }
            return (ProtoMessageWithDowDphDov) ddhVar.h();
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }
}
