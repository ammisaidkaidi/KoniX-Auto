package defpackage;

import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bzh implements bvl {
    private final int a;
    private final boolean b;
    private final coc c;
    private final int d;

    public bzh() {
    }

    public bzh(int i, int i2, boolean z, coc cocVar) {
        this.d = i;
        this.a = i2;
        this.b = z;
        this.c = cocVar;
    }

    public static final bzg c() {
        bzg bzgVar = new bzg(null);
        bzgVar.b = false;
        bzgVar.a = 50;
        bzgVar.c = cns.a;
        bzgVar.d = 1;
        return bzgVar;
    }

    @Override // defpackage.bvl
    public final /* synthetic */ int a() {
        return Preference.DEFAULT_ORDER;
    }

    @Override // defpackage.bvl
    public final boolean b() {
        return this.d == 3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof bzh)) {
            return false;
        }
        bzh bzhVar = (bzh) obj;
        int i = this.d;
        int i2 = bzhVar.d;
        if (i != 0) {
            return i == i2 && this.a == bzhVar.a && this.b == bzhVar.b && this.c.equals(bzhVar.c);
        }
        throw null;
    }

    public final int hashCode() {
        int i = this.d;
        bvm.b(i);
        return ((((((i ^ 1000003) * 1000003) ^ this.a) * (-721379959)) ^ (true != this.b ? 1237 : 1231)) * 1000003) ^ 2040732332;
    }

    public final String toString() {
        String a = bvm.a(this.d);
        int i = this.a;
        boolean z = this.b;
        String valueOf = String.valueOf(this.c);
        StringBuilder sb = new StringBuilder(a.length() + 135 + String.valueOf(valueOf).length());
        sb.append("NetworkConfigurations{enablement=");
        sb.append(a);
        sb.append(", batchSize=");
        sb.append(i);
        sb.append(", urlSanitizer=null, enableUrlAutoSanitization=");
        sb.append(z);
        sb.append(", metricExtensionProvider=");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }
}
