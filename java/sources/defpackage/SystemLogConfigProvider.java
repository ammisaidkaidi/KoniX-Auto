package defpackage;

import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SystemLogConfigProvider extends LogConfigProvider {
    public static final SystemLogConfigProvider a = new SystemLogConfigProvider(cvu.a);
    public final AtomicReference b;

    public SystemLogConfigProvider(LogConfigProvider cvsVar) {
        this.b = new AtomicReference(cvsVar);
    }

    @Override // defpackage.LogConfigProvider
    public final LogMetadata a() {
        return ((LogConfigProvider) this.b.get()).a();
    }

    @Override // defpackage.LogConfigProvider
    public final SortedMetadataSnapshot b() {
        return ((LogConfigProvider) this.b.get()).b();
    }

    @Override // defpackage.LogConfigProvider
    public final void c(String str, Level level, boolean z) {
        ((LogConfigProvider) this.b.get()).c(str, level, z);
    }
}
