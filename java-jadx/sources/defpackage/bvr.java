package defpackage;

import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bvr implements bvl {
    private final int a;
    private final bvp b;

    public bvr() {
    }

    public bvr(bvp bvpVar) {
        this.a = 2;
        this.b = bvpVar;
    }

    @Override // defpackage.bvl
    public final /* synthetic */ int a() {
        return Preference.DEFAULT_ORDER;
    }

    @Override // defpackage.bvl
    public final boolean b() {
        return false;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof bvr)) {
            return false;
        }
        bvr bvrVar = (bvr) obj;
        int i = this.a;
        int i2 = bvrVar.a;
        if (i != 0) {
            return i == i2 && this.b.equals(bvrVar.b);
        }
        throw null;
    }

    public final int hashCode() {
        int i = this.a;
        bvm.b(i);
        return ((i ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public final String toString() {
        String a = bvm.a(this.a);
        String valueOf = String.valueOf(this.b);
        StringBuilder sb = new StringBuilder(a.length() + 60 + String.valueOf(valueOf).length());
        sb.append("BatteryConfigurations{enablement=");
        sb.append(a);
        sb.append(", metricExtensionProvider=");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }
}
