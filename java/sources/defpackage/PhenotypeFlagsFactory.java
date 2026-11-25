package defpackage;

import android.net.Uri;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeFlagsFactory {
    public final String a;
    public final Uri b;
    public final String c;
    final String d;
    public final boolean e;
    public final boolean f;
    final boolean g;
    final boolean h;
    final GuavaFunction i;

    public PhenotypeFlagsFactory(Uri uri) {
        this(null, uri, "", "", false, false);
    }

    public PhenotypeFlagsFactory(String str, Uri uri, String str2, String str3, boolean z, boolean z2) {
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

    public final PhenotypeFlagsFactory a() {
        return new PhenotypeFlagsFactory(this.a, this.b, this.c, this.d, this.e, true);
    }

    public final PhenotypeFlagsFactory b() {
        if (this.c.isEmpty()) {
            return new PhenotypeFlagsFactory(this.a, this.b, this.c, this.d, true, this.f);
        }
        throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
    }

    public final PhenotypeFlagsFactory c(String str) {
        if (this.e) {
            throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
        }
        return new PhenotypeFlagsFactory(this.a, this.b, str, this.d, false, this.f);
    }

    @Deprecated
    public final PhenotypeFlagBase d(String str, Object obj, FlagValueParser cefVar) {
        return PhenotypeFlagBase.b(this, str, obj, cefVar, false);
    }

    public final PhenotypeFlagBase e(String str, long j) {
        return new LongPhenotypeFlag(this, str, Long.valueOf(ProtoMessageTwoIntsAndFlagValue));
    }

    public final PhenotypeFlagBase f(String str, boolean z) {
        return new BooleanPhenotypeFlag(this, str, Boolean.valueOf(IcuMessageFormat));
    }

    public final PhenotypeFlagBase g(String str, Object obj, FlagValueParser cefVar) {
        return PhenotypeFlagBase.b(this, str, obj, cefVar, true);
    }

    public final void h(String str) {
        new DoublePhenotypeFlag(this, str, Double.valueOf(0.0d));
    }

    public final void i(String str, String str2) {
        new StringPhenotypeFlag(this, str, str2);
    }

    public PhenotypeFlagsFactory() {
        this("direct_boot:com.google.android.gms.phenotype", null, "", "", false, false);
    }
}
