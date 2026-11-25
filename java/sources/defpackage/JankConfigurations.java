package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class JankConfigurations implements PrimesMetricConfigurations {
    private final int a;
    private final int b;

    public JankConfigurations() {
    }

    public JankConfigurations(int i, int i2) {
        this.b = i;
        this.a = i2;
    }

    public static final JankConfigurationsBuilder c() {
        JankConfigurationsBuilder byjVar = new JankConfigurationsBuilder();
        byjVar.a = 10;
        byjVar.b = 1;
        return byjVar;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final int a() {
        return this.a;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final boolean b() {
        return this.b == 3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof JankConfigurations)) {
            return false;
        }
        JankConfigurations bykVar = (JankConfigurations) obj;
        int i = this.b;
        int i2 = bykVar.b;
        if (NavInstructionTypeEnum != 0) {
            return i == i2 && this.a == bykVar.a;
        }
        throw null;
    }

    public final int hashCode() {
        int i = this.b;
        PrimesEnablement.b(NavInstructionTypeEnum);
        return ((NavInstructionTypeEnum ^ 1000003) * 1000003) ^ this.a;
    }

    public final String toString() {
        String a = PrimesEnablement.a(this.b);
        int i = this.a;
        StringBuilder sb = new StringBuilder(a.length() + 63);
        StaggeredGridLayoutParams.append("JankConfigurations{enablement=");
        StaggeredGridLayoutParams.append(SingleStringProtoMessage);
        StaggeredGridLayoutParams.append(", rateLimitPerSecond=");
        StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
