package defpackage;

import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cak implements bvl {
    public final boolean a;
    public final coc b;
    private final int c;

    public cak() {
    }

    public cak(int i, boolean z, coc cocVar) {
        this.c = i;
        this.a = z;
        this.b = cocVar;
    }

    public static final caj c() {
        caj cajVar = new caj(null);
        cajVar.a = false;
        cajVar.b = cns.a;
        cajVar.c = 1;
        return cajVar;
    }

    @Override // defpackage.bvl
    public final /* synthetic */ int a() {
        return Preference.DEFAULT_ORDER;
    }

    @Override // defpackage.bvl
    public final boolean b() {
        return this.c == 3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof cak)) {
            return false;
        }
        cak cakVar = (cak) obj;
        int i = this.c;
        int i2 = cakVar.c;
        if (i != 0) {
            return i == i2 && this.a == cakVar.a && this.b.equals(cakVar.b);
        }
        throw null;
    }

    public final int hashCode() {
        int i = this.c;
        bvm.b(i);
        return ((((i ^ 1000003) * 1000003) ^ (true != this.a ? 1237 : 1231)) * 1000003) ^ 2040732332;
    }

    public final String toString() {
        String a = bvm.a(this.c);
        boolean z = this.a;
        String valueOf = String.valueOf(this.b);
        StringBuilder sb = new StringBuilder(a.length() + 80 + String.valueOf(valueOf).length());
        sb.append("StorageConfigurations{enablement=");
        sb.append(a);
        sb.append(", manualCapture=");
        sb.append(z);
        sb.append(", dirStatsConfigurations=");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }
}
