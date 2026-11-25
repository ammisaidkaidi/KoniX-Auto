package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MemoryConfigurations implements PrimesMetricConfigurations {
    public final boolean a;
    public final GuavaOptional b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final int f;
    private final int g;

    public MemoryConfigurations() {
    }

    public MemoryConfigurations(int i, int i2, boolean z, GuavaOptional cocVar, boolean z2, boolean z3, boolean z4) {
        this.f = i;
        this.g = i2;
        this.a = z;
        this.b = cocVar;
        this.c = z2;
        this.d = z3;
        this.e = z4;
    }

    public static MemoryConfigurationsBuilder c() {
        MemoryConfigurationsBuilder bypVar = new MemoryConfigurationsBuilder(null);
        bypVar.a = 3;
        bypVar.b = false;
        bypVar.c = cns.a;
        bypVar.d = false;
        bypVar.e = true;
        bypVar.b(false);
        bypVar.f = 1;
        return bypVar;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final int a() {
        return this.g;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final boolean b() {
        return this.f == 3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MemoryConfigurations)) {
            return false;
        }
        MemoryConfigurations byqVar = (MemoryConfigurations) obj;
        int i = this.f;
        int i2 = byqVar.f;
        if (NavInstructionTypeEnum != 0) {
            return i == i2 && this.g == byqVar.g && this.a == byqVar.a && this.b.equals(byqVar.b) && this.c == byqVar.c && this.d == byqVar.d && this.e == byqVar.e;
        }
        throw null;
    }

    public final int hashCode() {
        int i = this.f;
        PrimesEnablement.b(NavInstructionTypeEnum);
        return ((((((((((((NavInstructionTypeEnum ^ 1000003) * 1000003) ^ this.g) * 1000003) ^ (true != this.a ? 1237 : 1231)) * 1000003) ^ 2040732332) * 1000003) ^ (true != this.c ? 1237 : 1231)) * 1000003) ^ (true != this.d ? 1237 : 1231)) * 1000003) ^ (true == this.e ? 1231 : 1237);
    }

    public final String toString() {
        String a = PrimesEnablement.a(this.f);
        int i = this.g;
        boolean z = this.a;
        String valueOf = String.valueOf(this.b);
        boolean z2 = this.c;
        boolean z3 = this.d;
        boolean z4 = this.e;
        StringBuilder sb = new StringBuilder(a.length() + 206 + String.valueOf(valueOf).length());
        StaggeredGridLayoutParams.append("MemoryConfigurations{enablement=");
        StaggeredGridLayoutParams.append(SingleStringProtoMessage);
        StaggeredGridLayoutParams.append(", rateLimitPerSecond=");
        StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
        StaggeredGridLayoutParams.append(", recordMetricPerProcess=");
        StaggeredGridLayoutParams.append(IcuMessageFormat);
        StaggeredGridLayoutParams.append(", metricExtensionProvider=");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append(", forceGcBeforeRecordMemory=");
        StaggeredGridLayoutParams.append(z2);
        StaggeredGridLayoutParams.append(", captureDebugMetrics=");
        StaggeredGridLayoutParams.append(z3);
        StaggeredGridLayoutParams.append(", captureMemoryInfo=");
        StaggeredGridLayoutParams.append(z4);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
