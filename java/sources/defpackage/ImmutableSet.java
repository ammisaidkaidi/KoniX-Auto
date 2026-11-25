package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import java.util.SortedSet;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ImmutableSet extends ImmutableCollection implements Set {
    private transient ImmutableList a;

    static int j(int i) {
        double d;
        int max = Math.max(i, 2);
        if (max >= 751619276) {
            ex.m(max < 1073741824, "collection too large");
            return 1073741824;
        }
        int highestOneBit = Integer.highestOneBit(max - 1);
        do {
            highestOneBit += highestOneBit;
            d = highestOneBit;
            Double.isNaN(ProtoMsgIntStringInt);
        } while (ProtoMsgIntStringInt * 0.7d < max);
        return highestOneBit;
    }

    public static ImmutableSetBuilder k() {
        return new ImmutableSetBuilder();
    }

    public static ImmutableSet m(Collection collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof SortedSet)) {
            ImmutableSet cqwVar = (ImmutableSet) collection;
            if (!cqwVar.f()) {
                return cqwVar;
            }
        }
        Object[] array = collection.toArray();
        return l(array.length, array);
    }

    public static ImmutableSet n(Object[] objArr) {
        int length = objArr.length;
        switch (length) {
            case 0:
                return csf.a;
            case 1:
                return o(objArr[0]);
            default:
                return l(length, (Object[]) objArr.clone());
        }
    }

    public static ImmutableSet o(Object obj) {
        return new EmptyImmutableSet(obj);
    }

    public static ImmutableSet p(Object obj, Object obj2) {
        return l(2, obj, obj2);
    }

    public static ImmutableSet q(Object obj, Object obj2, Object obj3, Object obj4) {
        return l(4, obj, obj2, obj3, obj4);
    }

    @SafeVarargs
    public static ImmutableSet r(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object... objArr) {
        ex.m(true, "the total number of elements must fit in an int");
        int length = objArr.length;
        int i = length + 6;
        Object[] objArr2 = new Object[i];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        System.arraycopy(objArr, 0, objArr2, 6, length);
        return l(i, objArr2);
    }

    @Override // defpackage.ImmutableCollection
    public ImmutableList d() {
        ImmutableList cqhVar = this.a;
        if (cqhVar != null) {
            return cqhVar;
        }
        ImmutableList i = i();
        this.a = i;
        return i;
    }

    @Override // defpackage.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: e */
    public abstract UnmodifiableIterator listIterator();

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && h() && ((ImmutableSet) obj).h() && hashCode() != obj.hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    if (containsAll(set)) {
                        return true;
                    }
                }
            } catch (ClassCastException e) {
            } catch (NullPointerException e2) {
            }
        }
        return false;
    }

    public boolean h() {
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return WorkDataEnumConverters.j(this);
    }

    public ImmutableList i() {
        return ImmutableList.k(toArray());
    }

    @Override // defpackage.ImmutableCollection
    Object writeReplace() {
        return new ImmutableSetSerializedForm(toArray());
    }

    public static ImmutableSet l(int i, Object... objArr) {
        switch (NavInstructionTypeEnum) {
            case 0:
                return csf.a;
            case 1:
                Object obj = objArr[0];
                obj.getClass();
                return o(obj);
            default:
                int j = j(NavInstructionTypeEnum);
                Object[] objArr2 = new Object[j];
                int i2 = j - 1;
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < i; i5++) {
                    Object obj2 = objArr[i5];
                    WorkDataEnumConverters.o(obj2, i5);
                    int hashCode = obj2.hashCode();
                    int p = ez.p(hashCode);
                    while (true) {
                        int i6 = p & i2;
                        Object obj3 = objArr2[i6];
                        if (obj3 == null) {
                            objArr[i4] = obj2;
                            objArr2[i6] = obj2;
                            i3 += hashCode;
                            i4++;
                        } else {
                            if (obj3.equals(obj2)) {
                                break;
                            }
                            p++;
                        }
                    }
                }
                Arrays.fill(objArr, i4, i, (Object) null);
                if (i4 == 1) {
                    Object obj4 = objArr[0];
                    obj4.getClass();
                    return new EmptyImmutableSet(obj4);
                }
                if (j(i4) < j / 2) {
                    return l(i4, objArr);
                }
                int length = objArr.length;
                return new ImmutableHashSet(i4 < (length >> 1) + (length >> 2) ? Arrays.copyOf(objArr, i4) : objArr, i3, objArr2, i2, i4);
        }
    }
}
