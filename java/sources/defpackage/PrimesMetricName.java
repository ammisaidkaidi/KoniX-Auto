package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesMetricName {
    public final String a;

    public PrimesMetricName(String str) {
        this.a = str;
    }

    public static PrimesMetricName a(Enum r3) {
        if (GuavaPlatformUtils.d(null)) {
            return new PrimesMetricName(r3.name());
        }
        String valueOf = String.valueOf(r3.name());
        return new PrimesMetricName(valueOf.length() != 0 ? "null".concat(valueOf) : new String("null"));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof PrimesMetricName) {
            return this.a.equals(((PrimesMetricName) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a;
    }
}
