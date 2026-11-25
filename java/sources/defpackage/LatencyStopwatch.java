package defpackage;

import j$.time.Instant;

/* compiled from: PG */
/* loaded from: classes.dex */
final class LatencyStopwatch {
    public final GuavaStopwatch a;
    public Instant b = Instant.MIN;

    public LatencyStopwatch(StackClassGetterBase corVar) {
        this.a = GuavaStopwatch.b(corVar);
    }

    public final boolean a() {
        return this.a.b;
    }

    public final synchronized void b() {
        if (Instant.MIN.equals(this.b)) {
            this.b = Instant.now();
        }
        this.a.c();
    }

    public final synchronized void c() {
        GuavaStopwatch cokVar = this.a;
        long a = cokVar.a.a();
        ex.s(cokVar.b, "This stopwatch is already stopped.");
        cokVar.b = false;
        cokVar.c += a - cokVar.d;
    }
}
