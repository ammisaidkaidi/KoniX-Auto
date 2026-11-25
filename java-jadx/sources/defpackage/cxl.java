package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Deque;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cxl implements Closeable {
    public static final cxk a;
    final cxk b;
    public final Deque c = new ArrayDeque(4);
    public Throwable d;

    static {
        cxk cxkVar;
        try {
            cxkVar = new cxj(Throwable.class.getMethod("addSuppressed", Throwable.class));
        } catch (Throwable th) {
            cxkVar = null;
        }
        if (cxkVar == null) {
            cxkVar = cxi.a;
        }
        a = cxkVar;
    }

    public cxl(cxk cxkVar) {
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
                if (th == null) {
                    th = th2;
                } else {
                    this.b.a(closeable, th, th2);
                }
            }
        }
        if (this.d != null || th == null) {
            return;
        }
        cop.a(th, IOException.class);
        throw new AssertionError(th);
    }
}
