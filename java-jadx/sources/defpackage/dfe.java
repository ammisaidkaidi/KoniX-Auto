package defpackage;

import j$.util.Iterator;
import j$.util.function.Consumer;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dfe implements Iterator, j$.util.Iterator {
    private final ArrayDeque a;
    private dcj b;

    public dfe(dcl dclVar) {
        if (!(dclVar instanceof dff)) {
            this.a = null;
            this.b = (dcj) dclVar;
            return;
        }
        dff dffVar = (dff) dclVar;
        ArrayDeque arrayDeque = new ArrayDeque(dffVar.g);
        this.a = arrayDeque;
        arrayDeque.push(dffVar);
        this.b = b(dffVar.e);
    }

    private final dcj b(dcl dclVar) {
        while (dclVar instanceof dff) {
            dff dffVar = (dff) dclVar;
            this.a.push(dffVar);
            int[] iArr = dff.a;
            dclVar = dffVar.e;
        }
        return (dcj) dclVar;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final dcj next() {
        dcj dcjVar;
        dcj dcjVar2 = this.b;
        if (dcjVar2 == null) {
            throw new NoSuchElementException();
        }
        do {
            ArrayDeque arrayDeque = this.a;
            dcjVar = null;
            if (arrayDeque == null || arrayDeque.isEmpty()) {
                break;
            }
            dff dffVar = (dff) this.a.pop();
            int[] iArr = dff.a;
            dcjVar = b(dffVar.f);
        } while (dcjVar.B());
        this.b = dcjVar;
        return dcjVar2;
    }

    @Override // j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.b != null;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
