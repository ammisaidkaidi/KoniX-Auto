package defpackage;

import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CrashConfigurations implements PrimesMetricConfigurations {
    public final float a;
    private final int b;

    public CrashConfigurations() {
    }

    public CrashConfigurations(int i, float f) {
        this.b = i;
        this.a = f;
    }

    public static final TraceConfigurationsBuilder c() {
        TraceConfigurationsBuilder cbdVar = new TraceConfigurationsBuilder();
        cbdVar.a = Float.valueOf(100.0f);
        cbdVar.b = 1;
        return cbdVar;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final /* synthetic */ int a() {
        return Preference.DEFAULT_ORDER;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final boolean b() {
        int i = this.b;
        return i == 3 || i == 1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashConfigurations)) {
            return false;
        }
        CrashConfigurations bxfVar = (CrashConfigurations) obj;
        int i = this.b;
        int i2 = bxfVar.b;
        if (NavInstructionTypeEnum != 0) {
            return i == i2 && Float.floatToIntBits(this.a) == Float.floatToIntBits(bxfVar.a);
        }
        throw null;
    }

    public final int hashCode() {
        int i = this.b;
        PrimesEnablement.b(NavInstructionTypeEnum);
        return (((NavInstructionTypeEnum ^ 1000003) * 1000003) ^ Float.floatToIntBits(this.a)) * 1000003;
    }

    public final String toString() {
        String a = PrimesEnablement.a(this.b);
        float f = this.a;
        StringBuilder sb = new StringBuilder(a.length() + 103);
        StaggeredGridLayoutParams.append("CrashConfigurations{enablement=");
        StaggeredGridLayoutParams.append(SingleStringProtoMessage);
        StaggeredGridLayoutParams.append(", startupSamplePercentage=");
        StaggeredGridLayoutParams.append(NavManeuverTypeEnum);
        StaggeredGridLayoutParams.append(", metricExtensionProvider=null}");
        return StaggeredGridLayoutParams.toString();
    }
}
