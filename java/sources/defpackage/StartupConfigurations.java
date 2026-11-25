package defpackage;

import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StartupConfigurations implements PrimesMetricConfigurations {
    public final GuavaOptional a;
    public final GuavaOptional b;
    private final int c;

    public StartupConfigurations() {
    }

    public StartupConfigurations(GuavaOptional cocVar, GuavaOptional cocVar2) {
        this.c = 1;
        this.a = cocVar;
        this.b = cocVar2;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final /* synthetic */ int a() {
        return Preference.DEFAULT_ORDER;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final boolean b() {
        return this.c == 1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StartupConfigurations)) {
            return false;
        }
        StartupConfigurations bzqVar = (StartupConfigurations) obj;
        int i = this.c;
        int i2 = bzqVar.c;
        if (NavInstructionTypeEnum != 0) {
            return i2 == 1 && this.a.equals(bzqVar.a) && this.b.equals(bzqVar.b);
        }
        throw null;
    }

    public final int hashCode() {
        PrimesEnablement.b(this.c);
        return 395873938;
    }

    public final String toString() {
        String a = PrimesEnablement.a(this.c);
        String valueOf = String.valueOf(this.a);
        String valueOf2 = String.valueOf(this.b);
        int length = String.valueOf(valueOf).length();
        StringBuilder sb = new StringBuilder(a.length() + 86 + length + String.valueOf(valueOf2).length());
        StaggeredGridLayoutParams.append("StartupConfigurations{enablement=");
        StaggeredGridLayoutParams.append(SingleStringProtoMessage);
        StaggeredGridLayoutParams.append(", metricExtensionProvider=");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append(", customTimestampProvider=");
        StaggeredGridLayoutParams.append(valueOf2);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
