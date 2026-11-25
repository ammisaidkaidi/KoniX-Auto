package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class byq implements bvl {
    public final boolean a;
    public final coc b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final int f;
    private final int g;

    public byq() {
    }

    public byq(int i, int i2, boolean z, coc cocVar, boolean z2, boolean z3, boolean z4) {
        this.f = i;
        this.g = i2;
        this.a = z;
        this.b = cocVar;
        this.c = z2;
        this.d = z3;
        this.e = z4;
    }

    public static byp c() {
        byp bypVar = new byp(null);
        bypVar.a = 3;
        bypVar.b = false;
        bypVar.c = cns.a;
        bypVar.d = false;
        bypVar.e = true;
        bypVar.b(false);
        bypVar.f = 1;
        return bypVar;
    }

    @Override // defpackage.bvl
    public final int a() {
        return this.g;
    }

    @Override // defpackage.bvl
    public final boolean b() {
        return this.f == 3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof byq)) {
            return false;
        }
        byq byqVar = (byq) obj;
        int i = this.f;
        int i2 = byqVar.f;
        if (i != 0) {
            return i == i2 && this.g == byqVar.g && this.a == byqVar.a && this.b.equals(byqVar.b) && this.c == byqVar.c && this.d == byqVar.d && this.e == byqVar.e;
        }
        throw null;
    }

    public final int hashCode() {
        int i = this.f;
        bvm.b(i);
        return ((((((((((((i ^ 1000003) * 1000003) ^ this.g) * 1000003) ^ (true != this.a ? 1237 : 1231)) * 1000003) ^ 2040732332) * 1000003) ^ (true != this.c ? 1237 : 1231)) * 1000003) ^ (true != this.d ? 1237 : 1231)) * 1000003) ^ (true == this.e ? 1231 : 1237);
    }

    public final String toString() {
        String a = bvm.a(this.f);
        int i = this.g;
        boolean z = this.a;
        String valueOf = String.valueOf(this.b);
        boolean z2 = this.c;
        boolean z3 = this.d;
        boolean z4 = this.e;
        StringBuilder sb = new StringBuilder(a.length() + 206 + String.valueOf(valueOf).length());
        sb.append("MemoryConfigurations{enablement=");
        sb.append(a);
        sb.append(", rateLimitPerSecond=");
        sb.append(i);
        sb.append(", recordMetricPerProcess=");
        sb.append(z);
        sb.append(", metricExtensionProvider=");
        sb.append(valueOf);
        sb.append(", forceGcBeforeRecordMemory=");
        sb.append(z2);
        sb.append(", captureDebugMetrics=");
        sb.append(z3);
        sb.append(", captureMemoryInfo=");
        sb.append(z4);
        sb.append("}");
        return sb.toString();
    }
}
