package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EdgeEffect;
import java.io.File;
import java.io.IOException;
import java.math.RoundingMode;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class OverflowCheckedLongArrayUtil {
    static int a(View view) {
        return view.getImportantForAccessibility();
    }

    static int b(View view) {
        return view.getMinimumHeight();
    }

    static int c(View view) {
        return view.getMinimumWidth();
    }

    static int d(View view) {
        return view.getWindowSystemUiVisibility();
    }

    static void e(View view) {
        view.postInvalidateOnAnimation();
    }

    static void f(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    static void g(View view, Runnable runnable, long j) {
        view.postOnAnimationDelayed(runnable, j);
    }

    static void h(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    static void i(View view, int i) {
        view.setImportantForAccessibility(NavInstructionTypeEnum);
    }

    static boolean j(View view) {
        return view.hasTransientState();
    }

    public static float k(EdgeEffect edgeEffect) {
        if (SqliteContentValuesHelper.c()) {
            return VersionedParcelReader.a(edgeEffect);
        }
        return 0.0f;
    }

    public static float l(EdgeEffect edgeEffect, float f, float f2) {
        if (SqliteContentValuesHelper.c()) {
            return VersionedParcelReader.b(edgeEffect, f, f2);
        }
        edgeEffect.onPull(f, f2);
        return f;
    }

    public static EdgeEffect m(Context context, AttributeSet attributeSet) {
        return SqliteContentValuesHelper.c() ? VersionedParcelReader.c(context, attributeSet) : new EdgeEffect(context);
    }

    public static GalServiceEndpoint n(AudioSinkManager aujVar) {
        return aujVar == null ? baz.a : aujVar.f;
    }

    static void o(boolean z, String str, long j, long j2) {
        if (IcuMessageFormat) {
            return;
        }
        StringBuilder sb = new StringBuilder(str.length() + 54);
        StaggeredGridLayoutParams.append("overflow: ");
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append("(");
        StaggeredGridLayoutParams.append(ProtoMessageTwoIntsAndFlagValue);
        StaggeredGridLayoutParams.append(", ");
        StaggeredGridLayoutParams.append(j2);
        StaggeredGridLayoutParams.append(")");
        throw new ArithmeticException(StaggeredGridLayoutParams.toString());
    }

    public static void p(boolean z) {
        if (!z) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }

    public static int q(long j, int i) {
        long j2 = i;
        long j3 = j % j2;
        if (j3 < 0) {
            j3 += j2;
        }
        return (int) j3;
    }

    public static long r(long j, long j2) {
        long j3 = j + j2;
        o(((ProtoMessageTwoIntsAndFlagValue ^ j2) < 0) | ((ProtoMessageTwoIntsAndFlagValue ^ j3) >= 0), "checkedAdd", j, j2);
        return j3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005f, code lost:
    
        if (r8 == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0053, code lost:
    
        if (r2 > 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
    
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005b, code lost:
    
        if (r9 < 0) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long s(long j, long j2, RoundingMode roundingMode) {
        roundingMode.getClass();
        long j3 = j / j2;
        long j4 = j - (j2 * j3);
        if (j4 == 0) {
            return j3;
        }
        int i = (int) ((ProtoMessageTwoIntsAndFlagValue ^ j2) >> 63);
        int i2 = i | 1;
        switch (cxw.a[roundingMode.ordinal()]) {
            case 1:
                p(false);
            case 2:
                return j3;
            case 3:
                break;
            case 4:
                return j3 + i2;
            case 5:
                if (i2 <= 0) {
                    r8 = false;
                    break;
                }
                break;
            case 6:
            case 7:
            case 8:
                long abs = Math.abs(j4);
                long abs2 = abs - (Math.abs(j2) - abs);
                if (abs2 != 0) {
                    break;
                } else {
                    r8 = (((1 & j3) != 0) & (roundingMode == RoundingMode.HALF_EVEN)) | (roundingMode == RoundingMode.HALF_UP);
                    break;
                }
            default:
                throw new AssertionError();
        }
    }

    public static long t(long j) {
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(ProtoMessageTwoIntsAndFlagValue) + Long.numberOfLeadingZeros((-1) ^ j) + Long.numberOfLeadingZeros(1000000000L) + Long.numberOfLeadingZeros(-1000000001L);
        if (numberOfLeadingZeros > 65) {
            return j * 1000000000;
        }
        o(numberOfLeadingZeros >= 64, "checkedMultiply", j, 1000000000L);
        o(true, "checkedMultiply", j, 1000000000L);
        long j2 = j * 1000000000;
        o(ProtoMessageTwoIntsAndFlagValue == 0 || j2 / j == 1000000000, "checkedMultiply", j, 1000000000L);
        return j2;
    }

    public static ProtoMsgHoldingMessageAndBool u(Throwable th) {
        StackTraceElement[] stackTraceElementArr;
        ProtoMsgHoldingMessageAndBool n = RepeatedEntryProto.f.n();
        String name = ActivityResultDispatchRunnable.getClass().getName();
        if (n.c) {
            n.k();
            n.c = false;
        }
        RepeatedEntryProto cxtVar = (RepeatedEntryProto) n.b;
        name.getClass();
        cxtVar.a |= 1;
        cxtVar.b = name;
        if (ActivityResultDispatchRunnable.getMessage() != null) {
            String message = ActivityResultDispatchRunnable.getMessage();
            if (n.c) {
                n.k();
                n.c = false;
            }
            RepeatedEntryProto cxtVar2 = (RepeatedEntryProto) n.b;
            message.getClass();
            cxtVar2.a |= 2;
            cxtVar2.c = message;
        }
        try {
            stackTraceElementArr = ActivityResultDispatchRunnable.getStackTrace();
        } catch (NullPointerException e) {
            stackTraceElementArr = null;
        }
        if (stackTraceElementArr != null) {
            for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                ProtoMsgHoldingMessageAndBool n2 = SyncConfigProto.f.n();
                if (stackTraceElement != null) {
                    String className = stackTraceElement.getClassName();
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    SyncConfigProto cxsVar = (SyncConfigProto) n2.b;
                    className.getClass();
                    cxsVar.a |= 1;
                    cxsVar.b = className;
                    String methodName = stackTraceElement.getMethodName();
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    SyncConfigProto cxsVar2 = (SyncConfigProto) n2.b;
                    methodName.getClass();
                    cxsVar2.a |= 2;
                    cxsVar2.c = methodName;
                    int lineNumber = stackTraceElement.getLineNumber();
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    SyncConfigProto cxsVar3 = (SyncConfigProto) n2.b;
                    cxsVar3.a |= 8;
                    cxsVar3.e = lineNumber;
                    if (stackTraceElement.getFileName() != null) {
                        String fileName = stackTraceElement.getFileName();
                        if (n2.c) {
                            n2.k();
                            n2.c = false;
                        }
                        SyncConfigProto cxsVar4 = (SyncConfigProto) n2.b;
                        fileName.getClass();
                        cxsVar4.a |= 4;
                        cxsVar4.d = fileName;
                    }
                }
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                RepeatedEntryProto cxtVar3 = (RepeatedEntryProto) n.b;
                SyncConfigProto cxsVar5 = (SyncConfigProto) n2.h();
                cxsVar5.getClass();
                ProtobufList ddrVar = cxtVar3.e;
                if (!ddrVar.c()) {
                    cxtVar3.e = GeneratedMessageLite.z(ddrVar);
                }
                cxtVar3.e.add(cxsVar5);
            }
        }
        return n;
    }

    public static void v(File file) {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile == null) {
            return;
        }
        parentFile.mkdirs();
        if (!parentFile.isDirectory()) {
            throw new IOException("Unable to create parent directories of ".concat(file.toString()));
        }
    }
}
