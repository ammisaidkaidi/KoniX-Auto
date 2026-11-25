package defpackage;

import java.util.ListIterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SequentialListListIterator extends AbstractListIndexedIterator {
    final /* synthetic */ SequentialAccessListWrapper a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public SequentialListListIterator(SequentialAccessListWrapper crpVar, ListIterator listIterator) {
        super(listIterator);
        this.a = crpVar;
    }

    @Override // defpackage.AbstractIndexedIterator
    public final Object a(Object obj) {
        return this.a.b.a(obj);
    }
}
