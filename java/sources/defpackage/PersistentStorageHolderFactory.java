package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PersistentStorageHolderFactory implements DaggerProvider {
    private final DaggerProviderInterface a;

    public PersistentStorageHolderFactory(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final PersistentStorageHolder a() {
        return new PersistentStorageHolder(((PersistentStorageFactory) this.a).a());
    }
}
