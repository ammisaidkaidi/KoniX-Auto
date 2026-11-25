package defpackage;

import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ApplicationExitConfigurations implements PrimesMetricConfigurations {
    private final int a;

    public ApplicationExitConfigurations() {
    }

    public ApplicationExitConfigurations(byte[] bArr) {
        this.a = 1;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final /* synthetic */ int a() {
        return Preference.DEFAULT_ORDER;
    }

    @Override // defpackage.PrimesMetricConfigurations
    public final boolean b() {
        return this.a == 1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApplicationExitConfigurations)) {
            return false;
        }
        int i = this.a;
        boolean z = i == ((ApplicationExitConfigurations) obj).a;
        if (NavInstructionTypeEnum != 0) {
            return z;
        }
        throw null;
    }

    public final int hashCode() {
        PrimesEnablement.b(this.a);
        return 1000002;
    }

    public final String toString() {
        String a = PrimesEnablement.a(this.a);
        StringBuilder sb = new StringBuilder(a.length() + 42);
        StaggeredGridLayoutParams.append("ApplicationExitConfigurations{enablement=");
        StaggeredGridLayoutParams.append(SingleStringProtoMessage);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
