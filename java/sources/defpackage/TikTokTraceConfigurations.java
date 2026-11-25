package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TikTokTraceConfigurations implements PrimesMetricConfigurations {
    private final int a;
    private final boolean b;
    private final int c;
    private final BinderIdentityScopeHelper d;

    public TikTokTraceConfigurations() {
    }

    public TikTokTraceConfigurations(int i, BinderIdentityScopeHelper actVar, boolean z, byte[] bArr, byte[] bArr2) {
        this.c = 2;
        this.a = i;
        this.d = actVar;
        this.b = z;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final int a() {
        return this.a;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final boolean b() {
        return false;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TikTokTraceConfigurations)) {
            return false;
        }
        TikTokTraceConfigurations cbbVar = (TikTokTraceConfigurations) obj;
        int i = this.c;
        int i2 = cbbVar.c;
        if (NavInstructionTypeEnum != 0) {
            return i == i2 && this.a == cbbVar.a && this.d.equals(cbbVar.d) && this.b == cbbVar.b;
        }
        throw null;
    }

    public final int hashCode() {
        int i = this.c;
        PrimesEnablement.b(NavInstructionTypeEnum);
        return ((((((NavInstructionTypeEnum ^ 1000003) * 1000003) ^ this.a) * 1000003) ^ this.d.hashCode()) * 1000003) ^ (true != this.b ? 1237 : 1231);
    }

    public final String toString() {
        String a = PrimesEnablement.a(this.c);
        int i = this.a;
        String valueOf = String.valueOf(this.d);
        boolean z = this.b;
        StringBuilder sb = new StringBuilder(a.length() + 114 + String.valueOf(valueOf).length());
        StaggeredGridLayoutParams.append("TikTokTraceConfigurations{enablement=");
        StaggeredGridLayoutParams.append(SingleStringProtoMessage);
        StaggeredGridLayoutParams.append(", rateLimitPerSecond=");
        StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
        StaggeredGridLayoutParams.append(", dynamicSampler=");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append(", recordTimerDuration=");
        StaggeredGridLayoutParams.append(IcuMessageFormat);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
