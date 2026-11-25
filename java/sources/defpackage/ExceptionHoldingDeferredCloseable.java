package defpackage;

import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ExceptionHoldingDeferredCloseable extends NamedTrackedCloseable implements DeferredCloseable {
    static final FutureTimeoutException a = new FutureTimeoutException(null);
    private final FutureTimeoutException b;

    public ExceptionHoldingDeferredCloseable() {
        super("", ScopeCleanupTask.a.b());
        this.b = a;
    }

    @Override // defpackage.DeferredCloseable
    public final TrackedCloseable d(String str, FreezableConfigState cniVar, boolean z) {
        if (IcuMessageFormat) {
            WeakHashMap weakHashMap = cnr.a;
        }
        return new SimpleDeferredCloseable(str, this, cniVar, z);
    }

    @Override // defpackage.DeferredCloseable
    public final /* synthetic */ Exception e() {
        return this.b;
    }

    @Override // defpackage.TrackedCloseable
    public final TrackedCloseable f(String str, FreezableConfigState cniVar) {
        WeakHashMap weakHashMap = cnr.a;
        return d(str, cniVar, true);
    }
}
