package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PerLogSiteRateLimiter implements LogRateLimiter {
    private final LogRateLimiter a;
    private final Object b;

    public PerLogSiteRateLimiter(LogRateLimiter ctjVar, Object obj) {
        ViewParentCompatStatics.u(ctjVar, "log site key");
        this.a = ctjVar;
        ViewParentCompatStatics.u(obj, "log site qualifier");
        this.b = obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PerLogSiteRateLimiter)) {
            return false;
        }
        PerLogSiteRateLimiter ctuVar = (PerLogSiteRateLimiter) obj;
        return this.a.equals(ctuVar.a) && this.b.equals(ctuVar.b);
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    public final String toString() {
        String obj = this.a.toString();
        String obj2 = this.b.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 50 + obj2.length());
        StaggeredGridLayoutParams.append("SpecializedLogSiteKey{ delegate='");
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append("', qualifier='");
        StaggeredGridLayoutParams.append(obj2);
        StaggeredGridLayoutParams.append("' }");
        return StaggeredGridLayoutParams.toString();
    }
}
