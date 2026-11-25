package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cap implements bvl {
    public final int a;
    public final float b;
    public final coc c;
    private final int d;

    public cap() {
    }

    public cap(int i, int i2, float f, coc cocVar) {
        this.d = i;
        this.a = i2;
        this.b = f;
        this.c = cocVar;
    }

    public static final cao c() {
        cao caoVar = new cao(null);
        caoVar.a = 10;
        caoVar.b = Float.valueOf(1.0f);
        caoVar.c = cns.a;
        caoVar.d = 1;
        return caoVar;
    }

    @Override // defpackage.bvl
    public final int a() {
        return this.a;
    }

    @Override // defpackage.bvl
    public final boolean b() {
        return this.d == 3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof cap)) {
            return false;
        }
        cap capVar = (cap) obj;
        int i = this.d;
        int i2 = capVar.d;
        if (i != 0) {
            return i == i2 && this.a == capVar.a && Float.floatToIntBits(this.b) == Float.floatToIntBits(capVar.b) && this.c.equals(capVar.c);
        }
        throw null;
    }

    public final int hashCode() {
        int i = this.d;
        bvm.b(i);
        return ((((((i ^ 1000003) * 1000003) ^ this.a) * 1000003) ^ Float.floatToIntBits(this.b)) * 1000003) ^ 2040732332;
    }

    public final String toString() {
        String a = bvm.a(this.d);
        int i = this.a;
        float f = this.b;
        String valueOf = String.valueOf(this.c);
        StringBuilder sb = new StringBuilder(a.length() + 130 + String.valueOf(valueOf).length());
        sb.append("TimerConfigurations{enablement=");
        sb.append(a);
        sb.append(", rateLimitPerSecond=");
        sb.append(i);
        sb.append(", samplingProbability=");
        sb.append(f);
        sb.append(", perEventConfigurationFlags=");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }
}
