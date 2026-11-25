package defpackage;

import androidx.preference.Preference;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ProtoLongArrayList extends ProtoListBase implements RandomAccess, ddr, dey {
    private static final ProtoLongArrayList b;
    private double[] c;
    private int d;

    static {
        ProtoLongArrayList dcwVar = new ProtoLongArrayList(new double[0], 0);
        b = dcwVar;
        dcwVar.b();
    }

    public ProtoLongArrayList() {
        this(new double[10], 0);
    }

    private final String f(int i) {
        int i2 = this.d;
        StringBuilder sb = new StringBuilder(35);
        StaggeredGridLayoutParams.append("Index:");
        StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
        StaggeredGridLayoutParams.append(", Size:");
        StaggeredGridLayoutParams.append(i2);
        return StaggeredGridLayoutParams.toString();
    }

    private final void g(int i) {
        if (NavInstructionTypeEnum < 0 || i >= this.d) {
            throw new IndexOutOfBoundsException(f(NavInstructionTypeEnum));
        }
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        aX();
        if (NavInstructionTypeEnum < 0 || i > (i2 = this.d)) {
            throw new IndexOutOfBoundsException(f(NavInstructionTypeEnum));
        }
        double[] dArr = this.c;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.c, i, dArr2, i + 1, this.d - i);
            this.c = dArr2;
        }
        this.c[i] = doubleValue;
        this.d++;
        this.modCount++;
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        aX();
        ProtoCharsetUtil.h(collection);
        if (!(collection instanceof ProtoLongArrayList)) {
            return super.addAll(collection);
        }
        ProtoLongArrayList dcwVar = (ProtoLongArrayList) collection;
        int i = dcwVar.d;
        if (NavInstructionTypeEnum == 0) {
            return false;
        }
        int i2 = this.d;
        if (Preference.DEFAULT_ORDER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        double[] dArr = this.c;
        if (i3 > dArr.length) {
            this.c = Arrays.copyOf(dArr, i3);
        }
        System.arraycopy(dcwVar.c, 0, this.c, this.d, dcwVar.d);
        this.d = i3;
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // defpackage.ProtobufList
    public final /* bridge */ /* synthetic */ ProtobufList d(int i) {
        if (NavInstructionTypeEnum >= this.d) {
            return new ProtoLongArrayList(Arrays.copyOf(this.c, i), this.d);
        }
        throw new IllegalArgumentException();
    }

    public final void e(double d) {
        aX();
        int i = this.d;
        double[] dArr = this.c;
        if (NavInstructionTypeEnum == dArr.length) {
            double[] dArr2 = new double[((NavInstructionTypeEnum * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.c = dArr2;
        }
        double[] dArr3 = this.c;
        int i2 = this.d;
        this.d = i2 + 1;
        dArr3[i2] = d;
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProtoLongArrayList)) {
            return super.equals(obj);
        }
        ProtoLongArrayList dcwVar = (ProtoLongArrayList) obj;
        if (this.d != dcwVar.d) {
            return false;
        }
        double[] dArr = dcwVar.c;
        for (int i = 0; NavInstructionTypeEnum < this.d; i++) {
            if (Double.doubleToLongBits(this.c[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        g(NavInstructionTypeEnum);
        return Double.valueOf(this.c[i]);
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.d; i2++) {
            i = (NavInstructionTypeEnum * 31) + ProtoCharsetUtil.c(Double.doubleToLongBits(this.c[i2]));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int i = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.c[i2] == doubleValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        aX();
        g(NavInstructionTypeEnum);
        double[] dArr = this.c;
        double d = dArr[i];
        if (NavInstructionTypeEnum < this.d - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (r3 - i) - 1);
        }
        this.d--;
        this.modCount++;
        return Double.valueOf(ProtoMsgIntStringInt);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        aX();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.c;
        System.arraycopy(dArr, i2, dArr, i, this.d - i2);
        this.d -= i2 - i;
        this.modCount++;
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        aX();
        g(NavInstructionTypeEnum);
        double[] dArr = this.c;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(ProtoMsgIntStringInt);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }

    private ProtoLongArrayList(double[] dArr, int i) {
        this.c = dArr;
        this.d = i;
    }

    @Override // defpackage.ProtoListBase, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        e(((Double) obj).doubleValue());
        return true;
    }
}
