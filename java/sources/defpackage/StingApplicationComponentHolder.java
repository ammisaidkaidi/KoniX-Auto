package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StingApplicationComponentHolder implements StingComponentHolder {
    private volatile Object a;
    private final Object b = new Object();
    private final ClusterActivityScopeHolder c;

    public StingApplicationComponentHolder(ClusterActivityScopeHolder atlVar) {
        this.c = atlVar;
    }

    @Override // defpackage.StingComponentHolder
    public final Object aT() {
        if (this.a == null) {
            synchronized (this.b) {
                if (this.a == null) {
                    ClusterActivityScopeHolder atlVar = this.c;
                    AudioModuleHolder a = AareceiverAppComponent.a();
                    a.a = new AppContextModule(atlVar.a);
                    CommonObjectsAndPreconditionsUtil.l(a.a, AppContextModule.class);
                    this.a = new AareceiverAppComponent(a.a);
                }
            }
        }
        return this.a;
    }
}
