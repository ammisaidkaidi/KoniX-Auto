package defpackage;

import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class FloggerPlatformFinder {
    private static String a = "cvk";
    private static String b = "com.google.common.flogger.backend.google.GooglePlatform";
    private static String c = "com.google.common.flogger.backend.system.DefaultPlatform";
    private static final String[] d = {"cvk", "com.google.common.flogger.backend.google.GooglePlatform", "com.google.common.flogger.backend.system.DefaultPlatform"};

    public static int a() {
        return ((ScopedLoggingContext) ScopedLoggingContext.a.get()).b;
    }

    public static long b() {
        return LoggingPlatformLoader.a.c();
    }

    public static LoggerBackend d(String str) {
        return LoggingPlatformLoader.a.e(str);
    }

    public static LogMetadata f() {
        return i().a();
    }

    public static LoggingPlatformBase g() {
        return LoggingPlatformLoader.a.h();
    }

    public static LogConfigProvider i() {
        return LoggingPlatformLoader.a.j();
    }

    public static SortedMetadataSnapshot k() {
        return i().b();
    }

    public static String l() {
        return LoggingPlatformLoader.a.m();
    }

    public static boolean n(String str, Level level, boolean z) {
        i().c(str, level, z);
        return false;
    }

    protected long c() {
        return TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
    }

    protected abstract LoggerBackend e(String str);

    protected abstract LoggingPlatformBase h();

    protected LogConfigProvider j() {
        return cvu.a;
    }

    protected abstract String m();
}
