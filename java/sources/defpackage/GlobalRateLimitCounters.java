package defpackage;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: PG */
/* loaded from: classes.dex */
final class GlobalRateLimitCounters {
    public static final RateLimitRegistry a = new RateLimitRegistry();
    public final AtomicLong b = new AtomicLong();
    public final AtomicLong c = new AtomicLong();

    public GlobalRateLimitCounters() {
        new AtomicInteger();
    }
}
