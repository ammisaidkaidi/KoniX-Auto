package defpackage;

import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ConcurrentStaticHelper {
    final GuavaStopwatch a;

    public ConcurrentStaticHelper(byte[] bArr) {
        GuavaStopwatch cokVar = new GuavaStopwatch();
        cokVar.c();
        this.a = cokVar;
    }

    public final long a() {
        return this.a.a(TimeUnit.MICROSECONDS);
    }

    protected ConcurrentStaticHelper() {
    }
}
