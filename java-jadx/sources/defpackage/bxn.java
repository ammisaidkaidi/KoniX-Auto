package defpackage;

import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bxn implements bvl {
    private final int a;

    public bxn() {
    }

    public bxn(byte[] bArr) {
        this.a = 1;
    }

    @Override // defpackage.bvl
    public final /* synthetic */ int a() {
        return Preference.DEFAULT_ORDER;
    }

    @Override // defpackage.bvl
    public final boolean b() {
        return this.a == 1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof bxn)) {
            return false;
        }
        int i = this.a;
        boolean z = i == ((bxn) obj).a;
        if (i != 0) {
            return z;
        }
        throw null;
    }

    public final int hashCode() {
        bvm.b(this.a);
        return 1000002;
    }

    public final String toString() {
        String a = bvm.a(this.a);
        StringBuilder sb = new StringBuilder(a.length() + 42);
        sb.append("ApplicationExitConfigurations{enablement=");
        sb.append(a);
        sb.append("}");
        return sb.toString();
    }
}
