package defpackage;

import java.io.Closeable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FutureCloseSignal implements Runnable, Closeable {
    private TrackedCloseable a;
    private final boolean b = GoogleSignatureVerifier.h();
    private boolean c;
    private boolean d;

    public FutureCloseSignal(TrackedCloseable cnjVar) {
        this.a = cnjVar;
    }

    private final void b() {
        this.c = true;
        if (!this.b || this.d) {
            return;
        }
        GoogleSignatureVerifier.h();
    }

    public final void a(ListenableFuture dagVar) {
        if (this.c) {
            throw new IllegalStateException("Span was already closed. Did you attach it to a future after calling Tracer.endSpan()?");
        }
        if (this.d) {
            throw new IllegalStateException("Signal is already attached to future");
        }
        this.d = true;
        dagVar.aW(this, czj.a);
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.c || !this.d) {
            GoogleSignatureVerifier.g(yb.a);
        } else {
            b();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        TrackedCloseable cnjVar = this.a;
        this.a = null;
        try {
            if (!this.d) {
                if (this.c) {
                    throw new IllegalStateException("Span was already closed!");
                }
                b();
            }
        } finally {
            ClosingScopeRegistry.e(cnjVar);
        }
    }
}
