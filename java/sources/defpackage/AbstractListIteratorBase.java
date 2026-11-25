package defpackage;

import java.util.NoSuchElementException;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class AbstractListIteratorBase extends UnmodifiableIterator {
    private Object a;
    private int b = 2;

    protected AbstractListIteratorBase() {
    }

    protected abstract Object a();

    protected final void b() {
        this.b = 3;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        ex.r(this.b != 4);
        int i = this.b;
        int i2 = i - 1;
        if (NavInstructionTypeEnum == 0) {
            throw null;
        }
        switch (i2) {
            case 0:
                return true;
            case 1:
            default:
                this.b = 4;
                this.a = a();
                if (this.b == 3) {
                    return false;
                }
                this.b = 1;
                return true;
            case 2:
                return false;
        }
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.b = 2;
        Object obj = this.a;
        this.a = null;
        return obj;
    }
}
