package defpackage;

import java.io.Closeable;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SuppressingExceptionHandler implements ExceptionSuppressor {
    static final SuppressingExceptionHandler a = new SuppressingExceptionHandler();

    @Override // defpackage.ExceptionSuppressor
    public final void a(Closeable closeable, Throwable th, Throwable th2) {
        Logger logger = cxh.a;
        Level level = Level.WARNING;
        String valueOf = String.valueOf(closeable);
        String.valueOf(valueOf).length();
        logger.logp(level, "com.google.common.io.Closer$LoggingSuppressor", "suppress", "Suppressing exception thrown when closing ".concat(String.valueOf(valueOf)), th2);
    }
}
