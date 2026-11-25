package defpackage;

import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bxf implements bvl {
    public final float a;
    private final int b;

    public bxf() {
    }

    public bxf(int i, float f) {
        this.b = i;
        this.a = f;
    }

    public static final cbd c() {
        cbd cbdVar = new cbd();
        cbdVar.a = Float.valueOf(100.0f);
        cbdVar.b = 1;
        return cbdVar;
    }

    @Override // defpackage.bvl
    public final /* synthetic */ int a() {
        return Preference.DEFAULT_ORDER;
    }

    @Override // defpackage.bvl
    public final boolean b() {
        int i = this.b;
        return i == 3 || i == 1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof bxf)) {
            return false;
        }
        bxf bxfVar = (bxf) obj;
        int i = this.b;
        int i2 = bxfVar.b;
        if (i != 0) {
            return i == i2 && Float.floatToIntBits(this.a) == Float.floatToIntBits(bxfVar.a);
        }
        throw null;
    }

    public final int hashCode() {
        int i = this.b;
        bvm.b(i);
        return (((i ^ 1000003) * 1000003) ^ Float.floatToIntBits(this.a)) * 1000003;
    }

    public final String toString() {
        String a = bvm.a(this.b);
        float f = this.a;
        StringBuilder sb = new StringBuilder(a.length() + 103);
        sb.append("CrashConfigurations{enablement=");
        sb.append(a);
        sb.append(", startupSamplePercentage=");
        sb.append(f);
        sb.append(", metricExtensionProvider=null}");
        return sb.toString();
    }
}
