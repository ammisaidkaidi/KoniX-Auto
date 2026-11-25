package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ArraySetIterator extends MapCollectionsIteratorBase {
    final /* synthetic */ DesugaredArrayMap a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public ArraySetIterator(DesugaredArrayMap vbVar) {
        super(vbVar.j);
        this.a = vbVar;
    }

    @Override // defpackage.MapCollectionsIteratorBase
    protected final Object a(int i) {
        return this.a.i(NavInstructionTypeEnum);
    }

    @Override // defpackage.MapCollectionsIteratorBase
    protected final void b(int i) {
        this.a.g(NavInstructionTypeEnum);
    }
}
