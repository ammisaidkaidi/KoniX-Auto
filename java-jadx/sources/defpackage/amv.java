package defpackage;

import java.util.HashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class amv extends HashMap {
    public final int a;
    public final int b;

    public amv(int i, int i2) {
        this.a = i;
        this.b = i2;
        if (i == 2 && i2 <= 0) {
            throw new IllegalArgumentException("Expiration time must be positive if CacheType is CACHE_TYPE_EXPIRED_AFTER_SOME_TIME");
        }
    }
}
