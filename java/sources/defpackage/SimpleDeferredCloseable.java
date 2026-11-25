package defpackage;

import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SimpleDeferredCloseable extends NamedTrackedCloseable implements DeferredCloseable {
    private final Exception a;
    private final boolean b;

    public SimpleDeferredCloseable(String str, DeferredCloseable cmzVar, FreezableConfigState cniVar, boolean z) {
        super(str, cmzVar);
        ex.l(cniVar.b);
        this.a = cmzVar.e();
        this.b = z;
    }

    @Override // defpackage.DeferredCloseable
    public final TrackedCloseable d(String str, FreezableConfigState cniVar, boolean z) {
        if (IcuMessageFormat && !this.b) {
            WeakHashMap weakHashMap = cnr.a;
        }
        boolean z2 = true;
        if ((!z || this.b) && !this.b) {
            z2 = false;
        }
        return new SimpleDeferredCloseable(str, this, cniVar, z2);
    }

    @Override // defpackage.DeferredCloseable
    public final Exception e() {
        return this.a;
    }

    @Override // defpackage.TrackedCloseable
    public final TrackedCloseable f(String str, FreezableConfigState cniVar) {
        return d(str, cniVar, true);
    }

    public SimpleDeferredCloseable(String str, FreezableConfigState cniVar, boolean z) {
        super(str, ScopeCleanupTask.a.b());
        ex.l(cniVar.b);
        this.a = cne.a;
        this.b = z;
    }
}
