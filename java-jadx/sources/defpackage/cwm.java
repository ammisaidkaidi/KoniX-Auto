package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cwm {
    private static final String[] a;
    private static final cwp b;

    static {
        cwp cwqVar;
        String[] strArr = {"com.google.common.flogger.util.StackWalkerStackGetter", "com.google.common.flogger.util.JavaLangAccessStackGetter"};
        a = strArr;
        int i = 0;
        while (true) {
            if (i >= 2) {
                cwqVar = new cwq();
                break;
            }
            try {
                cwqVar = (cwp) Class.forName(strArr[i]).asSubclass(cwp.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Throwable th) {
                cwqVar = null;
            }
            if (cwqVar != null) {
                break;
            } else {
                i++;
            }
        }
        b = cwqVar;
    }

    public static StackTraceElement a(Class cls) {
        hf.u(cls, "target");
        return b.a(cls);
    }

    public static StackTraceElement[] b(Class cls, int i) {
        if (i > 0 || i == -1) {
            return b.b(cls, i);
        }
        throw new IllegalArgumentException("invalid maximum depth: 0");
    }
}
