package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SingleCheckProvider implements DaggerProvider, dgz {
    public final Object a;

    private SingleCheckProvider(Object obj) {
        this.a = obj;
    }

    public static DaggerProvider b(Object obj) {
        obj.getClass();
        return new SingleCheckProvider(obj);
    }

    @Override // defpackage.DaggerProviderInterface
    public final Object a() {
        return this.a;
    }
}
