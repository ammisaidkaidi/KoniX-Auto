package defpackage;

import j$.time.Instant;
import java.math.RoundingMode;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cxx {
    static {
        Instant.ofEpochMilli(Long.MAX_VALUE);
        Instant.ofEpochMilli(Long.MIN_VALUE);
        b(Long.MAX_VALUE);
        b(Long.MIN_VALUE);
        c(Long.MAX_VALUE);
        c(Long.MIN_VALUE);
        Instant.MIN.getEpochSecond();
        Instant.MAX.getEpochSecond();
    }

    public static long a(Instant instant) {
        return instant.getEpochSecond() < -9223372036L ? hg.r(hg.t(instant.getEpochSecond() + 1), instant.getNano() - 1000000000) : hg.r(hg.t(instant.getEpochSecond()), instant.getNano());
    }

    public static void b(long j) {
        Instant.ofEpochSecond(hg.s(j, 1000000L, RoundingMode.FLOOR), hg.q(j, 1000000) * 1000);
    }

    public static void c(long j) {
        Instant.ofEpochSecond(hg.s(j, 1000000000L, RoundingMode.FLOOR), hg.q(j, 1000000000));
    }
}
