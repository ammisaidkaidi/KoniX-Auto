package defpackage;

import android.net.Uri;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoDataStoreConfigBuilder {
    public Boolean a;
    public EmptyDataStoreMarker b;
    private Uri c;
    private MessageLite d;
    private DataStoreSerializer e;
    private ImmutableList f;
    private Boolean g;

    public final ProtoDataStoreConfig a() {
        MessageLite derVar;
        DataStoreSerializer cimVar;
        EmptyDataStoreMarker cixVar;
        Boolean bool;
        if (this.f == null) {
            this.f = ImmutableList.p();
        }
        Uri uri = this.c;
        if (uri != null && (derVar = this.d) != null && (cimVar = this.e) != null && (cixVar = this.b) != null && (bool = this.a) != null && this.g != null) {
            return new ProtoDataStoreConfig(uri, derVar, cimVar, this.f, cixVar, bool.booleanValue(), this.g.booleanValue());
        }
        StringBuilder sb = new StringBuilder();
        if (this.c == null) {
            StaggeredGridLayoutParams.append(" uri");
        }
        if (this.d == null) {
            StaggeredGridLayoutParams.append(" schema");
        }
        if (this.e == null) {
            StaggeredGridLayoutParams.append(" handler");
        }
        if (this.b == null) {
            StaggeredGridLayoutParams.append(" variantConfig");
        }
        if (this.a == null) {
            StaggeredGridLayoutParams.append(" useGeneratedExtensionRegistry");
        }
        if (this.g == null) {
            StaggeredGridLayoutParams.append(" enableTracing");
        }
        throw new IllegalStateException("Missing required properties:".concat(StaggeredGridLayoutParams.toString()));
    }

    public final void b() {
        this.g = false;
    }

    public final void c(DataStoreSerializer cimVar) {
        if (cimVar == null) {
            throw new NullPointerException("Null handler");
        }
        this.e = cimVar;
    }

    public final void d(MessageLite derVar) {
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
