package defpackage;

import java.util.Locale;
import java.util.logging.Logger;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GuavaPlatformUtils {
    static {
        Logger.getLogger(GuavaPlatformUtils.class.getName());
    }

    private GuavaPlatformUtils() {
    }

    static long a() {
        return System.nanoTime();
    }

    static String b(double d) {
        return String.format(Locale.ROOT, "%.4g", Double.valueOf(ProtoMsgIntStringInt));
    }

    public static String c(String str) {
        return str == null ? "" : str;
    }

    public static boolean d(String str) {
        return str == null || str.isEmpty();
    }
}
