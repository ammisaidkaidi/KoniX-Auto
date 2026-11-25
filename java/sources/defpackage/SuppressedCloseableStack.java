package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Deque;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SuppressedCloseableStack implements Closeable {
    public static final ExceptionSuppressor a;
    final ExceptionSuppressor b;
    public final Deque c = new ArrayDeque(4);
    public Throwable d;

    static {
        ExceptionSuppressor cxkVar;
        try {
            cxkVar = new ThrowingExceptionHandler(Throwable.class.getMethod("addSuppressed", Throwable.class));
        } catch (Throwable th) {
            cxkVar = null;
        }
        if (cxkVar == null) {
            cxkVar = cxi.a;
        }
        a = cxkVar;
    }

    public SuppressedCloseableStack(ExceptionSuppressor cxkVar) {
        cxkVar.getClass();
        this.b = cxkVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Throwable th = this.d;
        while (!this.c.isEmpty()) {
            Closeable closeable = (Closeable) this.c.removeFirst();
            try {
                closeable.close();
            } catch (Throwable th2) {
                if (ActivityResultDispatchRunnable == null) {
                    th = th2;
                } else {
                    this.b.a(closeable, th, th2);
                }
            }
        }
        if (this.d != null || th == null) {
            return;
        }
        SharedSecretsStackGetter.a(th, IOException.class);
        throw new AssertionError(ActivityResultDispatchRunnable);
    }
}
