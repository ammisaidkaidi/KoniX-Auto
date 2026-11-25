package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FutureTimeoutException extends Exception {
    public FutureTimeoutException() {
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public FutureTimeoutException(byte[] bArr) {
    }
}
