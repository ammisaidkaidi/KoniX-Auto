package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class BaseLogSite implements LogRateLimiter {
    public static final BaseLogSite a = new StackBasedLogSite();

    public abstract int a();

    public abstract String b();

    public abstract String c();

    public abstract String d();

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        StaggeredGridLayoutParams.append("LogSite{ class=");
        StaggeredGridLayoutParams.append(b());
        StaggeredGridLayoutParams.append(", method=");
        StaggeredGridLayoutParams.append(d());
        StaggeredGridLayoutParams.append(", line=");
        StaggeredGridLayoutParams.append(a());
        if (c() != null) {
            StaggeredGridLayoutParams.append(", file=");
            StaggeredGridLayoutParams.append(c());
        }
        StaggeredGridLayoutParams.append(" }");
        return StaggeredGridLayoutParams.toString();
    }
}
