package defpackage;

import java.util.UUID;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class cmx implements cnj {
    private final cnj a;
    private final UUID b;
    private final String c;

    public cmx(String str, cnj cnjVar) {
        str.getClass();
        this.c = str;
        this.a = cnjVar;
        this.b = cnjVar.c();
    }

    @Override // defpackage.cnj
    public final cnj a() {
        return this.a;
    }

    @Override // defpackage.cnj
    public final String b() {
        return this.c;
    }

    @Override // defpackage.cnj
    public final UUID c() {
        return this.b;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        cnr.e(this);
    }

    public final String toString() {
        return cnr.d(this);
    }

    public cmx(String str, UUID uuid) {
        str.getClass();
        this.c = str;
        this.a = null;
        this.b = uuid;
    }
}
