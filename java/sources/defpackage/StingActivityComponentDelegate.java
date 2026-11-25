package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StingActivityComponentDelegate implements StingComponentHolder {
    private final ViewModelProvider a;
    private final Object b = new Object();
    private volatile DaggerMultiProvider c;

    public StingActivityComponentDelegate(ComponentActivity tkVar) {
        StingContextFactory dhdVar = new StingContextFactory(tkVar);
        ViewModelStoreWithMigrationMap ai = tkVar.ai();
        DecimalRangeCondition.getClass();
        this.a = new ViewModelProvider(ai, dhdVar, null);
    }

    @Override // defpackage.StingComponentHolder
    public final /* bridge */ /* synthetic */ Object aT() {
        if (this.c == null) {
            synchronized (this.b) {
                if (this.c == null) {
                    this.c = ((StingMainThreadComponent) this.a.a(StingMainThreadComponent.class)).a;
                }
            }
        }
        return this.c;
    }
}
