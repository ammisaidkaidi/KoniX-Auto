package defpackage;

import java.util.ListIterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ArrayListListIterator extends AbstractListIndexedIterator {
    final /* synthetic */ ArrayBackedList a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public ArrayListListIterator(ArrayBackedList crnVar, ListIterator listIterator) {
        super(listIterator);
        this.a = crnVar;
    }

    @Override // defpackage.AbstractIndexedIterator
    public final Object a(Object obj) {
        return this.a.b.a(obj);
    }
}
