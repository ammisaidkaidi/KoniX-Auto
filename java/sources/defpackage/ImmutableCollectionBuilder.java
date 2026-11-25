package defpackage;

import androidx.preference.Preference;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ImmutableCollectionBuilder {
    Object[] a;
    int b;
    boolean c;

    public ImmutableCollectionBuilder(int i) {
        ez.C(i, "initialCapacity");
        this.a = new Object[i];
        this.b = 0;
    }

    static int a(int i, int i2) {
        int i3 = i + (NavInstructionTypeEnum >> 1) + 1;
        if (i3 < i2) {
            int highestOneBit = Integer.highestOneBit(i2 - 1);
            i3 = highestOneBit + highestOneBit;
        }
        return i3 < 0 ? Preference.DEFAULT_ORDER : i3;
    }

    private final void f(int i) {
        Object[] objArr = this.a;
        int length = objArr.length;
        if (length < i) {
            this.a = Arrays.copyOf(objArr, a(length, i));
            this.c = false;
        } else if (this.c) {
            this.a = (Object[]) objArr.clone();
            this.c = false;
        }
    }

    public final void b(Object[] objArr, int i) {
        WorkDataEnumConverters.q(objArr, i);
        f(this.b + i);
        System.arraycopy(objArr, 0, this.a, this.b, i);
        this.b += i;
    }

    public final void c(Object obj) {
        obj.getClass();
        f(this.b + 1);
        Object[] objArr = this.a;
        int i = this.b;
        this.b = i + 1;
        objArr[i] = obj;
    }

    public /* bridge */ /* synthetic */ void d(Object obj) {
        throw null;
    }

    public final void e(Iterable iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            f(this.b + collection.size());
            if (collection instanceof ImmutableCollection) {
                this.b = ((ImmutableCollection) collection).a(this.a, this.b);
                return;
            }
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            d(it.next());
        }
    }
}
