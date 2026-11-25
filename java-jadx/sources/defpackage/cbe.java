package defpackage;

import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cbe implements bvl {
    public final float a;
    private final int b;

    public cbe() {
    }

    public cbe(int i, float f) {
        this.b = i;
        this.a = f;
    }

    public static final cbd c() {
        cbd cbdVar = new cbd();
        cbdVar.a = Float.valueOf(0.5f);
        cbdVar.b = 1;
        return cbdVar;
    }

    @Override // defpackage.bvl
    public final /* synthetic */ int a() {
        return Preference.DEFAULT_ORDER;
    }

    @Override // defpackage.bvl
    public final boolean b() {
        return this.b == 3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof cbe)) {
            return false;
        }
        cbe cbeVar = (cbe) obj;
        int i = this.b;
        int i2 = cbeVar.b;
        if (i != 0) {
            return i == i2 && Float.floatToIntBits(this.a) == Float.floatToIntBits(cbeVar.a);
        }
        throw null;
    }

    public final int hashCode() {
        int i = this.b;
        bvm.b(i);
        return ((i ^ 1000003) * 1000003) ^ Float.floatToIntBits(this.a);
    }

    public final String toString() {
        String a = bvm.a(this.b);
        float f = this.a;
        StringBuilder sb = new StringBuilder(a.length() + 69);
        sb.append("TraceConfigurations{enablement=");
        sb.append(a);
        sb.append(", samplingProbability=");
        sb.append(f);
        sb.append("}");
        return sb.toString();
    }
}
