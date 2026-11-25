package defpackage;

import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ImmutableMapBuilder {
    Object[] a;
    public int b;

    public ImmutableMapBuilder() {
        this(4);
    }

    public ImmutableMapBase b() {
        return c();
    }

    public ImmutableMapBase c() {
        return ImmutableMapFromEntries.a(this.b, this.a);
    }

    public final void e(int i) {
        int i2 = i + i;
        Object[] objArr = this.a;
        int length = objArr.length;
        if (i2 > length) {
            this.a = Arrays.copyOf(objArr, ImmutableCollectionBuilder.a(length, i2));
        }
    }

    public void f(Object obj, Object obj2) {
        e(this.b + 1);
        ez.A(obj, obj2);
        Object[] objArr = this.a;
        int i = this.b;
        int i2 = i + i;
        objArr[i2] = obj;
        objArr[i2 + 1] = obj2;
        this.b = i + 1;
    }

    public ImmutableMapBuilder(int i) {
        this.a = new Object[i + i];
        this.b = 0;
    }
}
