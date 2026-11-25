package defpackage;

import android.net.Uri;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cit {
    public final Uri a;
    public final der b;
    public final cim c;
    public final cqh d;
    public final boolean e;
    public final boolean f;
    private final cix g;

    public cit() {
    }

    public cit(Uri uri, der derVar, cim cimVar, cqh cqhVar, cix cixVar, boolean z, boolean z2) {
        this.a = uri;
        this.b = derVar;
        this.c = cimVar;
        this.d = cqhVar;
        this.g = cixVar;
        this.e = z;
        this.f = z2;
    }

    public static cis a() {
        cis cisVar = new cis();
        cisVar.b = cix.a;
        cisVar.c(cjs.a);
        cisVar.b();
        cisVar.a = true;
        return cisVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof cit) {
            cit citVar = (cit) obj;
            if (this.a.equals(citVar.a) && this.b.equals(citVar.b) && this.c.equals(citVar.c) && fv.G(this.d, citVar.d) && this.g.equals(citVar.g) && this.e == citVar.e && this.f == citVar.f) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.g.hashCode()) * 1000003) ^ (true != this.e ? 1237 : 1231)) * 1000003) ^ (true == this.f ? 1231 : 1237);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.a);
        String valueOf2 = String.valueOf(this.b);
        String valueOf3 = String.valueOf(this.c);
        String valueOf4 = String.valueOf(this.d);
        String valueOf5 = String.valueOf(this.g);
        boolean z = this.e;
        boolean z2 = this.f;
        int length = String.valueOf(valueOf).length();
        int length2 = String.valueOf(valueOf2).length();
        int length3 = String.valueOf(valueOf3).length();
        StringBuilder sb = new StringBuilder(length + 132 + length2 + length3 + String.valueOf(valueOf4).length() + String.valueOf(valueOf5).length());
        sb.append("ProtoDataStoreConfig{uri=");
        sb.append(valueOf);
        sb.append(", schema=");
        sb.append(valueOf2);
        sb.append(", handler=");
        sb.append(valueOf3);
        sb.append(", migrations=");
        sb.append(valueOf4);
        sb.append(", variantConfig=");
        sb.append(valueOf5);
        sb.append(", useGeneratedExtensionRegistry=");
        sb.append(z);
        sb.append(", enableTracing=");
        sb.append(z2);
        sb.append("}");
        return sb.toString();
    }
}
