package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class btf {
    private final Long a;
    private final int b;

    public btf() {
    }

    public btf(Long l, int i) {
        this.a = l;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof btf) {
            btf btfVar = (btf) obj;
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
        String num = Integer.toString(dpx.u(this.b));
        StringBuilder sb = new StringBuilder(obj.length() + 54 + num.length());
        sb.append("VerificationFailureKey{protoId=");
        sb.append(obj);
        sb.append(", verificationFailure=");
        sb.append(num);
        sb.append("}");
        return sb.toString();
    }
}
