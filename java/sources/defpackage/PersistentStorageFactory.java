package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PersistentStorageFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;

    public PersistentStorageFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2) {
        this.a = dnyVar;
        this.b = dnyVar2;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final PersistentStorage a() {
        return new PersistentStorage(((AppContextProviderFactory) this.a).a(), this.b);
    }
}
