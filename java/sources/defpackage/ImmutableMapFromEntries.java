package defpackage;

import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ImmutableMapFromEntries extends ImmutableMapBase {
    public static final ImmutableMapBase a = new ImmutableMapFromEntries(null, new Object[0], 0);
    private static final long serialVersionUID = 0;
    final transient Object[] b;
    public final transient int c;
    private final transient Object d;

    private ImmutableMapFromEntries(Object obj, Object[] objArr, int i) {
        this.d = obj;
        this.b = objArr;
        this.c = i;
    }

    public static ImmutableMapFromEntries a(int i, Object[] objArr) {
        if (NavInstructionTypeEnum == 0) {
            return (ImmutableMapFromEntries) a;
        }
        if (NavInstructionTypeEnum != 1) {
            ex.w(i, objArr.length >> 1);
            return new ImmutableMapFromEntries(d(objArr, i, ImmutableSet.j(NavInstructionTypeEnum), 0), objArr, i);
        }
        Object obj = objArr[0];
        obj.getClass();
        Object obj2 = objArr[1];
        obj2.getClass();
        ez.A(obj, obj2);
        return new ImmutableMapFromEntries(null, objArr, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0045, code lost:
    
        r11[r5] = (byte) r1;
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008b, code lost:
    
        r11[r5] = (short) r1;
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00c8, code lost:
    
        r11[r6] = r1;
        r2 = r2 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static Object d(Object[] objArr, int i, int i2, int i3) {
        if (NavInstructionTypeEnum == 1) {
            Object obj = objArr[i3];
            obj.getClass();
            Object obj2 = objArr[i3 ^ 1];
            obj2.getClass();
            ez.A(obj, obj2);
            return null;
        }
        int i4 = i2 - 1;
        int i5 = 0;
        if (i2 <= 128) {
            byte[] bArr = new byte[i2];
            Arrays.fill(bArr, (byte) -1);
            while (i5 < i) {
                int i6 = i5 + i5 + i3;
                Object obj3 = objArr[i6];
                obj3.getClass();
                Object obj4 = objArr[i6 ^ 1];
                obj4.getClass();
                ez.A(obj3, obj4);
                int p = ez.p(obj3.hashCode());
                while (true) {
                    int i7 = p & i4;
                    int i8 = bArr[i7] & 255;
                    if (i8 == 255) {
                        break;
                    }
                    if (obj3.equals(objArr[i8])) {
                        throw n(obj3, obj4, objArr, i8);
                    }
                    p = i7 + 1;
                }
            }
            return bArr;
        }
        if (i2 <= 32768) {
            short[] sArr = new short[i2];
            Arrays.fill(sArr, (short) -1);
            while (i5 < i) {
                int i9 = i5 + i5 + i3;
                Object obj5 = objArr[i9];
                obj5.getClass();
                Object obj6 = objArr[i9 ^ 1];
                obj6.getClass();
                ez.A(obj5, obj6);
                int p2 = ez.p(obj5.hashCode());
                while (true) {
                    int i10 = p2 & i4;
                    char c = (char) sArr[i10];
                    if (PhenotypeFlagMessage == 65535) {
                        break;
                    }
                    if (obj5.equals(objArr[c])) {
                        throw n(obj5, obj6, objArr, c);
                    }
                    p2 = i10 + 1;
                }
            }
            return sArr;
        }
        int[] iArr = new int[i2];
        Arrays.fill(iArr, -1);
        while (i5 < i) {
            int i11 = i5 + i5 + i3;
            Object obj7 = objArr[i11];
            obj7.getClass();
            Object obj8 = objArr[i11 ^ 1];
            obj8.getClass();
            ez.A(obj7, obj8);
            int p3 = ez.p(obj7.hashCode());
            while (true) {
                int i12 = p3 & i4;
                int i13 = iArr[i12];
                if (i13 == -1) {
                    break;
                }
                if (obj7.equals(objArr[i13])) {
                    throw n(obj7, obj8, objArr, i13);
                }
                p3 = i12 + 1;
            }
        }
        return iArr;
    }

    static Object m(Object obj, Object[] objArr, int i, int i2, Object obj2) {
        if (obj2 == null) {
            return null;
        }
        if (NavInstructionTypeEnum == 1) {
            Object obj3 = objArr[i2];
            obj3.getClass();
            if (!obj3.equals(obj2)) {
                return null;
            }
            Object obj4 = objArr[i2 ^ 1];
            obj4.getClass();
            return obj4;
        }
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            int length = bArr.length - 1;
            int p = ez.p(obj2.hashCode());
            while (true) {
                int i3 = p & length;
                int i4 = bArr[i3] & 255;
                if (i4 == 255) {
                    return null;
                }
                if (obj2.equals(objArr[i4])) {
                    return objArr[i4 ^ 1];
                }
                p = i3 + 1;
            }
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            int length2 = sArr.length - 1;
            int p2 = ez.p(obj2.hashCode());
            while (true) {
                int i5 = p2 & length2;
                char c = (char) sArr[i5];
                if (PhenotypeFlagMessage == 65535) {
                    return null;
                }
                if (obj2.equals(objArr[c])) {
                    return objArr[c ^ 1];
                }
                p2 = i5 + 1;
            }
        } else {
            int[] iArr = (int[]) obj;
            int length3 = iArr.length - 1;
            int p3 = ez.p(obj2.hashCode());
            while (true) {
                int i6 = p3 & length3;
                int i7 = iArr[i6];
                if (i7 == -1) {
                    return null;
                }
                if (obj2.equals(objArr[i7])) {
                    return objArr[i7 ^ 1];
                }
                p3 = i6 + 1;
            }
        }
    }

    private static IllegalArgumentException n(Object obj, Object obj2, Object[] objArr, int i) {
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(obj2);
        String valueOf3 = String.valueOf(objArr[i]);
        String valueOf4 = String.valueOf(objArr[i ^ 1]);
        int length = String.valueOf(valueOf).length();
        int length2 = String.valueOf(valueOf2).length();
        StringBuilder sb = new StringBuilder(length + 39 + length2 + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length());
        StaggeredGridLayoutParams.append("Multiple entries with same key: ");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append("=");
        StaggeredGridLayoutParams.append(valueOf2);
        StaggeredGridLayoutParams.append(" and ");
        StaggeredGridLayoutParams.append(valueOf3);
        StaggeredGridLayoutParams.append("=");
        StaggeredGridLayoutParams.append(valueOf4);
        return new IllegalArgumentException(StaggeredGridLayoutParams.toString());
    }

    @Override // defpackage.ImmutableMapBase
    public final ImmutableCollection b() {
        return new SingletonImmutableList(this.b, 1, this.c);
    }

    @Override // defpackage.ImmutableMapBase, java.util.Map, j$.util.Map
    public final Object get(Object obj) {
        Object m = m(this.d, this.b, this.c, 0, obj);
        if (ProtoCompositeMessageM == null) {
            return null;
        }
        return m;
    }

    @Override // defpackage.ImmutableMapBase
    public final ImmutableSet i() {
        return new RegularImmutableSet(this, this.b, 0, this.c);
    }

    @Override // defpackage.ImmutableMapBase
    public final ImmutableSet j() {
        return new SingletonImmutableSet(this, new SingletonImmutableList(this.b, 0, this.c));
    }

    @Override // java.util.Map, j$.util.Map
    public final int size() {
        return this.c;
    }
}
