package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DoubleCheckProvider implements DaggerProviderInterface, dgz {
    private static final Object a = new Object();
    private volatile DaggerProviderInterface b;
    private volatile Object c = a;

    private DoubleCheckProvider(DaggerProviderInterface dnyVar) {
        this.b = dnyVar;
    }

    public static DaggerInternalFactoryMarker b(DaggerProviderInterface dnyVar) {
        if (dnyVar instanceof DaggerInternalFactoryMarker) {
            return (DaggerInternalFactoryMarker) dnyVar;
        }
        dnyVar.getClass();
        return new DoubleCheckProvider(dnyVar);
    }

    public static DaggerProviderInterface c(DaggerProviderInterface dnyVar) {
        dnyVar.getClass();
        return dnyVar instanceof DoubleCheckProvider ? dnyVar : new DoubleCheckProvider(dnyVar);
    }

    @Override // defpackage.DaggerProviderInterface
    public final Object a() {
        Object obj = this.c;
        Object obj2 = a;
        if (obj == obj2) {
            synchronized (this) {
                obj = this.c;
                if (obj == obj2) {
                    obj = this.b.a();
                    Object obj3 = this.c;
                    if (obj3 != obj2 && obj3 != obj) {
                        String valueOf = String.valueOf(obj3);
                        String valueOf2 = String.valueOf(obj);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 118 + String.valueOf(valueOf2).length());
                        StaggeredGridLayoutParams.append("Scoped provider was invoked recursively returning different results: ");
                        StaggeredGridLayoutParams.append(valueOf);
                        StaggeredGridLayoutParams.append(" & ");
                        StaggeredGridLayoutParams.append(valueOf2);
                        StaggeredGridLayoutParams.append(". This is likely due to a circular dependency.");
                        throw new IllegalStateException(StaggeredGridLayoutParams.toString());
                    }
                    this.c = obj;
                    this.b = null;
                }
            }
        }
        return obj;
    }
}
