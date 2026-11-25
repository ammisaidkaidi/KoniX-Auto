package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ctm extends Exception {
    public ctm(Throwable th, ctv ctvVar, StackTraceElement[] stackTraceElementArr) {
        super(ctvVar.toString(), th);
        setStackTrace(stackTraceElementArr);
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }
}
