package defpackage;

import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
final class NoOpCloseScope extends CloseScopeFactory {
    @Override // defpackage.CloseScopeFactory
    public final void a() {
        WeakHashMap weakHashMap = cnr.a;
    }

    @Override // defpackage.CloseScopeFactory
    public final FutureCloseSignal b(String str) {
        return ClosingScopeRegistry.f(str);
    }
}
