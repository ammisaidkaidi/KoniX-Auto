package defpackage;

import android.net.Uri;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cis {
    public Boolean a;
    public cix b;
    private Uri c;
    private der d;
    private cim e;
    private cqh f;
    private Boolean g;

    public final cit a() {
        der derVar;
        cim cimVar;
        cix cixVar;
        Boolean bool;
        if (this.f == null) {
            this.f = cqh.p();
        }
        Uri uri = this.c;
        if (uri != null && (derVar = this.d) != null && (cimVar = this.e) != null && (cixVar = this.b) != null && (bool = this.a) != null && this.g != null) {
            return new cit(uri, derVar, cimVar, this.f, cixVar, bool.booleanValue(), this.g.booleanValue());
        }
        StringBuilder sb = new StringBuilder();
        if (this.c == null) {
            sb.append(" uri");
        }
        if (this.d == null) {
            sb.append(" schema");
        }
        if (this.e == null) {
            sb.append(" handler");
        }
        if (this.b == null) {
            sb.append(" variantConfig");
        }
        if (this.a == null) {
            sb.append(" useGeneratedExtensionRegistry");
        }
        if (this.g == null) {
            sb.append(" enableTracing");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    public final void b() {
        this.g = false;
    }

    public final void c(cim cimVar) {
        if (cimVar == null) {
            throw new NullPointerException("Null handler");
        }
        this.e = cimVar;
    }

    public final void d(der derVar) {
        if (derVar == null) {
            throw new NullPointerException("Null schema");
        }
        this.d = derVar;
    }

    public final void e(Uri uri) {
        if (uri == null) {
            throw new NullPointerException("Null uri");
        }
        this.c = uri;
    }
}
