package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CompactHashMapEntryIterator extends CompactHashMapIterator {
    final /* synthetic */ CompactHashMap a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public CompactHashMapEntryIterator(CompactHashMap cpiVar) {
        super(cpiVar);
        this.a = cpiVar;
    }

    @Override // defpackage.CompactHashMapIterator
    public final /* bridge */ /* synthetic */ Object a(int i) {
        return new CompactHashMapEntry(this.a, i);
    }
}
