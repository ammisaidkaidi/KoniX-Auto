package defpackage;

import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NetworkConfigurations implements PrimesMetricConfigurations {
    private final int a;
    private final boolean b;
    private final GuavaOptional c;
    private final int d;

    public NetworkConfigurations() {
    }

    public NetworkConfigurations(int i, int i2, boolean z, GuavaOptional cocVar) {
        this.d = i;
        this.a = i2;
        this.b = z;
        this.c = cocVar;
    }

    public static final NetworkConfigurationsBuilder c() {
        NetworkConfigurationsBuilder bzgVar = new NetworkConfigurationsBuilder(null);
        bzgVar.b = false;
        bzgVar.a = 50;
        bzgVar.c = cns.a;
        bzgVar.d = 1;
        return bzgVar;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final /* synthetic */ int a() {
        return Preference.DEFAULT_ORDER;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final boolean b() {
        return this.d == 3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NetworkConfigurations)) {
            return false;
        }
        NetworkConfigurations bzhVar = (NetworkConfigurations) obj;
        int i = this.d;
        int i2 = bzhVar.d;
        if (NavInstructionTypeEnum != 0) {
            return i == i2 && this.a == bzhVar.a && this.b == bzhVar.b && this.c.equals(bzhVar.c);
        }
        throw null;
    }

    public final int hashCode() {
        int i = this.d;
        PrimesEnablement.b(NavInstructionTypeEnum);
        return ((((((NavInstructionTypeEnum ^ 1000003) * 1000003) ^ this.a) * (-721379959)) ^ (true != this.b ? 1237 : 1231)) * 1000003) ^ 2040732332;
    }

    public final String toString() {
        String a = PrimesEnablement.a(this.d);
        int i = this.a;
        boolean z = this.b;
        String valueOf = String.valueOf(this.c);
        StringBuilder sb = new StringBuilder(a.length() + 135 + String.valueOf(valueOf).length());
        StaggeredGridLayoutParams.append("NetworkConfigurations{enablement=");
        StaggeredGridLayoutParams.append(SingleStringProtoMessage);
        StaggeredGridLayoutParams.append(", batchSize=");
        StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
        StaggeredGridLayoutParams.append(", urlSanitizer=null, enableUrlAutoSanitization=");
        StaggeredGridLayoutParams.append(IcuMessageFormat);
        StaggeredGridLayoutParams.append(", metricExtensionProvider=");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
