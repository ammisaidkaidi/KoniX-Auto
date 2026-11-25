package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentSavedStateStore implements SavedStateRegistryOwner, aak {
    private final ViewModelStoreWithMigrationMap c;
    public LifecycleRegistry b = null;
    public SavedStateRegistryController a = null;

    public FragmentSavedStateStore(ViewModelStoreWithMigrationMap aedVar, byte[] bArr) {
        this.c = aedVar;
    }

    @Override // defpackage.LifecycleOwner
    public final LifecycleRegistry C() {
        b();
        return this.b;
    }

    @Override // defpackage.SavedStateRegistryOwner
    public final SavedStateRegistry D() {
        b();
        return this.a.a;
    }

    final void a(LifecycleEvent zlVar) {
        this.b.c(zlVar);
    }

    @Override // defpackage.ViewModelStoreOwner
    public final ViewModelStoreWithMigrationMap ai() {
        b();
        return this.c;
    }

    final void b() {
        if (this.b == null) {
            this.b = new LifecycleRegistry(this);
            this.a = SavedStateRegistryController.a(this);
        }
    }
}
