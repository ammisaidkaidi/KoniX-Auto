package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesSamplingConfig {
    private final Long a;
    private final int b;

    public PrimesSamplingConfig() {
    }

    public PrimesSamplingConfig(Long l, int i) {
        this.a = l;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof PrimesSamplingConfig) {
            PrimesSamplingConfig btfVar = (PrimesSamplingConfig) obj;
            if (this.a.equals(btfVar.a) && this.b == btfVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b;
    }

    public final String toString() {
        String obj = this.a.toString();
        String num = Integer.toString(CommonObjectsAndPreconditionsUtil.u(this.b));
        StringBuilder sb = new StringBuilder(obj.length() + 54 + num.length());
        StaggeredGridLayoutParams.append("VerificationFailureKey{protoId=");
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append(", verificationFailure=");
        StaggeredGridLayoutParams.append(num);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
