package defpackage;

import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class cva {
    private static String a = "cvk";
    private static String b = "com.google.common.flogger.backend.google.GooglePlatform";
    private static String c = "com.google.common.flogger.backend.system.DefaultPlatform";
    private static final String[] d = {"cvk", "com.google.common.flogger.backend.google.GooglePlatform", "com.google.common.flogger.backend.system.DefaultPlatform"};

    public static int a() {
        return ((cwo) cwo.a.get()).b;
    }

    public static long b() {
        return cuy.a.c();
    }

    public static cuc d(String str) {
        return cuy.a.e(str);
    }

    public static cug f() {
        return i().a();
    }

    public static cuz g() {
        return cuy.a.h();
    }

    public static cvs i() {
        return cuy.a.j();
    }

    public static cwa k() {
        return i().b();
    }

    public static String l() {
        return cuy.a.m();
    }

    public static boolean n(String str, Level level, boolean z) {
        i().c(str, level, z);
        return false;
    }

    protected long c() {
        return TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
    }

    protected abstract cuc e(String str);

    protected abstract cuz h();

    protected cvs j() {
        return cvu.a;
    }

    protected abstract String m();
}
