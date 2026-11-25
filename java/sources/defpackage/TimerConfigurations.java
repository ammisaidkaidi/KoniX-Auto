package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TimerConfigurations implements PrimesMetricConfigurations {
    public final int a;
    public final float b;
    public final GuavaOptional c;
    private final int d;

    public TimerConfigurations() {
    }

    public TimerConfigurations(int i, int i2, float f, GuavaOptional cocVar) {
        this.d = i;
        this.a = i2;
        this.b = f;
        this.c = cocVar;
    }

    public static final TimerConfigurationsBuilder c() {
        TimerConfigurationsBuilder caoVar = new TimerConfigurationsBuilder(null);
        caoVar.a = 10;
        caoVar.b = Float.valueOf(1.0f);
        caoVar.c = cns.a;
        caoVar.d = 1;
        return caoVar;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final int a() {
        return this.a;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final boolean b() {
        return this.d == 3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TimerConfigurations)) {
            return false;
        }
        TimerConfigurations capVar = (TimerConfigurations) obj;
        int i = this.d;
        int i2 = capVar.d;
        if (NavInstructionTypeEnum != 0) {
            return i == i2 && this.a == capVar.a && Float.floatToIntBits(this.b) == Float.floatToIntBits(capVar.b) && this.c.equals(capVar.c);
        }
        throw null;
    }

    public final int hashCode() {
        int i = this.d;
        PrimesEnablement.b(NavInstructionTypeEnum);
        return ((((((NavInstructionTypeEnum ^ 1000003) * 1000003) ^ this.a) * 1000003) ^ Float.floatToIntBits(this.b)) * 1000003) ^ 2040732332;
    }

    public final String toString() {
        String a = PrimesEnablement.a(this.d);
        int i = this.a;
        float f = this.b;
        String valueOf = String.valueOf(this.c);
        StringBuilder sb = new StringBuilder(a.length() + 130 + String.valueOf(valueOf).length());
        StaggeredGridLayoutParams.append("TimerConfigurations{enablement=");
        StaggeredGridLayoutParams.append(SingleStringProtoMessage);
        StaggeredGridLayoutParams.append(", rateLimitPerSecond=");
        StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
        StaggeredGridLayoutParams.append(", samplingProbability=");
        StaggeredGridLayoutParams.append(NavManeuverTypeEnum);
        StaggeredGridLayoutParams.append(", perEventConfigurationFlags=");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
