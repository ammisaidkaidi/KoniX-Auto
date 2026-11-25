package defpackage;

import java.io.Closeable;
import java.lang.reflect.Method;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ThrowingExceptionHandler implements ExceptionSuppressor {
    private final Method a;

    public ThrowingExceptionHandler(Method method) {
        this.a = method;
    }

    @Override // defpackage.ExceptionSuppressor
    public final void a(Closeable closeable, Throwable th, Throwable th2) {
        if (ActivityResultDispatchRunnable == th2) {
            return;
        }
        try {
            this.a.invoke(th, th2);
        } catch (Throwable th3) {
            SuppressingExceptionHandler.a.a(closeable, th, th2);
        }
    }
}
