package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class InstanceProviderFactory implements DaggerProviderInterface {
    private static final Object a = new Object();
    private volatile DaggerProviderInterface b;
    private volatile Object c = a;

    private InstanceProviderFactory(DaggerProviderInterface dnyVar) {
        this.b = dnyVar;
    }

    public static DaggerProviderInterface b(DaggerProviderInterface dnyVar) {
        if ((dnyVar instanceof InstanceProviderFactory) || (dnyVar instanceof DoubleCheckProvider)) {
            return dnyVar;
        }
        dnyVar.getClass();
        return new InstanceProviderFactory(dnyVar);
    }

    @Override // defpackage.DaggerProviderInterface
    public final Object a() {
        Object obj = this.c;
        if (obj != a) {
            return obj;
        }
        DaggerProviderInterface dnyVar = this.b;
        if (dnyVar == null) {
            return this.c;
        }
        Object a2 = dnyVar.a();
        this.c = a2;
        this.b = null;
        return a2;
    }
}
