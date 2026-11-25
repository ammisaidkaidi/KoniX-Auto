package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ArraySetMapIterator extends MapCollectionsIteratorBase {
    final /* synthetic */ DesugaredArraySet a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public ArraySetMapIterator(DesugaredArraySet vdVar) {
        super(vdVar.b);
        this.a = vdVar;
    }

    @Override // defpackage.MapCollectionsIteratorBase
    protected final Object a(int i) {
        return this.a.b(NavInstructionTypeEnum);
    }

    @Override // defpackage.MapCollectionsIteratorBase
    protected final void b(int i) {
        this.a.c(NavInstructionTypeEnum);
    }
}
