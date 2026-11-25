package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StingFragmentComponentManager implements StingComponentHolder {
    private volatile Object a;
    private final Object b = new Object();
    private final AndroidxFragment c;

    public StingFragmentComponentManager(AndroidxFragment brVar) {
        this.c = brVar;
    }

    @Override // defpackage.StingComponentHolder
    public final Object aT() {
        if (this.a == null) {
            synchronized (this.b) {
                if (this.a == null) {
                    if (this.c.E() == null) {
                        throw new NullPointerException("Sting Fragments must be attached before creating the component.");
                    }
                    CommonObjectsAndPreconditionsUtil.o(this.c.E() instanceof StingComponentHolder, "Sting Fragments must be attached to an @Sting Activity. Found: %s", this.c.E().getClass());
                    FragmentModuleHolder a = ((StingModuleBindingInterface) CommonObjectsAndPreconditionsUtil.s(this.c.E(), StingModuleBindingInterface.class)).a();
                    a.a = this.c;
                    CommonObjectsAndPreconditionsUtil.l(a.a, AndroidxFragment.class);
                    this.a = new DaggerEmptyProvider();
                }
            }
        }
        return this.a;
    }
}
