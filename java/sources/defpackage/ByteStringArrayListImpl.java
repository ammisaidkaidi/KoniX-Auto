package defpackage;

import androidx.preference.Preference;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ByteStringArrayListImpl extends ProtoListBase implements RandomAccess, ddq, dey {
    public static final ByteStringArrayListImpl b;
    private long[] c;
    private int d;

    static {
        ByteStringArrayListImpl degVar = new ByteStringArrayListImpl(new long[0], 0);
        b = degVar;
        degVar.b();
    }

    public ByteStringArrayListImpl() {
        this(new long[10], 0);
    }

    private final String g(int i) {
        int i2 = this.d;
        StringBuilder sb = new StringBuilder(35);
        StaggeredGridLayoutParams.append("Index:");
        StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
        StaggeredGridLayoutParams.append(", Size:");
        StaggeredGridLayoutParams.append(i2);
        return StaggeredGridLayoutParams.toString();
    }

    private final void h(int i) {
        if (NavInstructionTypeEnum < 0 || i >= this.d) {
            throw new IndexOutOfBoundsException(g(NavInstructionTypeEnum));
        }
    }

    @Override // defpackage.ProtobufList
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ByteStringList d(int i) {
        if (NavInstructionTypeEnum >= this.d) {
            return new ByteStringArrayListImpl(Arrays.copyOf(this.c, i), this.d);
        }
        throw new IllegalArgumentException();
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        aX();
        if (NavInstructionTypeEnum < 0 || i > (i2 = this.d)) {
            throw new IndexOutOfBoundsException(g(NavInstructionTypeEnum));
        }
        long[] jArr = this.c;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.c, i, jArr2, i + 1, this.d - i);
            this.c = jArr2;
        }
        this.c[i] = longValue;
        this.d++;
        this.modCount++;
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        aX();
        ProtoCharsetUtil.h(collection);
        if (!(collection instanceof ByteStringArrayListImpl)) {
            return super.addAll(collection);
        }
        ByteStringArrayListImpl degVar = (ByteStringArrayListImpl) collection;
        int i = degVar.d;
        if (NavInstructionTypeEnum == 0) {
            return false;
        }
        int i2 = this.d;
        if (Preference.DEFAULT_ORDER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.c;
        if (i3 > jArr.length) {
            this.c = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(degVar.c, 0, this.c, this.d, degVar.d);
        this.d = i3;
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // defpackage.ByteStringList
    public final void e(long j) {
        aX();
        int i = this.d;
        long[] jArr = this.c;
        if (NavInstructionTypeEnum == jArr.length) {
            long[] jArr2 = new long[((NavInstructionTypeEnum * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.c = jArr2;
        }
        long[] jArr3 = this.c;
        int i2 = this.d;
        this.d = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ByteStringArrayListImpl)) {
            return super.equals(obj);
        }
        ByteStringArrayListImpl degVar = (ByteStringArrayListImpl) obj;
        if (this.d != degVar.d) {
            return false;
        }
        long[] jArr = degVar.c;
        for (int i = 0; NavInstructionTypeEnum < this.d; i++) {
            if (this.c[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    public final long f(int i) {
        h(NavInstructionTypeEnum);
        return this.c[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return Long.valueOf(f(NavInstructionTypeEnum));
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.d; i2++) {
            i = (NavInstructionTypeEnum * 31) + ProtoCharsetUtil.c(this.c[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int i = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.c[i2] == longValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        aX();
        h(NavInstructionTypeEnum);
        long[] jArr = this.c;
        long j = jArr[i];
        if (NavInstructionTypeEnum < this.d - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (r3 - i) - 1);
        }
        this.d--;
        this.modCount++;
        return Long.valueOf(ProtoMessageTwoIntsAndFlagValue);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        aX();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.c;
        System.arraycopy(jArr, i2, jArr, i, this.d - i2);
        this.d -= i2 - i;
        this.modCount++;
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        aX();
        h(NavInstructionTypeEnum);
        long[] jArr = this.c;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(ProtoMessageTwoIntsAndFlagValue);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }

    private ByteStringArrayListImpl(long[] jArr, int i) {
        this.c = jArr;
        this.d = i;
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        e(((Long) obj).longValue());
        return true;
    }
}
