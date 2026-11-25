package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CompactHashMapValueIterator extends CompactHashMapIterator {
    final /* synthetic */ CompactHashMap a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public CompactHashMapValueIterator(CompactHashMap cpiVar) {
        super(cpiVar);
        this.a = cpiVar;
    }

    @Override // defpackage.CompactHashMapIterator
    public final Object a(int i) {
        return this.a.h(NavInstructionTypeEnum);
    }
}
