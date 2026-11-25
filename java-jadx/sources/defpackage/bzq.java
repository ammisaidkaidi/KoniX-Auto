package defpackage;

import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bzq implements bvl {
    public final coc a;
    public final coc b;
    private final int c;

    public bzq() {
    }

    public bzq(coc cocVar, coc cocVar2) {
        this.c = 1;
        this.a = cocVar;
        this.b = cocVar2;
    }

    @Override // defpackage.bvl
    public final /* synthetic */ int a() {
        return Preference.DEFAULT_ORDER;
    }

    @Override // defpackage.bvl
    public final boolean b() {
        return this.c == 1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof bzq)) {
            return false;
        }
        bzq bzqVar = (bzq) obj;
        int i = this.c;
        int i2 = bzqVar.c;
        if (i != 0) {
            return i2 == 1 && this.a.equals(bzqVar.a) && this.b.equals(bzqVar.b);
        }
        throw null;
    }

    public final int hashCode() {
        bvm.b(this.c);
        return 395873938;
    }

    public final String toString() {
        String a = bvm.a(this.c);
        String valueOf = String.valueOf(this.a);
        String valueOf2 = String.valueOf(this.b);
        int length = String.valueOf(valueOf).length();
        StringBuilder sb = new StringBuilder(a.length() + 86 + length + String.valueOf(valueOf2).length());
        sb.append("StartupConfigurations{enablement=");
        sb.append(a);
        sb.append(", metricExtensionProvider=");
        sb.append(valueOf);
        sb.append(", customTimestampProvider=");
        sb.append(valueOf2);
        sb.append("}");
        return sb.toString();
    }
}
