package defpackage;

import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StorageConfigurations implements PrimesMetricConfigurations {
    public final boolean a;
    public final GuavaOptional b;
    private final int c;

    public StorageConfigurations() {
    }

    public StorageConfigurations(int i, boolean z, GuavaOptional cocVar) {
        this.c = i;
        this.a = z;
        this.b = cocVar;
    }

    public static final StorageConfigurationsBuilder c() {
        StorageConfigurationsBuilder cajVar = new StorageConfigurationsBuilder(null);
        cajVar.a = false;
        cajVar.b = cns.a;
        cajVar.c = 1;
        return cajVar;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final /* synthetic */ int a() {
        return Preference.DEFAULT_ORDER;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final boolean b() {
        return this.c == 3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StorageConfigurations)) {
            return false;
        }
        StorageConfigurations cakVar = (StorageConfigurations) obj;
        int i = this.c;
        int i2 = cakVar.c;
        if (NavInstructionTypeEnum != 0) {
            return i == i2 && this.a == cakVar.a && this.b.equals(cakVar.b);
        }
        throw null;
    }

    public final int hashCode() {
        int i = this.c;
        PrimesEnablement.b(NavInstructionTypeEnum);
        return ((((NavInstructionTypeEnum ^ 1000003) * 1000003) ^ (true != this.a ? 1237 : 1231)) * 1000003) ^ 2040732332;
    }

    public final String toString() {
        String a = PrimesEnablement.a(this.c);
        boolean z = this.a;
        String valueOf = String.valueOf(this.b);
        StringBuilder sb = new StringBuilder(a.length() + 80 + String.valueOf(valueOf).length());
        StaggeredGridLayoutParams.append("StorageConfigurations{enablement=");
        StaggeredGridLayoutParams.append(SingleStringProtoMessage);
        StaggeredGridLayoutParams.append(", manualCapture=");
        StaggeredGridLayoutParams.append(IcuMessageFormat);
        StaggeredGridLayoutParams.append(", dirStatsConfigurations=");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
