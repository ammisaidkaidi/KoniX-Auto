package defpackage;

import android.net.Uri;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoDataStoreConfig {
    public final Uri a;
    public final MessageLite b;
    public final DataStoreSerializer c;
    public final ImmutableList d;
    public final boolean e;
    public final boolean f;
    private final EmptyDataStoreMarker g;

    public ProtoDataStoreConfig() {
    }

    public ProtoDataStoreConfig(Uri uri, MessageLite derVar, DataStoreSerializer cimVar, ImmutableList cqhVar, EmptyDataStoreMarker cixVar, boolean z, boolean z2) {
        this.a = uri;
        this.b = derVar;
        this.c = cimVar;
        this.d = cqhVar;
        this.g = cixVar;
        this.e = z;
        this.f = z2;
    }

    public static ProtoDataStoreConfigBuilder a() {
        ProtoDataStoreConfigBuilder cisVar = new ProtoDataStoreConfigBuilder();
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
        if (obj instanceof ProtoDataStoreConfig) {
            ProtoDataStoreConfig citVar = (ProtoDataStoreConfig) obj;
            if (this.a.equals(citVar.a) && this.b.equals(citVar.b) && this.c.equals(citVar.c) && GuavaCollectPreconditionsUtil.G(this.d, citVar.d) && this.g.equals(citVar.g) && this.e == citVar.e && this.f == citVar.f) {
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
        StaggeredGridLayoutParams.append("ProtoDataStoreConfig{uri=");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append(", schema=");
        StaggeredGridLayoutParams.append(valueOf2);
        StaggeredGridLayoutParams.append(", handler=");
        StaggeredGridLayoutParams.append(valueOf3);
        StaggeredGridLayoutParams.append(", migrations=");
        StaggeredGridLayoutParams.append(valueOf4);
        StaggeredGridLayoutParams.append(", variantConfig=");
        StaggeredGridLayoutParams.append(valueOf5);
        StaggeredGridLayoutParams.append(", useGeneratedExtensionRegistry=");
        StaggeredGridLayoutParams.append(IcuMessageFormat);
        StaggeredGridLayoutParams.append(", enableTracing=");
        StaggeredGridLayoutParams.append(z2);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
