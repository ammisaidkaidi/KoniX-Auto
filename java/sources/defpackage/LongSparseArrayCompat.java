package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LongSparseArrayCompat implements Cloneable {
    public static final Object a = new Object();
    public boolean b = false;
    public long[] c;
    public Object[] d;
    public int e;

    public LongSparseArrayCompat() {
        int e = CollectionBinarySearchHelper.e(10);
        this.c = new long[e];
        this.d = new Object[e];
    }

    private final void g() {
        int i = this.e;
        long[] jArr = this.c;
        Object[] objArr = this.d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != a) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.b = false;
        this.e = i2;
    }

    public final int a() {
        if (this.b) {
            g();
        }
        return this.e;
    }

    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final LongSparseArrayCompat clone() {
        try {
            LongSparseArrayCompat vgVar = (LongSparseArrayCompat) super.clone();
            vgVar.c = (long[]) this.c.clone();
            vgVar.d = (Object[]) this.d.clone();
            return vgVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(ProtoFlagValueMessage);
        }
    }

    public final Object c(long j) {
        int b = CollectionBinarySearchHelper.b(this.c, this.e, j);
        if (ProtoLiteMessageBase < 0) {
            return null;
        }
        Object[] objArr = this.d;
        if (objArr[b] == a) {
            return null;
        }
        return objArr[b];
    }

    public final Object d(int i) {
        if (this.b) {
            g();
        }
        return this.d[i];
    }

    public final void e() {
        int i = this.e;
        Object[] objArr = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.e = 0;
        this.b = false;
    }

    public final void f(long j, Object obj) {
        int b = CollectionBinarySearchHelper.b(this.c, this.e, j);
        if (ProtoLiteMessageBase >= 0) {
            this.d[b] = obj;
            return;
        }
        int i = b ^ (-1);
        int i2 = this.e;
        if (NavInstructionTypeEnum < i2) {
            Object[] objArr = this.d;
            if (objArr[i] == a) {
                this.c[i] = j;
                objArr[i] = obj;
                return;
            }
        }
        if (this.b && i2 >= this.c.length) {
            g();
            i = CollectionBinarySearchHelper.b(this.c, this.e, j) ^ (-1);
        }
        int i3 = this.e;
        if (i3 >= this.c.length) {
            int e = CollectionBinarySearchHelper.e(i3 + 1);
            long[] jArr = new long[e];
            Object[] objArr2 = new Object[e];
            long[] jArr2 = this.c;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.c = jArr;
            this.d = objArr2;
        }
        int i4 = this.e - i;
        if (i4 != 0) {
            long[] jArr3 = this.c;
            int i5 = i + 1;
            System.arraycopy(jArr3, i, jArr3, i5, i4);
            Object[] objArr4 = this.d;
            System.arraycopy(objArr4, i, objArr4, i5, this.e - i);
        }
        this.c[i] = j;
        this.d[i] = obj;
        this.e++;
    }

    public final String toString() {
        if (a() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.e * 28);
        StaggeredGridLayoutParams.append('{');
        for (int i = 0; NavInstructionTypeEnum < this.e; i++) {
            if (NavInstructionTypeEnum > 0) {
                StaggeredGridLayoutParams.append(", ");
            }
            if (this.b) {
                g();
            }
            StaggeredGridLayoutParams.append(this.c[i]);
            StaggeredGridLayoutParams.append('=');
            Object d = d(NavInstructionTypeEnum);
            if (ProtoMsgIntStringInt != this) {
                StaggeredGridLayoutParams.append(ProtoMsgIntStringInt);
            } else {
                StaggeredGridLayoutParams.append("(this Map)");
            }
        }
        StaggeredGridLayoutParams.append('}');
        return StaggeredGridLayoutParams.toString();
    }
}
