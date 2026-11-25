package defpackage;

import java.util.UUID;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class NamedTrackedCloseable implements TrackedCloseable {
    private final TrackedCloseable a;
    private final UUID b;
    private final String c;

    public NamedTrackedCloseable(String str, TrackedCloseable cnjVar) {
        str.getClass();
        this.c = str;
        this.a = cnjVar;
        this.b = cnjVar.c();
    }

    @Override // defpackage.TrackedCloseable
    public final TrackedCloseable a() {
        return this.a;
    }

    @Override // defpackage.TrackedCloseable
    public final String b() {
        return this.c;
    }

    @Override // defpackage.TrackedCloseable
    public final UUID c() {
        return this.b;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ClosingScopeRegistry.e(this);
    }

    public final String toString() {
        return ClosingScopeRegistry.d(this);
    }

    public NamedTrackedCloseable(String str, UUID uuid) {
        str.getClass();
        this.c = str;
        this.a = null;
        this.b = uuid;
    }
}
