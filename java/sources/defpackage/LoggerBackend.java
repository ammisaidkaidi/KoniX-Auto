package defpackage;

import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class LoggerBackend {
    public abstract String a();

    public abstract void b(RuntimeException runtimeException, FloggerLogRecord cubVar);

    public abstract void c(FloggerLogRecord cubVar);

    public abstract boolean d(Level level);
}
