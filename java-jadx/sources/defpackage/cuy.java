package defpackage;

import java.lang.reflect.InvocationTargetException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cuy {
    public static final cva a;

    static {
        String[] strArr;
        strArr = cva.d;
        a = a(strArr);
    }

    private static cva a(String[] strArr) {
        cva cvaVar;
        try {
            cvaVar = cvs.f();
        } catch (NoClassDefFoundError e) {
            cvaVar = null;
        }
        if (cvaVar != null) {
            return cvaVar;
        }
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            try {
                return (cva) Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Throwable th) {
                th = th;
                if (th instanceof InvocationTargetException) {
                    th = th.getCause();
                }
                sb.append('\n');
                sb.append(str);
                sb.append(": ");
                sb.append(th);
            }
        }
        throw new IllegalStateException(sb.insert(0, "No logging platforms found:").toString());
    }
}
