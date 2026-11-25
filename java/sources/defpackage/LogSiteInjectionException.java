package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LogSiteInjectionException extends Exception {
    public LogSiteInjectionException(Throwable th, LogStackSize ctvVar, StackTraceElement[] stackTraceElementArr) {
        super(ctvVar.toString(), th);
        setStackTrace(stackTraceElementArr);
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }
}
