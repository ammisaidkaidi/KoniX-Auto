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
public final class hg {
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
        view.setImportantForAccessibility(i);
    }

    static boolean j(View view) {
        return view.hasTransientState();
    }

    public static float k(EdgeEffect edgeEffect) {
        if (re.c()) {
            return io.a(edgeEffect);
        }
        return 0.0f;
    }

    public static float l(EdgeEffect edgeEffect, float f, float f2) {
        if (re.c()) {
            return io.b(edgeEffect, f, f2);
        }
        edgeEffect.onPull(f, f2);
        return f;
    }

    public static EdgeEffect m(Context context, AttributeSet attributeSet) {
        return re.c() ? io.c(context, attributeSet) : new EdgeEffect(context);
    }

    public static clk n(auj aujVar) {
        return aujVar == null ? baz.a : aujVar.f;
    }

    static void o(boolean z, String str, long j, long j2) {
        if (z) {
            return;
        }
        StringBuilder sb = new StringBuilder(str.length() + 54);
        sb.append("overflow: ");
        sb.append(str);
        sb.append("(");
        sb.append(j);
        sb.append(", ");
        sb.append(j2);
        sb.append(")");
        throw new ArithmeticException(sb.toString());
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
        o(((j ^ j2) < 0) | ((j ^ j3) >= 0), "checkedAdd", j, j2);
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
        int i = (int) ((j ^ j2) >> 63);
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
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(j) + Long.numberOfLeadingZeros((-1) ^ j) + Long.numberOfLeadingZeros(1000000000L) + Long.numberOfLeadingZeros(-1000000001L);
        if (numberOfLeadingZeros > 65) {
            return j * 1000000000;
        }
        o(numberOfLeadingZeros >= 64, "checkedMultiply", j, 1000000000L);
        o(true, "checkedMultiply", j, 1000000000L);
        long j2 = j * 1000000000;
        o(j == 0 || j2 / j == 1000000000, "checkedMultiply", j, 1000000000L);
        return j2;
    }

    public static ddf u(Throwable th) {
        StackTraceElement[] stackTraceElementArr;
        ddf n = cxt.f.n();
        String name = th.getClass().getName();
        if (n.c) {
            n.k();
            n.c = false;
        }
        cxt cxtVar = (cxt) n.b;
        name.getClass();
        cxtVar.a |= 1;
        cxtVar.b = name;
        if (th.getMessage() != null) {
            String message = th.getMessage();
            if (n.c) {
                n.k();
                n.c = false;
            }
            cxt cxtVar2 = (cxt) n.b;
            message.getClass();
            cxtVar2.a |= 2;
            cxtVar2.c = message;
        }
        try {
            stackTraceElementArr = th.getStackTrace();
        } catch (NullPointerException e) {
            stackTraceElementArr = null;
        }
        if (stackTraceElementArr != null) {
            for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                ddf n2 = cxs.f.n();
                if (stackTraceElement != null) {
                    String className = stackTraceElement.getClassName();
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    cxs cxsVar = (cxs) n2.b;
                    className.getClass();
                    cxsVar.a |= 1;
                    cxsVar.b = className;
                    String methodName = stackTraceElement.getMethodName();
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    cxs cxsVar2 = (cxs) n2.b;
                    methodName.getClass();
                    cxsVar2.a |= 2;
                    cxsVar2.c = methodName;
                    int lineNumber = stackTraceElement.getLineNumber();
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    cxs cxsVar3 = (cxs) n2.b;
                    cxsVar3.a |= 8;
                    cxsVar3.e = lineNumber;
                    if (stackTraceElement.getFileName() != null) {
                        String fileName = stackTraceElement.getFileName();
                        if (n2.c) {
                            n2.k();
                            n2.c = false;
                        }
                        cxs cxsVar4 = (cxs) n2.b;
                        fileName.getClass();
                        cxsVar4.a |= 4;
                        cxsVar4.d = fileName;
                    }
                }
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                cxt cxtVar3 = (cxt) n.b;
                cxs cxsVar5 = (cxs) n2.h();
                cxsVar5.getClass();
                ddr ddrVar = cxtVar3.e;
                if (!ddrVar.c()) {
                    cxtVar3.e = ddk.z(ddrVar);
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
