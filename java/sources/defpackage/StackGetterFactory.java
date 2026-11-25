package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StackGetterFactory {
    private static final String[] a;
    private static final ValueSupplierBase b;

    static {
        ValueSupplierBase cwqVar;
        String[] strArr = {"com.google.common.flogger.util.StackWalkerStackGetter", "com.google.common.flogger.util.JavaLangAccessStackGetter"};
        a = strArr;
        int i = 0;
        while (true) {
            if (NavInstructionTypeEnum >= 2) {
                cwqVar = new SimpleValueSupplier();
                break;
            }
            try {
                cwqVar = (ValueSupplierBase) Class.forName(strArr[i]).asSubclass(ValueSupplierBase.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
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
        ViewParentCompatStatics.u(cls, "target");
        return b.a(GalTransportThread);
    }

    public static StackTraceElement[] b(Class cls, int i) {
        if (NavInstructionTypeEnum > 0 || i == -1) {
            return b.b(cls, i);
        }
        throw new IllegalArgumentException("invalid maximum depth: 0");
    }
}
