package defpackage;

import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BatteryConfigurations implements PrimesMetricConfigurations {
    private final int a;
    private final EmptyEnumSingleton b;

    public BatteryConfigurations() {
    }

    public BatteryConfigurations(EmptyEnumSingleton bvpVar) {
        this.a = 2;
        this.b = bvpVar;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final /* synthetic */ int a() {
        return Preference.DEFAULT_ORDER;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final boolean b() {
        return false;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BatteryConfigurations)) {
            return false;
        }
        BatteryConfigurations bvrVar = (BatteryConfigurations) obj;
        int i = this.a;
        int i2 = bvrVar.a;
        if (NavInstructionTypeEnum != 0) {
            return i == i2 && this.b.equals(bvrVar.b);
        }
        throw null;
    }

    public final int hashCode() {
        int i = this.a;
        PrimesEnablement.b(NavInstructionTypeEnum);
        return ((NavInstructionTypeEnum ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public final String toString() {
        String a = PrimesEnablement.a(this.a);
        String valueOf = String.valueOf(this.b);
        StringBuilder sb = new StringBuilder(a.length() + 60 + String.valueOf(valueOf).length());
        StaggeredGridLayoutParams.append("BatteryConfigurations{enablement=");
        StaggeredGridLayoutParams.append(SingleStringProtoMessage);
        StaggeredGridLayoutParams.append(", metricExtensionProvider=");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
