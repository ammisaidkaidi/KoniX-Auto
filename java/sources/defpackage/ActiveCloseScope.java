package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ActiveCloseScope extends CloseScopeFactory {
    @Override // defpackage.CloseScopeFactory
    public final void a() {
    }

    @Override // defpackage.CloseScopeFactory
    public final FutureCloseSignal b(String str) {
        return ClosingScopeRegistry.g(str, cnh.a, false);
    }
}
