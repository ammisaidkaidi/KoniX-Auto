package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DelegateProviderFactory implements DaggerProvider {
    public DaggerProviderInterface a;

    @Override // defpackage.DaggerProviderInterface
    public final Object a() {
        DaggerProviderInterface dnyVar = this.a;
        if (dnyVar != null) {
            return dnyVar.a();
        }
        throw new IllegalStateException();
    }
}
