package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ViewModelProvider {
    private final ViewModelFactory a;
    private final ViewModelStoreWithMigrationMap b;

    public ViewModelProvider(ViewModelStoreWithMigrationMap aedVar, ViewModelFactory aagVar, byte[] bArr) {
        aedVar.getClass();
        aagVar.getClass();
        this.b = aedVar;
        this.a = aagVar;
    }

    public final ViewModelBase a(Class cls) {
        String canonicalName = GalTransportThread.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        String concat = "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName);
        ViewModelBase aafVar = (ViewModelBase) this.b.a.get(concat);
        if (GalTransportThread.isInstance(aafVar)) {
            Object obj = this.a;
            if ((obj instanceof ViewModelFactoryBase ? (ViewModelFactoryBase) obj : null) != null) {
                aafVar.getClass();
            }
            if (aafVar == null) {
                throw new NullPointerException("null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
            }
        } else {
            ViewModelFactory aagVar = this.a;
            aafVar = aagVar instanceof NewInstanceViewModelFactory ? ((NewInstanceViewModelFactory) aagVar).b() : aagVar.a();
            ViewModelBase aafVar2 = (ViewModelBase) this.b.a.put(concat, aafVar);
            if (aafVar2 != null) {
                aafVar2.c();
            }
            aafVar.getClass();
        }
        return aafVar;
    }
}
