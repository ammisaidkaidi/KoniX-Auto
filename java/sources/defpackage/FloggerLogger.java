package defpackage;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class FloggerLogger {
    public final LoggerBackend a;

    protected FloggerLogger(LoggerBackend cucVar) {
        this.a = cucVar;
    }

    public static void d(String str, FloggerLogRecord cubVar) {
        StringBuilder sb = new StringBuilder();
        StaggeredGridLayoutParams.append(new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ViewSavedStateWithFlags.SSSZ").format(new Date(TimeUnit.NANOSECONDS.toMillis(cubVar.e()))));
        StaggeredGridLayoutParams.append(": logging error [");
        FloggerFormatUtils.d(cubVar.f(), sb);
        StaggeredGridLayoutParams.append("]: ");
        StaggeredGridLayoutParams.append(str);
        System.err.println(StaggeredGridLayoutParams);
        System.err.flush();
    }

    public abstract LoggerApi a(Level level);

    public final LoggerApi b() {
        return a(Level.SEVERE);
    }

    public final LoggerApi c() {
        return a(Level.WARNING);
    }

    protected final boolean e(Level level) {
        return this.a.d(level);
    }
}
