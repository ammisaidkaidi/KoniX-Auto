package defpackage;

import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TraceConfigurations implements PrimesMetricConfigurations {
    public final float a;
    private final int b;

    public TraceConfigurations() {
    }

    public TraceConfigurations(int i, float f) {
        this.b = i;
        this.a = f;
    }

    public static final TraceConfigurationsBuilder c() {
        TraceConfigurationsBuilder cbdVar = new TraceConfigurationsBuilder();
        cbdVar.a = Float.valueOf(0.5f);
        cbdVar.b = 1;
        return cbdVar;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final /* synthetic */ int a() {
        return Preference.DEFAULT_ORDER;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final boolean b() {
        return this.b == 3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TraceConfigurations)) {
            return false;
        }
        TraceConfigurations cbeVar = (TraceConfigurations) obj;
        int i = this.b;
        int i2 = cbeVar.b;
        if (NavInstructionTypeEnum != 0) {
            return i == i2 && Float.floatToIntBits(this.a) == Float.floatToIntBits(cbeVar.a);
        }
        throw null;
    }

    public final int hashCode() {
        int i = this.b;
        PrimesEnablement.b(NavInstructionTypeEnum);
        return ((NavInstructionTypeEnum ^ 1000003) * 1000003) ^ Float.floatToIntBits(this.a);
    }

    public final String toString() {
        String a = PrimesEnablement.a(this.b);
        float f = this.a;
        StringBuilder sb = new StringBuilder(a.length() + 69);
        StaggeredGridLayoutParams.append("TraceConfigurations{enablement=");
        StaggeredGridLayoutParams.append(SingleStringProtoMessage);
        StaggeredGridLayoutParams.append(", samplingProbability=");
        StaggeredGridLayoutParams.append(NavManeuverTypeEnum);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
