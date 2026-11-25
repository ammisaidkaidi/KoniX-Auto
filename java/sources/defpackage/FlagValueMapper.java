package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class FlagValueMapper implements GuavaFunction {
    private final /* synthetic */ int c;
    public static final /* synthetic */ FlagValueMapper b = new FlagValueMapper(1);
    public static final /* synthetic */ FlagValueMapper a = new FlagValueMapper(0);

    private /* synthetic */ cgt(int i) {
        this.c = i;
    }

    @Override // defpackage.GuavaFunction
    public final Object a(Object obj) {
        switch (this.c) {
            case 0:
                return PhenotypeFlagFactoryRegistry.a((PhenotypeSyncMessage) obj);
            default:
                return StringMd5Hasher.a((String) obj);
        }
    }
}
