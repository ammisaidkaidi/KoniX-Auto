package defpackage;

import android.net.Uri;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ceg {
    public final String a;
    public final Uri b;
    public final String c;
    final String d;
    public final boolean e;
    public final boolean f;
    final boolean g;
    final boolean h;
    final cny i;

    public ceg(Uri uri) {
        this(null, uri, "", "", false, false);
    }

    public ceg(String str, Uri uri, String str2, String str3, boolean z, boolean z2) {
        this.a = str;
        this.b = uri;
        this.c = str2;
        this.d = str3;
        this.e = z;
        this.f = z2;
        this.g = false;
        this.h = false;
        this.i = null;
    }

    public final ceg a() {
        return new ceg(this.a, this.b, this.c, this.d, this.e, true);
    }

    public final ceg b() {
        if (this.c.isEmpty()) {
            return new ceg(this.a, this.b, this.c, this.d, true, this.f);
        }
        throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
    }

    public final ceg c(String str) {
        if (this.e) {
            throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
        }
        return new ceg(this.a, this.b, str, this.d, false, this.f);
    }

    @Deprecated
    public final cei d(String str, Object obj, cef cefVar) {
        return cei.b(this, str, obj, cefVar, false);
    }

    public final cei e(String str, long j) {
        return new cea(this, str, Long.valueOf(j));
    }

    public final cei f(String str, boolean z) {
        return new ceb(this, str, Boolean.valueOf(z));
    }

    public final cei g(String str, Object obj, cef cefVar) {
        return cei.b(this, str, obj, cefVar, true);
    }

    public final void h(String str) {
        new cec(this, str, Double.valueOf(0.0d));
    }

    public final void i(String str, String str2) {
        new ced(this, str, str2);
    }

    public ceg() {
        this("direct_boot:com.google.android.gms.phenotype", null, "", "", false, false);
    }
}
