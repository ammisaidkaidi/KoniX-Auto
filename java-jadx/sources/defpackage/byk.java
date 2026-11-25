package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class byk implements bvl {
    private final int a;
    private final int b;

    public byk() {
    }

    public byk(int i, int i2) {
        this.b = i;
        this.a = i2;
    }

    public static final byj c() {
        byj byjVar = new byj();
        byjVar.a = 10;
        byjVar.b = 1;
        return byjVar;
    }

    @Override // defpackage.bvl
    public final int a() {
        return this.a;
    }

    @Override // defpackage.bvl
    public final boolean b() {
        return this.b == 3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof byk)) {
            return false;
        }
        byk bykVar = (byk) obj;
        int i = this.b;
        int i2 = bykVar.b;
        if (i != 0) {
            return i == i2 && this.a == bykVar.a;
        }
        throw null;
    }

    public final int hashCode() {
        int i = this.b;
        bvm.b(i);
        return ((i ^ 1000003) * 1000003) ^ this.a;
    }

    public final String toString() {
        String a = bvm.a(this.b);
        int i = this.a;
        StringBuilder sb = new StringBuilder(a.length() + 63);
        sb.append("JankConfigurations{enablement=");
        sb.append(a);
        sb.append(", rateLimitPerSecond=");
        sb.append(i);
        sb.append("}");
        return sb.toString();
    }
}
