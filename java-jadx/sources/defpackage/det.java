package defpackage;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class det implements dfg {
    private static final int[] a = new int[0];
    private static final Unsafe b = dfz.j();
    private final int[] c;
    private final Object[] d;
    private final int e;
    private final int f;
    private final der g;
    private final boolean h;
    private final boolean i;
    private final boolean j;
    private final int[] k;
    private final int l;
    private final int m;
    private final def n;
    private final ev o;

    private det(int[] iArr, Object[] objArr, int i, int i2, der derVar, boolean z, int[] iArr2, int i3, int i4, def defVar, ev evVar, hl hlVar, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.c = iArr;
        this.d = objArr;
        this.e = i;
        this.f = i2;
        this.i = derVar instanceof ddk;
        this.j = z;
        boolean z2 = false;
        if (hlVar != null && (derVar instanceof ddi)) {
            z2 = true;
        }
        this.h = z2;
        this.k = iArr2;
        this.l = i3;
        this.m = i4;
        this.n = defVar;
        this.o = evVar;
        this.g = derVar;
    }

    private final int A(int i, int i2) {
        int length = (this.c.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int s = s(i4);
            if (i == s) {
                return i4;
            }
            if (i < s) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    private static int B(int i) {
        return (i >>> 20) & 255;
    }

    private final int C(int i) {
        return this.c[i + 1];
    }

    private static long D(int i) {
        return i & 1048575;
    }

    private static long E(Object obj, long j) {
        return ((Long) dfz.h(obj, j)).longValue();
    }

    private final ddo F(int i) {
        int i2 = i / 3;
        return (ddo) this.d[i2 + i2 + 1];
    }

    private final dfg G(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        dfg dfgVar = (dfg) this.d[i3];
        if (dfgVar != null) {
            return dfgVar;
        }
        dfg a2 = dez.a.a((Class) this.d[i3 + 1]);
        this.d[i3] = a2;
        return a2;
    }

    private final Object H(int i) {
        int i2 = i / 3;
        return this.d[i2 + i2];
    }

    private static Field I(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
    }

    private static List J(Object obj, long j) {
        return (List) dfz.h(obj, j);
    }

    private final void K(Object obj, Object obj2, int i) {
        long D = D(C(i));
        if (R(obj2, i)) {
            Object h = dfz.h(obj, D);
            Object h2 = dfz.h(obj2, D);
            if (h != null && h2 != null) {
                dfz.u(obj, D, dds.e(h, h2));
                N(obj, i);
            } else if (h2 != null) {
                dfz.u(obj, D, h2);
                N(obj, i);
            }
        }
    }

    private final void L(Object obj, Object obj2, int i) {
        int C = C(i);
        int s = s(i);
        long D = D(C);
        if (U(obj2, s, i)) {
            Object h = U(obj, s, i) ? dfz.h(obj, D) : null;
            Object h2 = dfz.h(obj2, D);
            if (h != null && h2 != null) {
                dfz.u(obj, D, dds.e(h, h2));
                O(obj, s, i);
            } else if (h2 != null) {
                dfz.u(obj, D, h2);
                O(obj, s, i);
            }
        }
    }

    private final void M(Object obj, int i, dfc dfcVar) {
        if (Q(i)) {
            dfz.u(obj, D(i), dfcVar.x());
        } else if (this.i) {
            dfz.u(obj, D(i), dfcVar.v());
        } else {
            dfz.u(obj, D(i), dfcVar.q());
        }
    }

    private final void N(Object obj, int i) {
        int z = z(i);
        long j = 1048575 & z;
        if (j == 1048575) {
            return;
        }
        dfz.s(obj, j, (1 << (z >>> 20)) | dfz.d(obj, j));
    }

    private final void O(Object obj, int i, int i2) {
        dfz.s(obj, z(i2) & 1048575, i);
    }

    private final boolean P(Object obj, Object obj2, int i) {
        return R(obj, i) == R(obj2, i);
    }

    private static boolean Q(int i) {
        return (i & 536870912) != 0;
    }

    private final boolean R(Object obj, int i) {
        int z = z(i);
        long j = 1048575 & z;
        if (j != 1048575) {
            return (dfz.d(obj, j) & (1 << (z >>> 20))) != 0;
        }
        int C = C(i);
        long D = D(C);
        switch (B(C)) {
            case 0:
                return Double.doubleToRawLongBits(dfz.b(obj, D)) != 0;
            case 1:
                return Float.floatToRawIntBits(dfz.c(obj, D)) != 0;
            case 2:
                return dfz.f(obj, D) != 0;
            case 3:
                return dfz.f(obj, D) != 0;
            case 4:
                return dfz.d(obj, D) != 0;
            case 5:
                return dfz.f(obj, D) != 0;
            case 6:
                return dfz.d(obj, D) != 0;
            case 7:
                return dfz.w(obj, D);
            case 8:
                Object h = dfz.h(obj, D);
                if (h instanceof String) {
                    return !((String) h).isEmpty();
                }
                if (h instanceof dcl) {
                    return !dcl.b.equals(h);
                }
                throw new IllegalArgumentException();
            case 9:
                return dfz.h(obj, D) != null;
            case 10:
                return !dcl.b.equals(dfz.h(obj, D));
            case 11:
                return dfz.d(obj, D) != 0;
            case 12:
                return dfz.d(obj, D) != 0;
            case 13:
                return dfz.d(obj, D) != 0;
            case 14:
                return dfz.f(obj, D) != 0;
            case 15:
                return dfz.d(obj, D) != 0;
            case 16:
                return dfz.f(obj, D) != 0;
            case 17:
                return dfz.h(obj, D) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean S(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? R(obj, i) : (i3 & i4) != 0;
    }

    private static boolean T(Object obj, int i, dfg dfgVar) {
        return dfgVar.k(dfz.h(obj, D(i)));
    }

    private final boolean U(Object obj, int i, int i2) {
        return dfz.d(obj, (long) (z(i2) & 1048575)) == i;
    }

    private static boolean V(Object obj, long j) {
        return ((Boolean) dfz.h(obj, j)).booleanValue();
    }

    private static final int W(byte[] bArr, int i, int i2, dgc dgcVar, Class cls, dca dcaVar) {
        dgc dgcVar2 = dgc.DOUBLE;
        switch (dgcVar) {
            case DOUBLE:
                dcaVar.c = Double.valueOf(hl.u(bArr, i));
                return i + 8;
            case FLOAT:
                dcaVar.c = Float.valueOf(hl.v(bArr, i));
                return i + 4;
            case INT64:
            case UINT64:
                int I = hl.I(bArr, i, dcaVar);
                dcaVar.c = Long.valueOf(dcaVar.b);
                return I;
            case INT32:
            case UINT32:
            case ENUM:
                int F = hl.F(bArr, i, dcaVar);
                dcaVar.c = Integer.valueOf(dcaVar.a);
                return F;
            case FIXED64:
            case SFIXED64:
                dcaVar.c = Long.valueOf(hl.K(bArr, i));
                return i + 8;
            case FIXED32:
            case SFIXED32:
                dcaVar.c = Integer.valueOf(hl.x(bArr, i));
                return i + 4;
            case BOOL:
                int I2 = hl.I(bArr, i, dcaVar);
                dcaVar.c = Boolean.valueOf(dcaVar.b != 0);
                return I2;
            case STRING:
                return hl.D(bArr, i, dcaVar);
            case GROUP:
            default:
                throw new RuntimeException("unsupported field type.");
            case MESSAGE:
                return hl.z(dez.a.a(cls), bArr, i, i2, dcaVar);
            case BYTES:
                return hl.w(bArr, i, dcaVar);
            case SINT32:
                int F2 = hl.F(bArr, i, dcaVar);
                dcaVar.c = Integer.valueOf(dcp.F(dcaVar.a));
                return F2;
            case SINT64:
                int I3 = hl.I(bArr, i, dcaVar);
                dcaVar.c = Long.valueOf(dcp.G(dcaVar.b));
                return I3;
        }
    }

    private final void X(Object obj, byte[] bArr, int i, int i2, dca dcaVar) {
        int i3;
        int i4;
        int i5;
        int i6;
        Unsafe unsafe;
        int i7;
        int i8;
        int i9;
        Unsafe unsafe2;
        int i10;
        Unsafe unsafe3;
        int i11;
        int i12;
        int i13;
        det detVar = this;
        Object obj2 = obj;
        byte[] bArr2 = bArr;
        int i14 = i2;
        dca dcaVar2 = dcaVar;
        Unsafe unsafe4 = b;
        int i15 = -1;
        int i16 = i;
        int i17 = -1;
        int i18 = 0;
        int i19 = 0;
        int i20 = 1048575;
        while (i16 < i14) {
            int i21 = i16 + 1;
            byte b2 = bArr2[i16];
            if (b2 < 0) {
                i4 = hl.G(b2, bArr2, i21, dcaVar2);
                i3 = dcaVar2.a;
            } else {
                i3 = b2;
                i4 = i21;
            }
            int i22 = i3 >>> 3;
            int i23 = i3 & 7;
            int y = i22 > i17 ? detVar.y(i22, i18 / 3) : detVar.x(i22);
            if (y == i15) {
                i5 = i4;
                i6 = i22;
                unsafe = unsafe4;
                i7 = 0;
            } else {
                int i24 = detVar.c[y + 1];
                int B = B(i24);
                Unsafe unsafe5 = unsafe4;
                long D = D(i24);
                if (B <= 17) {
                    int i25 = detVar.c[y + 2];
                    int i26 = 1 << (i25 >>> 20);
                    int i27 = i25 & 1048575;
                    if (i27 != i20) {
                        if (i20 != 1048575) {
                            i8 = i24;
                            i9 = y;
                            long j = i20;
                            unsafe3 = unsafe5;
                            unsafe3.putInt(obj2, j, i19);
                        } else {
                            i8 = i24;
                            i9 = y;
                            unsafe3 = unsafe5;
                        }
                        if (i27 != 1048575) {
                            i19 = unsafe3.getInt(obj2, i27);
                        }
                        unsafe2 = unsafe3;
                        i20 = i27;
                    } else {
                        i8 = i24;
                        i9 = y;
                        unsafe2 = unsafe5;
                    }
                    switch (B) {
                        case 0:
                            i10 = i9;
                            i6 = i22;
                            if (i23 != 1) {
                                i5 = i4;
                                unsafe = unsafe2;
                                i7 = i10;
                                break;
                            } else {
                                dfz.q(obj2, D, hl.u(bArr2, i4));
                                i16 = i4 + 8;
                                i19 |= i26;
                                unsafe4 = unsafe2;
                                i18 = i10;
                                i17 = i6;
                                i15 = -1;
                                i14 = i2;
                                break;
                            }
                        case 1:
                            i10 = i9;
                            i6 = i22;
                            if (i23 != 5) {
                                i5 = i4;
                                unsafe = unsafe2;
                                i7 = i10;
                                break;
                            } else {
                                dfz.r(obj2, D, hl.v(bArr2, i4));
                                i16 = i4 + 4;
                                i19 |= i26;
                                unsafe4 = unsafe2;
                                i18 = i10;
                                i17 = i6;
                                i15 = -1;
                                i14 = i2;
                                break;
                            }
                        case 2:
                        case 3:
                            i10 = i9;
                            i6 = i22;
                            if (i23 != 0) {
                                i5 = i4;
                                unsafe = unsafe2;
                                i7 = i10;
                                break;
                            } else {
                                int I = hl.I(bArr2, i4, dcaVar2);
                                unsafe2.putLong(obj, D, dcaVar2.b);
                                i19 |= i26;
                                unsafe4 = unsafe2;
                                i18 = i10;
                                i16 = I;
                                i17 = i6;
                                i15 = -1;
                                i14 = i2;
                                break;
                            }
                        case 4:
                        case 11:
                            i10 = i9;
                            i6 = i22;
                            if (i23 != 0) {
                                i5 = i4;
                                unsafe = unsafe2;
                                i7 = i10;
                                break;
                            } else {
                                i16 = hl.F(bArr2, i4, dcaVar2);
                                unsafe2.putInt(obj2, D, dcaVar2.a);
                                i19 |= i26;
                                unsafe4 = unsafe2;
                                i18 = i10;
                                i17 = i6;
                                i15 = -1;
                                i14 = i2;
                                break;
                            }
                        case 5:
                        case 14:
                            i10 = i9;
                            i6 = i22;
                            if (i23 != 1) {
                                i5 = i4;
                                unsafe = unsafe2;
                                i7 = i10;
                                break;
                            } else {
                                unsafe2.putLong(obj, D, hl.K(bArr2, i4));
                                i16 = i4 + 8;
                                i19 |= i26;
                                unsafe4 = unsafe2;
                                i18 = i10;
                                i17 = i6;
                                i15 = -1;
                                i14 = i2;
                                break;
                            }
                        case 6:
                        case 13:
                            i10 = i9;
                            i6 = i22;
                            if (i23 != 5) {
                                i5 = i4;
                                unsafe = unsafe2;
                                i7 = i10;
                                break;
                            } else {
                                unsafe2.putInt(obj2, D, hl.x(bArr2, i4));
                                i16 = i4 + 4;
                                i19 |= i26;
                                unsafe4 = unsafe2;
                                i17 = i6;
                                i15 = -1;
                                i14 = i2;
                                i18 = i10;
                                break;
                            }
                        case 7:
                            i10 = i9;
                            i6 = i22;
                            if (i23 != 0) {
                                i5 = i4;
                                unsafe = unsafe2;
                                i7 = i10;
                                break;
                            } else {
                                i16 = hl.I(bArr2, i4, dcaVar2);
                                dfz.m(obj2, D, dcaVar2.b != 0);
                                i19 |= i26;
                                unsafe4 = unsafe2;
                                i17 = i6;
                                i15 = -1;
                                i14 = i2;
                                i18 = i10;
                                break;
                            }
                        case 8:
                            i10 = i9;
                            i6 = i22;
                            if (i23 != 2) {
                                i5 = i4;
                                unsafe = unsafe2;
                                i7 = i10;
                                break;
                            } else {
                                i16 = (i8 & 536870912) == 0 ? hl.C(bArr2, i4, dcaVar2) : hl.D(bArr2, i4, dcaVar2);
                                unsafe2.putObject(obj2, D, dcaVar2.c);
                                i19 |= i26;
                                unsafe4 = unsafe2;
                                i17 = i6;
                                i15 = -1;
                                i14 = i2;
                                i18 = i10;
                                break;
                            }
                        case 9:
                            i10 = i9;
                            i6 = i22;
                            if (i23 != 2) {
                                i5 = i4;
                                unsafe = unsafe2;
                                i7 = i10;
                                break;
                            } else {
                                i16 = hl.z(detVar.G(i10), bArr2, i4, i2, dcaVar2);
                                Object object = unsafe2.getObject(obj2, D);
                                if (object == null) {
                                    unsafe2.putObject(obj2, D, dcaVar2.c);
                                } else {
                                    unsafe2.putObject(obj2, D, dds.e(object, dcaVar2.c));
                                }
                                i19 |= i26;
                                unsafe4 = unsafe2;
                                i17 = i6;
                                i15 = -1;
                                i14 = i2;
                                i18 = i10;
                                break;
                            }
                        case 10:
                            i10 = i9;
                            i6 = i22;
                            if (i23 != 2) {
                                i5 = i4;
                                unsafe = unsafe2;
                                i7 = i10;
                                break;
                            } else {
                                i16 = hl.w(bArr2, i4, dcaVar2);
                                unsafe2.putObject(obj2, D, dcaVar2.c);
                                i19 |= i26;
                                unsafe4 = unsafe2;
                                i18 = i10;
                                i17 = i6;
                                i15 = -1;
                                i14 = i2;
                                break;
                            }
                        case 12:
                            i10 = i9;
                            i6 = i22;
                            if (i23 != 0) {
                                i5 = i4;
                                unsafe = unsafe2;
                                i7 = i10;
                                break;
                            } else {
                                i16 = hl.F(bArr2, i4, dcaVar2);
                                unsafe2.putInt(obj2, D, dcaVar2.a);
                                i19 |= i26;
                                unsafe4 = unsafe2;
                                i18 = i10;
                                i17 = i6;
                                i15 = -1;
                                i14 = i2;
                                break;
                            }
                        case 15:
                            i10 = i9;
                            i6 = i22;
                            if (i23 != 0) {
                                i5 = i4;
                                unsafe = unsafe2;
                                i7 = i10;
                                break;
                            } else {
                                i16 = hl.F(bArr2, i4, dcaVar2);
                                unsafe2.putInt(obj2, D, dcp.F(dcaVar2.a));
                                i19 |= i26;
                                unsafe4 = unsafe2;
                                i18 = i10;
                                i17 = i6;
                                i15 = -1;
                                i14 = i2;
                                break;
                            }
                        case 16:
                            if (i23 != 0) {
                                i10 = i9;
                                i6 = i22;
                                i5 = i4;
                                unsafe = unsafe2;
                                i7 = i10;
                                break;
                            } else {
                                int I2 = hl.I(bArr2, i4, dcaVar2);
                                unsafe2.putLong(obj, D, dcp.G(dcaVar2.b));
                                i19 |= i26;
                                unsafe4 = unsafe2;
                                i18 = i9;
                                i16 = I2;
                                i17 = i22;
                                i15 = -1;
                                i14 = i2;
                                break;
                            }
                        default:
                            i10 = i9;
                            i6 = i22;
                            i5 = i4;
                            unsafe = unsafe2;
                            i7 = i10;
                            break;
                    }
                } else {
                    i6 = i22;
                    int i28 = y;
                    if (B == 27) {
                        if (i23 == 2) {
                            ddr ddrVar = (ddr) unsafe5.getObject(obj2, D);
                            if (!ddrVar.c()) {
                                int size = ddrVar.size();
                                ddrVar = ddrVar.d(size == 0 ? 10 : size + size);
                                unsafe5.putObject(obj2, D, ddrVar);
                            }
                            i16 = hl.A(detVar.G(i28), i3, bArr, i4, i2, ddrVar, dcaVar);
                            i19 = i19;
                            unsafe4 = unsafe5;
                            i18 = i28;
                            i17 = i6;
                            i15 = -1;
                            i14 = i2;
                        } else {
                            i11 = i4;
                            i12 = i20;
                            i13 = i19;
                            unsafe = unsafe5;
                            i7 = i28;
                            i5 = i11;
                            i19 = i13;
                            i20 = i12;
                        }
                    } else if (B <= 49) {
                        int i29 = i4;
                        int i30 = i19;
                        int i31 = i20;
                        unsafe = unsafe5;
                        i7 = i28;
                        i16 = w(obj, bArr, i4, i2, i3, i6, i23, i28, i24, B, D, dcaVar);
                        if (i16 != i29) {
                            detVar = this;
                            obj2 = obj;
                            bArr2 = bArr;
                            i14 = i2;
                            dcaVar2 = dcaVar;
                            i17 = i6;
                            i18 = i7;
                            i19 = i30;
                            i20 = i31;
                            unsafe4 = unsafe;
                            i15 = -1;
                        } else {
                            i5 = i16;
                            i19 = i30;
                            i20 = i31;
                        }
                    } else {
                        i11 = i4;
                        i13 = i19;
                        i12 = i20;
                        unsafe = unsafe5;
                        i7 = i28;
                        if (B != 50) {
                            i16 = v(obj, bArr, i11, i2, i3, i6, i23, i24, B, D, i7, dcaVar);
                            if (i16 != i11) {
                                detVar = this;
                                obj2 = obj;
                                bArr2 = bArr;
                                i14 = i2;
                                dcaVar2 = dcaVar;
                                i17 = i6;
                                i18 = i7;
                                i19 = i13;
                                i20 = i12;
                                unsafe4 = unsafe;
                                i15 = -1;
                            } else {
                                i5 = i16;
                                i19 = i13;
                                i20 = i12;
                            }
                        } else if (i23 == 2) {
                            i16 = u(obj, bArr, i11, i2, i7, D, dcaVar);
                            if (i16 != i11) {
                                detVar = this;
                                obj2 = obj;
                                bArr2 = bArr;
                                i14 = i2;
                                dcaVar2 = dcaVar;
                                i17 = i6;
                                i18 = i7;
                                i19 = i13;
                                i20 = i12;
                                unsafe4 = unsafe;
                                i15 = -1;
                            } else {
                                i5 = i16;
                                i19 = i13;
                                i20 = i12;
                            }
                        } else {
                            i5 = i11;
                            i19 = i13;
                            i20 = i12;
                        }
                    }
                }
            }
            i16 = hl.E(i3, bArr, i5, i2, d(obj), dcaVar);
            detVar = this;
            obj2 = obj;
            bArr2 = bArr;
            i14 = i2;
            dcaVar2 = dcaVar;
            i17 = i6;
            i18 = i7;
            unsafe4 = unsafe;
            i15 = -1;
        }
        int i32 = i19;
        Unsafe unsafe6 = unsafe4;
        if (i20 != 1048575) {
            unsafe6.putInt(obj, i20, i32);
        }
        if (i16 != i2) {
            throw ddu.g();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x034b  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x035b  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x038f  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x039f  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0410  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x041d  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0437  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0444  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0451  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x045e  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x046d  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x047e  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x048a  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0496  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x04a2  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x04ae  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x04ba  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x04de  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x04f3  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x015a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void Y(Object obj, dcv dcvVar) {
        Iterator it;
        Map.Entry entry;
        int length;
        int i;
        int i2;
        if (this.h) {
            ddb o = hl.o(obj);
            if (!o.h()) {
                it = o.d();
                entry = (Map.Entry) it.next();
                length = this.c.length;
                Unsafe unsafe = b;
                int i3 = 1048575;
                i = 0;
                int i4 = 1048575;
                int i5 = 0;
                while (i < length) {
                    int C = C(i);
                    int s = s(i);
                    int B = B(C);
                    if (B <= 17) {
                        int i6 = this.c[i + 2];
                        int i7 = i6 & i3;
                        if (i7 != i4) {
                            i5 = unsafe.getInt(obj, i7);
                            i4 = i7;
                        }
                        i2 = 1 << (i6 >>> 20);
                    } else {
                        i2 = 0;
                    }
                    while (entry != null) {
                        hl.n(entry);
                        if (s >= 334728578) {
                            hl.r(dcvVar, entry);
                            entry = it.hasNext() ? (Map.Entry) it.next() : null;
                        } else {
                            long D = D(C);
                            switch (B) {
                                case 0:
                                    if ((i2 & i5) == 0) {
                                        break;
                                    } else {
                                        dcvVar.c(s, dfz.b(obj, D));
                                        break;
                                    }
                                case 1:
                                    if ((i2 & i5) == 0) {
                                        break;
                                    } else {
                                        dcvVar.g(s, dfz.c(obj, D));
                                        break;
                                    }
                                case 2:
                                    if ((i2 & i5) == 0) {
                                        break;
                                    } else {
                                        dcvVar.j(s, unsafe.getLong(obj, D));
                                        break;
                                    }
                                case 3:
                                    if ((i2 & i5) == 0) {
                                        break;
                                    } else {
                                        dcvVar.s(s, unsafe.getLong(obj, D));
                                        break;
                                    }
                                case 4:
                                    if ((i2 & i5) == 0) {
                                        break;
                                    } else {
                                        dcvVar.i(s, unsafe.getInt(obj, D));
                                        break;
                                    }
                                case 5:
                                    if ((i2 & i5) == 0) {
                                        break;
                                    } else {
                                        dcvVar.f(s, unsafe.getLong(obj, D));
                                        break;
                                    }
                                case 6:
                                    if ((i2 & i5) == 0) {
                                        break;
                                    } else {
                                        dcvVar.e(s, unsafe.getInt(obj, D));
                                        break;
                                    }
                                case 7:
                                    if ((i2 & i5) == 0) {
                                        break;
                                    } else {
                                        dcvVar.a(s, dfz.w(obj, D));
                                        break;
                                    }
                                case 8:
                                    if ((i2 & i5) == 0) {
                                        break;
                                    } else {
                                        aa(s, unsafe.getObject(obj, D), dcvVar);
                                        break;
                                    }
                                case 9:
                                    if ((i2 & i5) == 0) {
                                        break;
                                    } else {
                                        dcvVar.k(s, unsafe.getObject(obj, D), G(i));
                                        break;
                                    }
                                case 10:
                                    if ((i2 & i5) == 0) {
                                        break;
                                    } else {
                                        dcvVar.b(s, (dcl) unsafe.getObject(obj, D));
                                        break;
                                    }
                                case 11:
                                    if ((i2 & i5) == 0) {
                                        break;
                                    } else {
                                        dcvVar.r(s, unsafe.getInt(obj, D));
                                        break;
                                    }
                                case 12:
                                    if ((i2 & i5) == 0) {
                                        break;
                                    } else {
                                        dcvVar.d(s, unsafe.getInt(obj, D));
                                        break;
                                    }
                                case 13:
                                    if ((i2 & i5) == 0) {
                                        break;
                                    } else {
                                        dcvVar.m(s, unsafe.getInt(obj, D));
                                        break;
                                    }
                                case 14:
                                    if ((i2 & i5) == 0) {
                                        break;
                                    } else {
                                        dcvVar.n(s, unsafe.getLong(obj, D));
                                        break;
                                    }
                                case 15:
                                    if ((i2 & i5) == 0) {
                                        break;
                                    } else {
                                        dcvVar.o(s, unsafe.getInt(obj, D));
                                        break;
                                    }
                                case 16:
                                    if ((i2 & i5) == 0) {
                                        break;
                                    } else {
                                        dcvVar.p(s, unsafe.getLong(obj, D));
                                        break;
                                    }
                                case 17:
                                    if ((i2 & i5) == 0) {
                                        break;
                                    } else {
                                        dcvVar.h(s, unsafe.getObject(obj, D), G(i));
                                        break;
                                    }
                                case 18:
                                    dfh.D(s(i), (List) unsafe.getObject(obj, D), dcvVar, false);
                                    break;
                                case 19:
                                    dfh.H(s(i), (List) unsafe.getObject(obj, D), dcvVar, false);
                                    break;
                                case 20:
                                    dfh.K(s(i), (List) unsafe.getObject(obj, D), dcvVar, false);
                                    break;
                                case 21:
                                    dfh.S(s(i), (List) unsafe.getObject(obj, D), dcvVar, false);
                                    break;
                                case 22:
                                    dfh.J(s(i), (List) unsafe.getObject(obj, D), dcvVar, false);
                                    break;
                                case 23:
                                    dfh.G(s(i), (List) unsafe.getObject(obj, D), dcvVar, false);
                                    break;
                                case 24:
                                    dfh.F(s(i), (List) unsafe.getObject(obj, D), dcvVar, false);
                                    break;
                                case 25:
                                    dfh.B(s(i), (List) unsafe.getObject(obj, D), dcvVar, false);
                                    break;
                                case 26:
                                    dfh.Q(s(i), (List) unsafe.getObject(obj, D), dcvVar);
                                    break;
                                case 27:
                                    dfh.L(s(i), (List) unsafe.getObject(obj, D), dcvVar, G(i));
                                    break;
                                case 28:
                                    dfh.C(s(i), (List) unsafe.getObject(obj, D), dcvVar);
                                    break;
                                case 29:
                                    dfh.R(s(i), (List) unsafe.getObject(obj, D), dcvVar, false);
                                    break;
                                case 30:
                                    dfh.E(s(i), (List) unsafe.getObject(obj, D), dcvVar, false);
                                    break;
                                case 31:
                                    dfh.M(s(i), (List) unsafe.getObject(obj, D), dcvVar, false);
                                    break;
                                case 32:
                                    dfh.N(s(i), (List) unsafe.getObject(obj, D), dcvVar, false);
                                    break;
                                case 33:
                                    dfh.O(s(i), (List) unsafe.getObject(obj, D), dcvVar, false);
                                    break;
                                case 34:
                                    dfh.P(s(i), (List) unsafe.getObject(obj, D), dcvVar, false);
                                    break;
                                case 35:
                                    dfh.D(s(i), (List) unsafe.getObject(obj, D), dcvVar, true);
                                    break;
                                case 36:
                                    dfh.H(s(i), (List) unsafe.getObject(obj, D), dcvVar, true);
                                    break;
                                case 37:
                                    dfh.K(s(i), (List) unsafe.getObject(obj, D), dcvVar, true);
                                    break;
                                case 38:
                                    dfh.S(s(i), (List) unsafe.getObject(obj, D), dcvVar, true);
                                    break;
                                case 39:
                                    dfh.J(s(i), (List) unsafe.getObject(obj, D), dcvVar, true);
                                    break;
                                case 40:
                                    dfh.G(s(i), (List) unsafe.getObject(obj, D), dcvVar, true);
                                    break;
                                case 41:
                                    dfh.F(s(i), (List) unsafe.getObject(obj, D), dcvVar, true);
                                    break;
                                case 42:
                                    dfh.B(s(i), (List) unsafe.getObject(obj, D), dcvVar, true);
                                    break;
                                case 43:
                                    dfh.R(s(i), (List) unsafe.getObject(obj, D), dcvVar, true);
                                    break;
                                case 44:
                                    dfh.E(s(i), (List) unsafe.getObject(obj, D), dcvVar, true);
                                    break;
                                case 45:
                                    dfh.M(s(i), (List) unsafe.getObject(obj, D), dcvVar, true);
                                    break;
                                case 46:
                                    dfh.N(s(i), (List) unsafe.getObject(obj, D), dcvVar, true);
                                    break;
                                case 47:
                                    dfh.O(s(i), (List) unsafe.getObject(obj, D), dcvVar, true);
                                    break;
                                case 48:
                                    dfh.P(s(i), (List) unsafe.getObject(obj, D), dcvVar, true);
                                    break;
                                case 49:
                                    dfh.I(s(i), (List) unsafe.getObject(obj, D), dcvVar, G(i));
                                    break;
                                case 50:
                                    Z(dcvVar, s, unsafe.getObject(obj, D), i);
                                    break;
                                case 51:
                                    if (!U(obj, s, i)) {
                                        break;
                                    } else {
                                        dcvVar.c(s, o(obj, D));
                                        break;
                                    }
                                case 52:
                                    if (!U(obj, s, i)) {
                                        break;
                                    } else {
                                        dcvVar.g(s, p(obj, D));
                                        break;
                                    }
                                case 53:
                                    if (!U(obj, s, i)) {
                                        break;
                                    } else {
                                        dcvVar.j(s, E(obj, D));
                                        break;
                                    }
                                case 54:
                                    if (!U(obj, s, i)) {
                                        break;
                                    } else {
                                        dcvVar.s(s, E(obj, D));
                                        break;
                                    }
                                case 55:
                                    if (!U(obj, s, i)) {
                                        break;
                                    } else {
                                        dcvVar.i(s, t(obj, D));
                                        break;
                                    }
                                case 56:
                                    if (!U(obj, s, i)) {
                                        break;
                                    } else {
                                        dcvVar.f(s, E(obj, D));
                                        break;
                                    }
                                case 57:
                                    if (!U(obj, s, i)) {
                                        break;
                                    } else {
                                        dcvVar.e(s, t(obj, D));
                                        break;
                                    }
                                case 58:
                                    if (!U(obj, s, i)) {
                                        break;
                                    } else {
                                        dcvVar.a(s, V(obj, D));
                                        break;
                                    }
                                case 59:
                                    if (!U(obj, s, i)) {
                                        break;
                                    } else {
                                        aa(s, unsafe.getObject(obj, D), dcvVar);
                                        break;
                                    }
                                case 60:
                                    if (!U(obj, s, i)) {
                                        break;
                                    } else {
                                        dcvVar.k(s, unsafe.getObject(obj, D), G(i));
                                        break;
                                    }
                                case 61:
                                    if (!U(obj, s, i)) {
                                        break;
                                    } else {
                                        dcvVar.b(s, (dcl) unsafe.getObject(obj, D));
                                        break;
                                    }
                                case 62:
                                    if (!U(obj, s, i)) {
                                        break;
                                    } else {
                                        dcvVar.r(s, t(obj, D));
                                        break;
                                    }
                                case 63:
                                    if (!U(obj, s, i)) {
                                        break;
                                    } else {
                                        dcvVar.d(s, t(obj, D));
                                        break;
                                    }
                                case 64:
                                    if (!U(obj, s, i)) {
                                        break;
                                    } else {
                                        dcvVar.m(s, t(obj, D));
                                        break;
                                    }
                                case 65:
                                    if (!U(obj, s, i)) {
                                        break;
                                    } else {
                                        dcvVar.n(s, E(obj, D));
                                        break;
                                    }
                                case 66:
                                    if (!U(obj, s, i)) {
                                        break;
                                    } else {
                                        dcvVar.o(s, t(obj, D));
                                        break;
                                    }
                                case 67:
                                    if (!U(obj, s, i)) {
                                        break;
                                    } else {
                                        dcvVar.p(s, E(obj, D));
                                        break;
                                    }
                                case 68:
                                    if (!U(obj, s, i)) {
                                        break;
                                    } else {
                                        dcvVar.h(s, unsafe.getObject(obj, D), G(i));
                                        break;
                                    }
                            }
                            i += 3;
                            i3 = 1048575;
                        }
                    }
                    long D2 = D(C);
                    switch (B) {
                    }
                    i += 3;
                    i3 = 1048575;
                }
                while (entry != null) {
                    hl.r(dcvVar, entry);
                    entry = it.hasNext() ? (Map.Entry) it.next() : null;
                }
                ad(obj, dcvVar);
            }
        }
        it = null;
        entry = null;
        length = this.c.length;
        Unsafe unsafe2 = b;
        int i32 = 1048575;
        i = 0;
        int i42 = 1048575;
        int i52 = 0;
        while (i < length) {
        }
        while (entry != null) {
        }
        ad(obj, dcvVar);
    }

    private final void Z(dcv dcvVar, int i, Object obj, int i2) {
        if (obj != null) {
            dek U = ev.U(H(i2));
            dcu dcuVar = dcvVar.a;
            Iterator it = ((dem) obj).entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                dcvVar.a.A(i, 2);
                dcvVar.a.C(del.a(U, entry.getKey(), entry.getValue()));
                del.c(dcvVar.a, U, entry.getKey(), entry.getValue());
            }
        }
    }

    private static final void aa(int i, Object obj, dcv dcvVar) {
        if (obj instanceof String) {
            dcvVar.q(i, (String) obj);
        } else {
            dcvVar.b(i, (dcl) obj);
        }
    }

    private final Object ab(Object obj, int i, Object obj2) {
        ddo F;
        int s = s(i);
        Object h = dfz.h(obj, D(C(i)));
        if (h == null || (F = F(i)) == null) {
            return obj2;
        }
        dek U = ev.U(H(i));
        Iterator it = ((dem) h).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!F.a(((Integer) entry.getValue()).intValue())) {
                if (obj2 == null) {
                    obj2 = dfr.b();
                }
                int a2 = del.a(U, entry.getKey(), entry.getValue());
                dcl dclVar = dcl.b;
                byte[] bArr = new byte[a2];
                dcu ai = dcu.ai(bArr);
                try {
                    del.c(ai, U, entry.getKey(), entry.getValue());
                    ev.K(obj2, s, hl.t(ai, bArr));
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return obj2;
    }

    private static final int ac(Object obj) {
        return ev.M(obj).a();
    }

    private static final void ad(Object obj, dcv dcvVar) {
        ev.M(obj).e(dcvVar);
    }

    static dfr d(Object obj) {
        ddk ddkVar = (ddk) obj;
        dfr dfrVar = ddkVar.s;
        if (dfrVar != dfr.a) {
            return dfrVar;
        }
        dfr b2 = dfr.b();
        ddkVar.s = b2;
        return b2;
    }

    static det m(deo deoVar, ev evVar, def defVar, ev evVar2, hl hlVar, ev evVar3) {
        if (deoVar instanceof dfb) {
            return n((dfb) deoVar, defVar, evVar2, hlVar, evVar3);
        }
        throw null;
    }

    static det n(dfb dfbVar, def defVar, ev evVar, hl hlVar, ev evVar2) {
        int i;
        int charAt;
        int charAt2;
        int charAt3;
        int charAt4;
        int i2;
        int i3;
        int[] iArr;
        int i4;
        char charAt5;
        int i5;
        char charAt6;
        int i6;
        char charAt7;
        int i7;
        char charAt8;
        int i8;
        char charAt9;
        int i9;
        char charAt10;
        int i10;
        char charAt11;
        int i11;
        char charAt12;
        int i12;
        int i13;
        int i14;
        int i15;
        String str;
        int objectFieldOffset;
        int i16;
        int i17;
        int i18;
        Object[] objArr;
        int i19;
        int i20;
        Field I;
        char charAt13;
        int i21;
        Field I2;
        Field I3;
        int i22;
        char charAt14;
        int i23;
        char charAt15;
        int i24;
        char charAt16;
        int i25;
        char charAt17;
        int i26 = 0;
        boolean z = dfbVar.c() == 2;
        String str2 = dfbVar.b;
        int length = str2.length();
        if (str2.charAt(0) >= 55296) {
            int i27 = 1;
            while (true) {
                i = i27 + 1;
                if (str2.charAt(i27) < 55296) {
                    break;
                }
                i27 = i;
            }
        } else {
            i = 1;
        }
        int i28 = i + 1;
        int charAt18 = str2.charAt(i);
        if (charAt18 >= 55296) {
            int i29 = charAt18 & 8191;
            int i30 = 13;
            while (true) {
                i25 = i28 + 1;
                charAt17 = str2.charAt(i28);
                if (charAt17 < 55296) {
                    break;
                }
                i29 |= (charAt17 & 8191) << i30;
                i30 += 13;
                i28 = i25;
            }
            charAt18 = i29 | (charAt17 << i30);
            i28 = i25;
        }
        if (charAt18 == 0) {
            iArr = a;
            i3 = 0;
            charAt = 0;
            charAt2 = 0;
            charAt3 = 0;
            i2 = 0;
            charAt4 = 0;
        } else {
            int i31 = i28 + 1;
            int charAt19 = str2.charAt(i28);
            if (charAt19 >= 55296) {
                int i32 = charAt19 & 8191;
                int i33 = 13;
                while (true) {
                    i11 = i31 + 1;
                    charAt12 = str2.charAt(i31);
                    if (charAt12 < 55296) {
                        break;
                    }
                    i32 |= (charAt12 & 8191) << i33;
                    i33 += 13;
                    i31 = i11;
                }
                charAt19 = i32 | (charAt12 << i33);
                i31 = i11;
            }
            int i34 = i31 + 1;
            int charAt20 = str2.charAt(i31);
            if (charAt20 >= 55296) {
                int i35 = charAt20 & 8191;
                int i36 = 13;
                while (true) {
                    i10 = i34 + 1;
                    charAt11 = str2.charAt(i34);
                    if (charAt11 < 55296) {
                        break;
                    }
                    i35 |= (charAt11 & 8191) << i36;
                    i36 += 13;
                    i34 = i10;
                }
                charAt20 = i35 | (charAt11 << i36);
                i34 = i10;
            }
            int i37 = i34 + 1;
            charAt = str2.charAt(i34);
            if (charAt >= 55296) {
                int i38 = charAt & 8191;
                int i39 = 13;
                while (true) {
                    i9 = i37 + 1;
                    charAt10 = str2.charAt(i37);
                    if (charAt10 < 55296) {
                        break;
                    }
                    i38 |= (charAt10 & 8191) << i39;
                    i39 += 13;
                    i37 = i9;
                }
                charAt = i38 | (charAt10 << i39);
                i37 = i9;
            }
            int i40 = i37 + 1;
            charAt2 = str2.charAt(i37);
            if (charAt2 >= 55296) {
                int i41 = charAt2 & 8191;
                int i42 = 13;
                while (true) {
                    i8 = i40 + 1;
                    charAt9 = str2.charAt(i40);
                    if (charAt9 < 55296) {
                        break;
                    }
                    i41 |= (charAt9 & 8191) << i42;
                    i42 += 13;
                    i40 = i8;
                }
                charAt2 = i41 | (charAt9 << i42);
                i40 = i8;
            }
            int i43 = i40 + 1;
            charAt3 = str2.charAt(i40);
            if (charAt3 >= 55296) {
                int i44 = charAt3 & 8191;
                int i45 = 13;
                while (true) {
                    i7 = i43 + 1;
                    charAt8 = str2.charAt(i43);
                    if (charAt8 < 55296) {
                        break;
                    }
                    i44 |= (charAt8 & 8191) << i45;
                    i45 += 13;
                    i43 = i7;
                }
                charAt3 = i44 | (charAt8 << i45);
                i43 = i7;
            }
            int i46 = i43 + 1;
            int charAt21 = str2.charAt(i43);
            if (charAt21 >= 55296) {
                int i47 = charAt21 & 8191;
                int i48 = 13;
                while (true) {
                    i6 = i46 + 1;
                    charAt7 = str2.charAt(i46);
                    if (charAt7 < 55296) {
                        break;
                    }
                    i47 |= (charAt7 & 8191) << i48;
                    i48 += 13;
                    i46 = i6;
                }
                charAt21 = i47 | (charAt7 << i48);
                i46 = i6;
            }
            int i49 = i46 + 1;
            int charAt22 = str2.charAt(i46);
            if (charAt22 >= 55296) {
                int i50 = charAt22 & 8191;
                int i51 = 13;
                while (true) {
                    i5 = i49 + 1;
                    charAt6 = str2.charAt(i49);
                    if (charAt6 < 55296) {
                        break;
                    }
                    i50 |= (charAt6 & 8191) << i51;
                    i51 += 13;
                    i49 = i5;
                }
                charAt22 = i50 | (charAt6 << i51);
                i49 = i5;
            }
            int i52 = i49 + 1;
            charAt4 = str2.charAt(i49);
            if (charAt4 >= 55296) {
                int i53 = charAt4 & 8191;
                int i54 = i52;
                int i55 = 13;
                while (true) {
                    i4 = i54 + 1;
                    charAt5 = str2.charAt(i54);
                    if (charAt5 < 55296) {
                        break;
                    }
                    i53 |= (charAt5 & 8191) << i55;
                    i55 += 13;
                    i54 = i4;
                }
                charAt4 = i53 | (charAt5 << i55);
                i52 = i4;
            }
            int[] iArr2 = new int[charAt4 + charAt21 + charAt22];
            i2 = charAt19 + charAt19 + charAt20;
            i3 = charAt21;
            iArr = iArr2;
            i26 = charAt19;
            i28 = i52;
        }
        Unsafe unsafe = b;
        Object[] objArr2 = dfbVar.c;
        Class<?> cls = dfbVar.a.getClass();
        int i56 = i28;
        int[] iArr3 = new int[charAt3 * 3];
        Object[] objArr3 = new Object[charAt3 + charAt3];
        int i57 = charAt4 + i3;
        int i58 = charAt4;
        int i59 = i56;
        int i60 = i57;
        int i61 = 0;
        int i62 = 0;
        while (i59 < length) {
            int i63 = i59 + 1;
            int charAt23 = str2.charAt(i59);
            int i64 = length;
            if (charAt23 >= 55296) {
                int i65 = charAt23 & 8191;
                int i66 = i63;
                int i67 = 13;
                while (true) {
                    i24 = i66 + 1;
                    charAt16 = str2.charAt(i66);
                    i12 = charAt4;
                    if (charAt16 < 55296) {
                        break;
                    }
                    i65 |= (charAt16 & 8191) << i67;
                    i67 += 13;
                    i66 = i24;
                    charAt4 = i12;
                }
                charAt23 = i65 | (charAt16 << i67);
                i13 = i24;
            } else {
                i12 = charAt4;
                i13 = i63;
            }
            int i68 = i13 + 1;
            int charAt24 = str2.charAt(i13);
            if (charAt24 >= 55296) {
                int i69 = charAt24 & 8191;
                int i70 = i68;
                int i71 = 13;
                while (true) {
                    i23 = i70 + 1;
                    charAt15 = str2.charAt(i70);
                    i14 = charAt2;
                    if (charAt15 < 55296) {
                        break;
                    }
                    i69 |= (charAt15 & 8191) << i71;
                    i71 += 13;
                    i70 = i23;
                    charAt2 = i14;
                }
                charAt24 = i69 | (charAt15 << i71);
                i15 = i23;
            } else {
                i14 = charAt2;
                i15 = i68;
            }
            int i72 = charAt24 & 255;
            int i73 = charAt;
            if ((charAt24 & 1024) != 0) {
                iArr[i62] = i61;
                i62++;
            }
            if (i72 >= 51) {
                int i74 = i15 + 1;
                int charAt25 = str2.charAt(i15);
                char c = 55296;
                if (charAt25 >= 55296) {
                    int i75 = 13;
                    int i76 = charAt25 & 8191;
                    int i77 = i74;
                    while (true) {
                        i22 = i77 + 1;
                        charAt14 = str2.charAt(i77);
                        if (charAt14 < c) {
                            break;
                        }
                        i76 |= (charAt14 & 8191) << i75;
                        i75 += 13;
                        i77 = i22;
                        c = 55296;
                    }
                    charAt25 = i76 | (charAt14 << i75);
                    i21 = i22;
                } else {
                    i21 = i74;
                }
                int i78 = i21;
                int i79 = i72 - 51;
                if (i79 == 9 || i79 == 17) {
                    int i80 = i61 / 3;
                    objArr3[i80 + i80 + 1] = objArr2[i2];
                    i2++;
                } else if (i79 == 12 && !z) {
                    int i81 = i61 / 3;
                    objArr3[i81 + i81 + 1] = objArr2[i2];
                    i2++;
                }
                int i82 = charAt25 + charAt25;
                Object obj = objArr2[i82];
                if (obj instanceof Field) {
                    I2 = (Field) obj;
                } else {
                    I2 = I(cls, (String) obj);
                    objArr2[i82] = I2;
                }
                str = str2;
                int objectFieldOffset2 = (int) unsafe.objectFieldOffset(I2);
                int i83 = i82 + 1;
                Object obj2 = objArr2[i83];
                if (obj2 instanceof Field) {
                    I3 = (Field) obj2;
                } else {
                    I3 = I(cls, (String) obj2);
                    objArr2[i83] = I3;
                }
                int objectFieldOffset3 = (int) unsafe.objectFieldOffset(I3);
                i18 = i26;
                objArr = objArr2;
                i17 = i2;
                i15 = i78;
                i19 = 0;
                i16 = objectFieldOffset3;
                objectFieldOffset = objectFieldOffset2;
            } else {
                str = str2;
                int i84 = i2 + 1;
                Field I4 = I(cls, (String) objArr2[i2]);
                if (i72 != 9 && i72 != 17) {
                    if (i72 == 27 || i72 == 49) {
                        int i85 = i61 / 3;
                        objArr3[i85 + i85 + 1] = objArr2[i84];
                        i84++;
                    } else if (i72 == 12 || i72 == 30 || i72 == 44) {
                        if (!z) {
                            int i86 = i61 / 3;
                            objArr3[i86 + i86 + 1] = objArr2[i84];
                            i84++;
                        }
                    } else if (i72 == 50) {
                        int i87 = i58 + 1;
                        iArr[i58] = i61;
                        int i88 = i61 / 3;
                        int i89 = i88 + i88;
                        int i90 = i84 + 1;
                        objArr3[i89] = objArr2[i84];
                        if ((charAt24 & 2048) != 0) {
                            i84 = i90 + 1;
                            objArr3[i89 + 1] = objArr2[i90];
                            i58 = i87;
                        } else {
                            i58 = i87;
                            i84 = i90;
                        }
                    }
                    objectFieldOffset = (int) unsafe.objectFieldOffset(I4);
                    i16 = 1048575;
                    i17 = i84;
                    if ((charAt24 & 4096) == 4096 || i72 > 17) {
                        i18 = i26;
                        objArr = objArr2;
                        i19 = 0;
                    } else {
                        int i91 = i15 + 1;
                        int charAt26 = str.charAt(i15);
                        if (charAt26 >= 55296) {
                            int i92 = charAt26 & 8191;
                            int i93 = 13;
                            while (true) {
                                i20 = i91 + 1;
                                charAt13 = str.charAt(i91);
                                if (charAt13 < 55296) {
                                    break;
                                }
                                i92 |= (charAt13 & 8191) << i93;
                                i93 += 13;
                                i91 = i20;
                            }
                            charAt26 = i92 | (charAt13 << i93);
                        } else {
                            i20 = i91;
                        }
                        int i94 = i26 + i26 + (charAt26 / 32);
                        Object obj3 = objArr2[i94];
                        i18 = i26;
                        if (obj3 instanceof Field) {
                            I = (Field) obj3;
                        } else {
                            I = I(cls, (String) obj3);
                            objArr2[i94] = I;
                        }
                        objArr = objArr2;
                        int objectFieldOffset4 = (int) unsafe.objectFieldOffset(I);
                        i19 = charAt26 % 32;
                        i15 = i20;
                        i16 = objectFieldOffset4;
                    }
                    if (i72 >= 18 && i72 <= 49) {
                        iArr[i60] = objectFieldOffset;
                        i60++;
                    }
                }
                int i95 = i61 / 3;
                objArr3[i95 + i95 + 1] = I4.getType();
                objectFieldOffset = (int) unsafe.objectFieldOffset(I4);
                i16 = 1048575;
                i17 = i84;
                if ((charAt24 & 4096) == 4096) {
                }
                i18 = i26;
                objArr = objArr2;
                i19 = 0;
                if (i72 >= 18) {
                    iArr[i60] = objectFieldOffset;
                    i60++;
                }
            }
            int i96 = i61 + 1;
            iArr3[i61] = charAt23;
            int i97 = i96 + 1;
            iArr3[i96] = objectFieldOffset | ((charAt24 & 512) != 0 ? 536870912 : 0) | ((charAt24 & 256) != 0 ? 268435456 : 0) | (i72 << 20);
            i61 = i97 + 1;
            iArr3[i97] = (i19 << 20) | i16;
            objArr2 = objArr;
            str2 = str;
            i59 = i15;
            charAt = i73;
            length = i64;
            charAt4 = i12;
            charAt2 = i14;
            i2 = i17;
            i26 = i18;
        }
        return new det(iArr3, objArr3, charAt, charAt2, dfbVar.a, z, iArr, charAt4, i57, defVar, evVar, hlVar, null, null, null);
    }

    private static double o(Object obj, long j) {
        return ((Double) dfz.h(obj, j)).doubleValue();
    }

    private static float p(Object obj, long j) {
        return ((Float) dfz.h(obj, j)).floatValue();
    }

    private final int q(Object obj) {
        int i;
        Unsafe unsafe = b;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1048575;
        for (int i5 = 0; i5 < this.c.length; i5 += 3) {
            int C = C(i5);
            int s = s(i5);
            int B = B(C);
            if (B <= 17) {
                int i6 = this.c[i5 + 2];
                int i7 = i6 & 1048575;
                i = 1 << (i6 >>> 20);
                if (i7 != i4) {
                    i3 = unsafe.getInt(obj, i7);
                    i4 = i7;
                }
            } else {
                i = 0;
            }
            long D = D(C);
            switch (B) {
                case 0:
                    if ((i3 & i) != 0) {
                        i2 += dcu.aw(s);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if ((i3 & i) != 0) {
                        i2 += dcu.az(s);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if ((i3 & i) != 0) {
                        i2 += dcu.O(s, unsafe.getLong(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if ((i3 & i) != 0) {
                        i2 += dcu.ae(s, unsafe.getLong(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if ((i3 & i) != 0) {
                        i2 += dcu.M(s, unsafe.getInt(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if ((i3 & i) != 0) {
                        i2 += dcu.ay(s);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if ((i3 & i) != 0) {
                        i2 += dcu.ax(s);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if ((i3 & i) != 0) {
                        i2 += dcu.av(s);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if ((i3 & i) != 0) {
                        Object object = unsafe.getObject(obj, D);
                        if (object instanceof dcl) {
                            i2 += dcu.H(s, (dcl) object);
                            break;
                        } else {
                            i2 += dcu.Z(s, (String) object);
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    if ((i3 & i) != 0) {
                        i2 += dfh.i(s, unsafe.getObject(obj, D), G(i5));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if ((i3 & i) != 0) {
                        i2 += dcu.H(s, (dcl) unsafe.getObject(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if ((i3 & i) != 0) {
                        i2 += dcu.ac(s, unsafe.getInt(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if ((i3 & i) != 0) {
                        i2 += dcu.J(s, unsafe.getInt(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if ((i3 & i) != 0) {
                        i2 += dcu.aA(s);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if ((i3 & i) != 0) {
                        i2 += dcu.aB(s);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if ((i3 & i) != 0) {
                        i2 += dcu.V(s, unsafe.getInt(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if ((i3 & i) != 0) {
                        i2 += dcu.X(s, unsafe.getLong(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if ((i3 & i) != 0) {
                        i2 += dcu.K(s, (der) unsafe.getObject(obj, D), G(i5));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    i2 += dfh.u(s, (List) unsafe.getObject(obj, D));
                    break;
                case 19:
                    i2 += dfh.t(s, (List) unsafe.getObject(obj, D));
                    break;
                case 20:
                    i2 += dfh.w(s, (List) unsafe.getObject(obj, D));
                    break;
                case 21:
                    i2 += dfh.A(s, (List) unsafe.getObject(obj, D));
                    break;
                case 22:
                    i2 += dfh.v(s, (List) unsafe.getObject(obj, D));
                    break;
                case 23:
                    i2 += dfh.u(s, (List) unsafe.getObject(obj, D));
                    break;
                case 24:
                    i2 += dfh.t(s, (List) unsafe.getObject(obj, D));
                    break;
                case 25:
                    i2 += dfh.r(s, (List) unsafe.getObject(obj, D));
                    break;
                case 26:
                    i2 += dfh.m(s, (List) unsafe.getObject(obj, D));
                    break;
                case 27:
                    i2 += dfh.j(s, (List) unsafe.getObject(obj, D), G(i5));
                    break;
                case 28:
                    i2 += dfh.b(s, (List) unsafe.getObject(obj, D));
                    break;
                case 29:
                    i2 += dfh.z(s, (List) unsafe.getObject(obj, D));
                    break;
                case 30:
                    i2 += dfh.s(s, (List) unsafe.getObject(obj, D));
                    break;
                case 31:
                    i2 += dfh.t(s, (List) unsafe.getObject(obj, D));
                    break;
                case 32:
                    i2 += dfh.u(s, (List) unsafe.getObject(obj, D));
                    break;
                case 33:
                    i2 += dfh.x(s, (List) unsafe.getObject(obj, D));
                    break;
                case 34:
                    i2 += dfh.y(s, (List) unsafe.getObject(obj, D));
                    break;
                case 35:
                    int e = dfh.e((List) unsafe.getObject(obj, D));
                    if (e > 0) {
                        i2 += dcu.ab(s) + dcu.ad(e) + e;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    int d = dfh.d((List) unsafe.getObject(obj, D));
                    if (d > 0) {
                        i2 += dcu.ab(s) + dcu.ad(d) + d;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    int h = dfh.h((List) unsafe.getObject(obj, D));
                    if (h > 0) {
                        i2 += dcu.ab(s) + dcu.ad(h) + h;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int o = dfh.o((List) unsafe.getObject(obj, D));
                    if (o > 0) {
                        i2 += dcu.ab(s) + dcu.ad(o) + o;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int g = dfh.g((List) unsafe.getObject(obj, D));
                    if (g > 0) {
                        i2 += dcu.ab(s) + dcu.ad(g) + g;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    int e2 = dfh.e((List) unsafe.getObject(obj, D));
                    if (e2 > 0) {
                        i2 += dcu.ab(s) + dcu.ad(e2) + e2;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    int d2 = dfh.d((List) unsafe.getObject(obj, D));
                    if (d2 > 0) {
                        i2 += dcu.ab(s) + dcu.ad(d2) + d2;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    int a2 = dfh.a((List) unsafe.getObject(obj, D));
                    if (a2 > 0) {
                        i2 += dcu.ab(s) + dcu.ad(a2) + a2;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int n = dfh.n((List) unsafe.getObject(obj, D));
                    if (n > 0) {
                        i2 += dcu.ab(s) + dcu.ad(n) + n;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int c = dfh.c((List) unsafe.getObject(obj, D));
                    if (c > 0) {
                        i2 += dcu.ab(s) + dcu.ad(c) + c;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    int d3 = dfh.d((List) unsafe.getObject(obj, D));
                    if (d3 > 0) {
                        i2 += dcu.ab(s) + dcu.ad(d3) + d3;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    int e3 = dfh.e((List) unsafe.getObject(obj, D));
                    if (e3 > 0) {
                        i2 += dcu.ab(s) + dcu.ad(e3) + e3;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int k = dfh.k((List) unsafe.getObject(obj, D));
                    if (k > 0) {
                        i2 += dcu.ab(s) + dcu.ad(k) + k;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int l = dfh.l((List) unsafe.getObject(obj, D));
                    if (l > 0) {
                        i2 += dcu.ab(s) + dcu.ad(l) + l;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    i2 += dfh.f(s, (List) unsafe.getObject(obj, D), G(i5));
                    break;
                case 50:
                    i2 += ev.V(s, unsafe.getObject(obj, D), H(i5));
                    break;
                case 51:
                    if (U(obj, s, i5)) {
                        i2 += dcu.aw(s);
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (U(obj, s, i5)) {
                        i2 += dcu.az(s);
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (U(obj, s, i5)) {
                        i2 += dcu.O(s, E(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (U(obj, s, i5)) {
                        i2 += dcu.ae(s, E(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (U(obj, s, i5)) {
                        i2 += dcu.M(s, t(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (U(obj, s, i5)) {
                        i2 += dcu.ay(s);
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (U(obj, s, i5)) {
                        i2 += dcu.ax(s);
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (U(obj, s, i5)) {
                        i2 += dcu.av(s);
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (U(obj, s, i5)) {
                        Object object2 = unsafe.getObject(obj, D);
                        if (object2 instanceof dcl) {
                            i2 += dcu.H(s, (dcl) object2);
                            break;
                        } else {
                            i2 += dcu.Z(s, (String) object2);
                            break;
                        }
                    } else {
                        break;
                    }
                case 60:
                    if (U(obj, s, i5)) {
                        i2 += dfh.i(s, unsafe.getObject(obj, D), G(i5));
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (U(obj, s, i5)) {
                        i2 += dcu.H(s, (dcl) unsafe.getObject(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (U(obj, s, i5)) {
                        i2 += dcu.ac(s, t(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (U(obj, s, i5)) {
                        i2 += dcu.J(s, t(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (U(obj, s, i5)) {
                        i2 += dcu.aA(s);
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (U(obj, s, i5)) {
                        i2 += dcu.aB(s);
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (U(obj, s, i5)) {
                        i2 += dcu.V(s, t(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (U(obj, s, i5)) {
                        i2 += dcu.X(s, E(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (U(obj, s, i5)) {
                        i2 += dcu.K(s, (der) unsafe.getObject(obj, D), G(i5));
                        break;
                    } else {
                        break;
                    }
            }
        }
        int ac = i2 + ac(obj);
        if (!this.h) {
            return ac;
        }
        ddb o2 = hl.o(obj);
        int i8 = 0;
        for (int i9 = 0; i9 < o2.b.a(); i9++) {
            Map.Entry f = o2.b.f(i9);
            i8 += ddb.j((ddj) f.getKey(), f.getValue());
        }
        for (Map.Entry entry : o2.b.c()) {
            i8 += ddb.j((ddj) entry.getKey(), entry.getValue());
        }
        return ac + i8;
    }

    private final int r(Object obj) {
        Unsafe unsafe = b;
        int i = 0;
        for (int i2 = 0; i2 < this.c.length; i2 += 3) {
            int C = C(i2);
            int B = B(C);
            int s = s(i2);
            long D = D(C);
            if (B >= ddc.DOUBLE_LIST_PACKED.Z && B <= ddc.SINT64_LIST_PACKED.Z) {
                int i3 = this.c[i2 + 2];
            }
            switch (B) {
                case 0:
                    if (R(obj, i2)) {
                        i += dcu.aw(s);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (R(obj, i2)) {
                        i += dcu.az(s);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (R(obj, i2)) {
                        i += dcu.O(s, dfz.f(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (R(obj, i2)) {
                        i += dcu.ae(s, dfz.f(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (R(obj, i2)) {
                        i += dcu.M(s, dfz.d(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (R(obj, i2)) {
                        i += dcu.ay(s);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (R(obj, i2)) {
                        i += dcu.ax(s);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (R(obj, i2)) {
                        i += dcu.av(s);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (R(obj, i2)) {
                        Object h = dfz.h(obj, D);
                        if (h instanceof dcl) {
                            i += dcu.H(s, (dcl) h);
                            break;
                        } else {
                            i += dcu.Z(s, (String) h);
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    if (R(obj, i2)) {
                        i += dfh.i(s, dfz.h(obj, D), G(i2));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (R(obj, i2)) {
                        i += dcu.H(s, (dcl) dfz.h(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (R(obj, i2)) {
                        i += dcu.ac(s, dfz.d(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (R(obj, i2)) {
                        i += dcu.J(s, dfz.d(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (R(obj, i2)) {
                        i += dcu.aA(s);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (R(obj, i2)) {
                        i += dcu.aB(s);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (R(obj, i2)) {
                        i += dcu.V(s, dfz.d(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (R(obj, i2)) {
                        i += dcu.X(s, dfz.f(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (R(obj, i2)) {
                        i += dcu.K(s, (der) dfz.h(obj, D), G(i2));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    i += dfh.u(s, J(obj, D));
                    break;
                case 19:
                    i += dfh.t(s, J(obj, D));
                    break;
                case 20:
                    i += dfh.w(s, J(obj, D));
                    break;
                case 21:
                    i += dfh.A(s, J(obj, D));
                    break;
                case 22:
                    i += dfh.v(s, J(obj, D));
                    break;
                case 23:
                    i += dfh.u(s, J(obj, D));
                    break;
                case 24:
                    i += dfh.t(s, J(obj, D));
                    break;
                case 25:
                    i += dfh.r(s, J(obj, D));
                    break;
                case 26:
                    i += dfh.m(s, J(obj, D));
                    break;
                case 27:
                    i += dfh.j(s, J(obj, D), G(i2));
                    break;
                case 28:
                    i += dfh.b(s, J(obj, D));
                    break;
                case 29:
                    i += dfh.z(s, J(obj, D));
                    break;
                case 30:
                    i += dfh.s(s, J(obj, D));
                    break;
                case 31:
                    i += dfh.t(s, J(obj, D));
                    break;
                case 32:
                    i += dfh.u(s, J(obj, D));
                    break;
                case 33:
                    i += dfh.x(s, J(obj, D));
                    break;
                case 34:
                    i += dfh.y(s, J(obj, D));
                    break;
                case 35:
                    int e = dfh.e((List) unsafe.getObject(obj, D));
                    if (e > 0) {
                        i += dcu.ab(s) + dcu.ad(e) + e;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    int d = dfh.d((List) unsafe.getObject(obj, D));
                    if (d > 0) {
                        i += dcu.ab(s) + dcu.ad(d) + d;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    int h2 = dfh.h((List) unsafe.getObject(obj, D));
                    if (h2 > 0) {
                        i += dcu.ab(s) + dcu.ad(h2) + h2;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int o = dfh.o((List) unsafe.getObject(obj, D));
                    if (o > 0) {
                        i += dcu.ab(s) + dcu.ad(o) + o;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int g = dfh.g((List) unsafe.getObject(obj, D));
                    if (g > 0) {
                        i += dcu.ab(s) + dcu.ad(g) + g;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    int e2 = dfh.e((List) unsafe.getObject(obj, D));
                    if (e2 > 0) {
                        i += dcu.ab(s) + dcu.ad(e2) + e2;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    int d2 = dfh.d((List) unsafe.getObject(obj, D));
                    if (d2 > 0) {
                        i += dcu.ab(s) + dcu.ad(d2) + d2;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    int a2 = dfh.a((List) unsafe.getObject(obj, D));
                    if (a2 > 0) {
                        i += dcu.ab(s) + dcu.ad(a2) + a2;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int n = dfh.n((List) unsafe.getObject(obj, D));
                    if (n > 0) {
                        i += dcu.ab(s) + dcu.ad(n) + n;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int c = dfh.c((List) unsafe.getObject(obj, D));
                    if (c > 0) {
                        i += dcu.ab(s) + dcu.ad(c) + c;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    int d3 = dfh.d((List) unsafe.getObject(obj, D));
                    if (d3 > 0) {
                        i += dcu.ab(s) + dcu.ad(d3) + d3;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    int e3 = dfh.e((List) unsafe.getObject(obj, D));
                    if (e3 > 0) {
                        i += dcu.ab(s) + dcu.ad(e3) + e3;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int k = dfh.k((List) unsafe.getObject(obj, D));
                    if (k > 0) {
                        i += dcu.ab(s) + dcu.ad(k) + k;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int l = dfh.l((List) unsafe.getObject(obj, D));
                    if (l > 0) {
                        i += dcu.ab(s) + dcu.ad(l) + l;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    i += dfh.f(s, J(obj, D), G(i2));
                    break;
                case 50:
                    i += ev.V(s, dfz.h(obj, D), H(i2));
                    break;
                case 51:
                    if (U(obj, s, i2)) {
                        i += dcu.aw(s);
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (U(obj, s, i2)) {
                        i += dcu.az(s);
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (U(obj, s, i2)) {
                        i += dcu.O(s, E(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (U(obj, s, i2)) {
                        i += dcu.ae(s, E(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (U(obj, s, i2)) {
                        i += dcu.M(s, t(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (U(obj, s, i2)) {
                        i += dcu.ay(s);
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (U(obj, s, i2)) {
                        i += dcu.ax(s);
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (U(obj, s, i2)) {
                        i += dcu.av(s);
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (U(obj, s, i2)) {
                        Object h3 = dfz.h(obj, D);
                        if (h3 instanceof dcl) {
                            i += dcu.H(s, (dcl) h3);
                            break;
                        } else {
                            i += dcu.Z(s, (String) h3);
                            break;
                        }
                    } else {
                        break;
                    }
                case 60:
                    if (U(obj, s, i2)) {
                        i += dfh.i(s, dfz.h(obj, D), G(i2));
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (U(obj, s, i2)) {
                        i += dcu.H(s, (dcl) dfz.h(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (U(obj, s, i2)) {
                        i += dcu.ac(s, t(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (U(obj, s, i2)) {
                        i += dcu.J(s, t(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (U(obj, s, i2)) {
                        i += dcu.aA(s);
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (U(obj, s, i2)) {
                        i += dcu.aB(s);
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (U(obj, s, i2)) {
                        i += dcu.V(s, t(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (U(obj, s, i2)) {
                        i += dcu.X(s, E(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (U(obj, s, i2)) {
                        i += dcu.K(s, (der) dfz.h(obj, D), G(i2));
                        break;
                    } else {
                        break;
                    }
            }
        }
        return i + ac(obj);
    }

    private final int s(int i) {
        return this.c[i];
    }

    private static int t(Object obj, long j) {
        return ((Integer) dfz.h(obj, j)).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    private final int u(Object obj, byte[] bArr, int i, int i2, int i3, long j, dca dcaVar) {
        Unsafe unsafe = b;
        Object H = H(i3);
        Object object = unsafe.getObject(obj, j);
        if (ev.W(object)) {
            Object Y = ev.Y();
            ev.X(Y, object);
            unsafe.putObject(obj, j, Y);
            object = Y;
        }
        dek U = ev.U(H);
        dem demVar = (dem) object;
        int F = hl.F(bArr, i, dcaVar);
        int i4 = dcaVar.a;
        if (i4 < 0 || i4 > i2 - F) {
            throw ddu.i();
        }
        int i5 = F + i4;
        Object obj2 = U.b;
        Object obj3 = U.d;
        while (F < i5) {
            int i6 = F + 1;
            byte b2 = bArr[F];
            if (b2 < 0) {
                i6 = hl.G(b2, bArr, i6, dcaVar);
                b2 = dcaVar.a;
            }
            int i7 = b2 & 7;
            switch (b2 >>> 3) {
                case 1:
                    dgc dgcVar = U.a;
                    if (i7 != dgcVar.t) {
                        F = hl.J(b2, bArr, i6, i2, dcaVar);
                        break;
                    } else {
                        F = W(bArr, i6, i2, dgcVar, null, dcaVar);
                        obj2 = dcaVar.c;
                        break;
                    }
                case 2:
                    dgc dgcVar2 = U.c;
                    if (i7 != dgcVar2.t) {
                        F = hl.J(b2, bArr, i6, i2, dcaVar);
                        break;
                    } else {
                        F = W(bArr, i6, i2, dgcVar2, U.d.getClass(), dcaVar);
                        obj3 = dcaVar.c;
                        break;
                    }
                default:
                    F = hl.J(b2, bArr, i6, i2, dcaVar);
                    break;
            }
        }
        if (F != i5) {
            throw ddu.g();
        }
        demVar.put(obj2, obj3);
        return i5;
    }

    private final int v(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, dca dcaVar) {
        Unsafe unsafe = b;
        long j2 = this.c[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Double.valueOf(hl.u(bArr, i)));
                    unsafe.putInt(obj, j2, i4);
                    return i + 8;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Float.valueOf(hl.v(bArr, i)));
                    unsafe.putInt(obj, j2, i4);
                    return i + 4;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int I = hl.I(bArr, i, dcaVar);
                    unsafe.putObject(obj, j, Long.valueOf(dcaVar.b));
                    unsafe.putInt(obj, j2, i4);
                    return I;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int F = hl.F(bArr, i, dcaVar);
                    unsafe.putObject(obj, j, Integer.valueOf(dcaVar.a));
                    unsafe.putInt(obj, j2, i4);
                    return F;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Long.valueOf(hl.K(bArr, i)));
                    unsafe.putInt(obj, j2, i4);
                    return i + 8;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Integer.valueOf(hl.x(bArr, i)));
                    unsafe.putInt(obj, j2, i4);
                    return i + 4;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int I2 = hl.I(bArr, i, dcaVar);
                    unsafe.putObject(obj, j, Boolean.valueOf(dcaVar.b != 0));
                    unsafe.putInt(obj, j2, i4);
                    return I2;
                }
                break;
            case 59:
                if (i5 == 2) {
                    int F2 = hl.F(bArr, i, dcaVar);
                    int i9 = dcaVar.a;
                    if (i9 == 0) {
                        unsafe.putObject(obj, j, "");
                    } else {
                        if ((i6 & 536870912) != 0 && !dgb.g(bArr, F2, F2 + i9)) {
                            throw ddu.d();
                        }
                        unsafe.putObject(obj, j, new String(bArr, F2, i9, dds.a));
                        F2 += i9;
                    }
                    unsafe.putInt(obj, j2, i4);
                    return F2;
                }
                break;
            case 60:
                if (i5 == 2) {
                    int z = hl.z(G(i8), bArr, i, i2, dcaVar);
                    Object object = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                    if (object == null) {
                        unsafe.putObject(obj, j, dcaVar.c);
                    } else {
                        unsafe.putObject(obj, j, dds.e(object, dcaVar.c));
                    }
                    unsafe.putInt(obj, j2, i4);
                    return z;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int w = hl.w(bArr, i, dcaVar);
                    unsafe.putObject(obj, j, dcaVar.c);
                    unsafe.putInt(obj, j2, i4);
                    return w;
                }
                break;
            case 63:
                if (i5 == 0) {
                    int F3 = hl.F(bArr, i, dcaVar);
                    int i10 = dcaVar.a;
                    ddo F4 = F(i8);
                    if (F4 == null || F4.a(i10)) {
                        unsafe.putObject(obj, j, Integer.valueOf(i10));
                        unsafe.putInt(obj, j2, i4);
                    } else {
                        d(obj).d(i3, Long.valueOf(i10));
                    }
                    return F3;
                }
                break;
            case 66:
                if (i5 == 0) {
                    int F5 = hl.F(bArr, i, dcaVar);
                    unsafe.putObject(obj, j, Integer.valueOf(dcp.F(dcaVar.a)));
                    unsafe.putInt(obj, j2, i4);
                    return F5;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int I3 = hl.I(bArr, i, dcaVar);
                    unsafe.putObject(obj, j, Long.valueOf(dcp.G(dcaVar.b)));
                    unsafe.putInt(obj, j2, i4);
                    return I3;
                }
                break;
            case 68:
                if (i5 == 3) {
                    int y = hl.y(G(i8), bArr, i, i2, (i3 & (-8)) | 4, dcaVar);
                    Object object2 = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(obj, j, dcaVar.c);
                    } else {
                        unsafe.putObject(obj, j, dds.e(object2, dcaVar.c));
                    }
                    unsafe.putInt(obj, j2, i4);
                    return y;
                }
                break;
        }
        return i;
    }

    private final int w(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, dca dcaVar) {
        int H;
        int i8 = i;
        Unsafe unsafe = b;
        ddr ddrVar = (ddr) unsafe.getObject(obj, j2);
        if (!ddrVar.c()) {
            int size = ddrVar.size();
            ddrVar = ddrVar.d(size == 0 ? 10 : size + size);
            unsafe.putObject(obj, j2, ddrVar);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    dcw dcwVar = (dcw) ddrVar;
                    int F = hl.F(bArr, i8, dcaVar);
                    int i9 = dcaVar.a + F;
                    while (F < i9) {
                        dcwVar.e(hl.u(bArr, F));
                        F += 8;
                    }
                    if (F == i9) {
                        return F;
                    }
                    throw ddu.i();
                }
                if (i5 == 1) {
                    dcw dcwVar2 = (dcw) ddrVar;
                    dcwVar2.e(hl.u(bArr, i));
                    int i10 = i8 + 8;
                    while (i10 < i2) {
                        int F2 = hl.F(bArr, i10, dcaVar);
                        if (i3 != dcaVar.a) {
                            return i10;
                        }
                        dcwVar2.e(hl.u(bArr, F2));
                        i10 = F2 + 8;
                    }
                    return i10;
                }
                break;
            case 19:
            case 36:
                if (i5 == 2) {
                    ddd dddVar = (ddd) ddrVar;
                    int F3 = hl.F(bArr, i8, dcaVar);
                    int i11 = dcaVar.a + F3;
                    while (F3 < i11) {
                        dddVar.e(hl.v(bArr, F3));
                        F3 += 4;
                    }
                    if (F3 == i11) {
                        return F3;
                    }
                    throw ddu.i();
                }
                if (i5 == 5) {
                    ddd dddVar2 = (ddd) ddrVar;
                    dddVar2.e(hl.v(bArr, i));
                    int i12 = i8 + 4;
                    while (i12 < i2) {
                        int F4 = hl.F(bArr, i12, dcaVar);
                        if (i3 != dcaVar.a) {
                            return i12;
                        }
                        dddVar2.e(hl.v(bArr, F4));
                        i12 = F4 + 4;
                    }
                    return i12;
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    deg degVar = (deg) ddrVar;
                    int F5 = hl.F(bArr, i8, dcaVar);
                    int i13 = dcaVar.a + F5;
                    while (F5 < i13) {
                        F5 = hl.I(bArr, F5, dcaVar);
                        degVar.e(dcaVar.b);
                    }
                    if (F5 == i13) {
                        return F5;
                    }
                    throw ddu.i();
                }
                if (i5 == 0) {
                    deg degVar2 = (deg) ddrVar;
                    int I = hl.I(bArr, i8, dcaVar);
                    degVar2.e(dcaVar.b);
                    while (I < i2) {
                        int F6 = hl.F(bArr, I, dcaVar);
                        if (i3 != dcaVar.a) {
                            return I;
                        }
                        I = hl.I(bArr, F6, dcaVar);
                        degVar2.e(dcaVar.b);
                    }
                    return I;
                }
                break;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return hl.B(bArr, i8, ddrVar, dcaVar);
                }
                if (i5 == 0) {
                    return hl.H(i3, bArr, i, i2, ddrVar, dcaVar);
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    deg degVar3 = (deg) ddrVar;
                    int F7 = hl.F(bArr, i8, dcaVar);
                    int i14 = dcaVar.a + F7;
                    while (F7 < i14) {
                        degVar3.e(hl.K(bArr, F7));
                        F7 += 8;
                    }
                    if (F7 == i14) {
                        return F7;
                    }
                    throw ddu.i();
                }
                if (i5 == 1) {
                    deg degVar4 = (deg) ddrVar;
                    degVar4.e(hl.K(bArr, i));
                    int i15 = i8 + 8;
                    while (i15 < i2) {
                        int F8 = hl.F(bArr, i15, dcaVar);
                        if (i3 != dcaVar.a) {
                            return i15;
                        }
                        degVar4.e(hl.K(bArr, F8));
                        i15 = F8 + 8;
                    }
                    return i15;
                }
                break;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    ddl ddlVar = (ddl) ddrVar;
                    int F9 = hl.F(bArr, i8, dcaVar);
                    int i16 = dcaVar.a + F9;
                    while (F9 < i16) {
                        ddlVar.g(hl.x(bArr, F9));
                        F9 += 4;
                    }
                    if (F9 == i16) {
                        return F9;
                    }
                    throw ddu.i();
                }
                if (i5 == 5) {
                    ddl ddlVar2 = (ddl) ddrVar;
                    ddlVar2.g(hl.x(bArr, i));
                    int i17 = i8 + 4;
                    while (i17 < i2) {
                        int F10 = hl.F(bArr, i17, dcaVar);
                        if (i3 != dcaVar.a) {
                            return i17;
                        }
                        ddlVar2.g(hl.x(bArr, F10));
                        i17 = F10 + 4;
                    }
                    return i17;
                }
                break;
            case 25:
            case 42:
                if (i5 == 2) {
                    dcd dcdVar = (dcd) ddrVar;
                    int F11 = hl.F(bArr, i8, dcaVar);
                    int i18 = dcaVar.a + F11;
                    while (F11 < i18) {
                        F11 = hl.I(bArr, F11, dcaVar);
                        dcdVar.e(dcaVar.b != 0);
                    }
                    if (F11 == i18) {
                        return F11;
                    }
                    throw ddu.i();
                }
                if (i5 == 0) {
                    dcd dcdVar2 = (dcd) ddrVar;
                    int I2 = hl.I(bArr, i8, dcaVar);
                    dcdVar2.e(dcaVar.b != 0);
                    while (I2 < i2) {
                        int F12 = hl.F(bArr, I2, dcaVar);
                        if (i3 != dcaVar.a) {
                            return I2;
                        }
                        I2 = hl.I(bArr, F12, dcaVar);
                        dcdVar2.e(dcaVar.b != 0);
                    }
                    return I2;
                }
                break;
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) == 0) {
                        i8 = hl.F(bArr, i8, dcaVar);
                        int i19 = dcaVar.a;
                        if (i19 < 0) {
                            throw ddu.f();
                        }
                        if (i19 == 0) {
                            ddrVar.add("");
                        } else {
                            ddrVar.add(new String(bArr, i8, i19, dds.a));
                            i8 += i19;
                        }
                        while (i8 < i2) {
                            int F13 = hl.F(bArr, i8, dcaVar);
                            if (i3 != dcaVar.a) {
                                break;
                            } else {
                                i8 = hl.F(bArr, F13, dcaVar);
                                int i20 = dcaVar.a;
                                if (i20 < 0) {
                                    throw ddu.f();
                                }
                                if (i20 == 0) {
                                    ddrVar.add("");
                                } else {
                                    ddrVar.add(new String(bArr, i8, i20, dds.a));
                                    i8 += i20;
                                }
                            }
                        }
                        break;
                    } else {
                        i8 = hl.F(bArr, i8, dcaVar);
                        int i21 = dcaVar.a;
                        if (i21 < 0) {
                            throw ddu.f();
                        }
                        if (i21 == 0) {
                            ddrVar.add("");
                        } else {
                            int i22 = i8 + i21;
                            if (!dgb.g(bArr, i8, i22)) {
                                throw ddu.d();
                            }
                            ddrVar.add(new String(bArr, i8, i21, dds.a));
                            i8 = i22;
                        }
                        while (i8 < i2) {
                            int F14 = hl.F(bArr, i8, dcaVar);
                            if (i3 != dcaVar.a) {
                                break;
                            } else {
                                i8 = hl.F(bArr, F14, dcaVar);
                                int i23 = dcaVar.a;
                                if (i23 < 0) {
                                    throw ddu.f();
                                }
                                if (i23 == 0) {
                                    ddrVar.add("");
                                } else {
                                    int i24 = i8 + i23;
                                    if (!dgb.g(bArr, i8, i24)) {
                                        throw ddu.d();
                                    }
                                    ddrVar.add(new String(bArr, i8, i23, dds.a));
                                    i8 = i24;
                                }
                            }
                        }
                        break;
                    }
                }
                break;
            case 27:
                if (i5 == 2) {
                    return hl.A(G(i6), i3, bArr, i, i2, ddrVar, dcaVar);
                }
                break;
            case 28:
                if (i5 == 2) {
                    int F15 = hl.F(bArr, i8, dcaVar);
                    int i25 = dcaVar.a;
                    if (i25 < 0) {
                        throw ddu.f();
                    }
                    if (i25 > bArr.length - F15) {
                        throw ddu.i();
                    }
                    if (i25 == 0) {
                        ddrVar.add(dcl.b);
                    } else {
                        ddrVar.add(dcl.u(bArr, F15, i25));
                        F15 += i25;
                    }
                    while (F15 < i2) {
                        int F16 = hl.F(bArr, F15, dcaVar);
                        if (i3 != dcaVar.a) {
                            return F15;
                        }
                        F15 = hl.F(bArr, F16, dcaVar);
                        int i26 = dcaVar.a;
                        if (i26 < 0) {
                            throw ddu.f();
                        }
                        if (i26 > bArr.length - F15) {
                            throw ddu.i();
                        }
                        if (i26 == 0) {
                            ddrVar.add(dcl.b);
                        } else {
                            ddrVar.add(dcl.u(bArr, F15, i26));
                            F15 += i26;
                        }
                    }
                    return F15;
                }
                break;
            case 30:
            case 44:
                if (i5 == 2) {
                    H = hl.B(bArr, i8, ddrVar, dcaVar);
                } else if (i5 == 0) {
                    H = hl.H(i3, bArr, i, i2, ddrVar, dcaVar);
                }
                ddk ddkVar = (ddk) obj;
                dfr dfrVar = ddkVar.s;
                if (dfrVar == dfr.a) {
                    dfrVar = null;
                }
                Object X = dfh.X(i4, ddrVar, F(i6), dfrVar);
                if (X == null) {
                    return H;
                }
                ddkVar.s = (dfr) X;
                return H;
            case 33:
            case 47:
                if (i5 == 2) {
                    ddl ddlVar3 = (ddl) ddrVar;
                    int F17 = hl.F(bArr, i8, dcaVar);
                    int i27 = dcaVar.a + F17;
                    while (F17 < i27) {
                        F17 = hl.F(bArr, F17, dcaVar);
                        ddlVar3.g(dcp.F(dcaVar.a));
                    }
                    if (F17 == i27) {
                        return F17;
                    }
                    throw ddu.i();
                }
                if (i5 == 0) {
                    ddl ddlVar4 = (ddl) ddrVar;
                    int F18 = hl.F(bArr, i8, dcaVar);
                    ddlVar4.g(dcp.F(dcaVar.a));
                    while (F18 < i2) {
                        int F19 = hl.F(bArr, F18, dcaVar);
                        if (i3 != dcaVar.a) {
                            return F18;
                        }
                        F18 = hl.F(bArr, F19, dcaVar);
                        ddlVar4.g(dcp.F(dcaVar.a));
                    }
                    return F18;
                }
                break;
            case 34:
            case 48:
                if (i5 == 2) {
                    deg degVar5 = (deg) ddrVar;
                    int F20 = hl.F(bArr, i8, dcaVar);
                    int i28 = dcaVar.a + F20;
                    while (F20 < i28) {
                        F20 = hl.I(bArr, F20, dcaVar);
                        degVar5.e(dcp.G(dcaVar.b));
                    }
                    if (F20 == i28) {
                        return F20;
                    }
                    throw ddu.i();
                }
                if (i5 == 0) {
                    deg degVar6 = (deg) ddrVar;
                    int I3 = hl.I(bArr, i8, dcaVar);
                    degVar6.e(dcp.G(dcaVar.b));
                    while (I3 < i2) {
                        int F21 = hl.F(bArr, I3, dcaVar);
                        if (i3 != dcaVar.a) {
                            return I3;
                        }
                        I3 = hl.I(bArr, F21, dcaVar);
                        degVar6.e(dcp.G(dcaVar.b));
                    }
                    return I3;
                }
                break;
            default:
                if (i5 == 3) {
                    dfg G = G(i6);
                    int i29 = (i3 & (-8)) | 4;
                    int y = hl.y(G, bArr, i, i2, i29, dcaVar);
                    ddrVar.add(dcaVar.c);
                    while (y < i2) {
                        int F22 = hl.F(bArr, y, dcaVar);
                        if (i3 != dcaVar.a) {
                            return y;
                        }
                        y = hl.y(G, bArr, F22, i2, i29, dcaVar);
                        ddrVar.add(dcaVar.c);
                    }
                    return y;
                }
                break;
        }
        return i8;
    }

    private final int x(int i) {
        if (i < this.e || i > this.f) {
            return -1;
        }
        return A(i, 0);
    }

    private final int y(int i, int i2) {
        if (i < this.e || i > this.f) {
            return -1;
        }
        return A(i, i2);
    }

    private final int z(int i) {
        return this.c[i + 2];
    }

    @Override // defpackage.dfg
    public final int a(Object obj) {
        return this.j ? r(obj) : q(obj);
    }

    @Override // defpackage.dfg
    public final int b(Object obj) {
        int length = this.c.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2 += 3) {
            int C = C(i2);
            int s = s(i2);
            long D = D(C);
            switch (B(C)) {
                case 0:
                    i = (i * 53) + dds.c(Double.doubleToLongBits(dfz.b(obj, D)));
                    break;
                case 1:
                    i = (i * 53) + Float.floatToIntBits(dfz.c(obj, D));
                    break;
                case 2:
                    i = (i * 53) + dds.c(dfz.f(obj, D));
                    break;
                case 3:
                    i = (i * 53) + dds.c(dfz.f(obj, D));
                    break;
                case 4:
                    i = (i * 53) + dfz.d(obj, D);
                    break;
                case 5:
                    i = (i * 53) + dds.c(dfz.f(obj, D));
                    break;
                case 6:
                    i = (i * 53) + dfz.d(obj, D);
                    break;
                case 7:
                    i = (i * 53) + dds.a(dfz.w(obj, D));
                    break;
                case 8:
                    i = (i * 53) + ((String) dfz.h(obj, D)).hashCode();
                    break;
                case 9:
                    Object h = dfz.h(obj, D);
                    i = (i * 53) + (h != null ? h.hashCode() : 37);
                    break;
                case 10:
                    i = (i * 53) + dfz.h(obj, D).hashCode();
                    break;
                case 11:
                    i = (i * 53) + dfz.d(obj, D);
                    break;
                case 12:
                    i = (i * 53) + dfz.d(obj, D);
                    break;
                case 13:
                    i = (i * 53) + dfz.d(obj, D);
                    break;
                case 14:
                    i = (i * 53) + dds.c(dfz.f(obj, D));
                    break;
                case 15:
                    i = (i * 53) + dfz.d(obj, D);
                    break;
                case 16:
                    i = (i * 53) + dds.c(dfz.f(obj, D));
                    break;
                case 17:
                    Object h2 = dfz.h(obj, D);
                    i = (i * 53) + (h2 != null ? h2.hashCode() : 37);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = (i * 53) + dfz.h(obj, D).hashCode();
                    break;
                case 50:
                    i = (i * 53) + dfz.h(obj, D).hashCode();
                    break;
                case 51:
                    if (U(obj, s, i2)) {
                        i = (i * 53) + dds.c(Double.doubleToLongBits(o(obj, D)));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (U(obj, s, i2)) {
                        i = (i * 53) + Float.floatToIntBits(p(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (U(obj, s, i2)) {
                        i = (i * 53) + dds.c(E(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (U(obj, s, i2)) {
                        i = (i * 53) + dds.c(E(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (U(obj, s, i2)) {
                        i = (i * 53) + t(obj, D);
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (U(obj, s, i2)) {
                        i = (i * 53) + dds.c(E(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (U(obj, s, i2)) {
                        i = (i * 53) + t(obj, D);
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (U(obj, s, i2)) {
                        i = (i * 53) + dds.a(V(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (U(obj, s, i2)) {
                        i = (i * 53) + ((String) dfz.h(obj, D)).hashCode();
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (U(obj, s, i2)) {
                        i = (i * 53) + dfz.h(obj, D).hashCode();
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (U(obj, s, i2)) {
                        i = (i * 53) + dfz.h(obj, D).hashCode();
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (U(obj, s, i2)) {
                        i = (i * 53) + t(obj, D);
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (U(obj, s, i2)) {
                        i = (i * 53) + t(obj, D);
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (U(obj, s, i2)) {
                        i = (i * 53) + t(obj, D);
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (U(obj, s, i2)) {
                        i = (i * 53) + dds.c(E(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (U(obj, s, i2)) {
                        i = (i * 53) + t(obj, D);
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (U(obj, s, i2)) {
                        i = (i * 53) + dds.c(E(obj, D));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (U(obj, s, i2)) {
                        i = (i * 53) + dfz.h(obj, D).hashCode();
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i * 53) + ev.M(obj).hashCode();
        return this.h ? (hashCode * 53) + hl.o(obj).hashCode() : hashCode;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0679, code lost:
    
        if (r2 == 1048575) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x067b, code lost:
    
        r29.putInt(r13, r2, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0681, code lost:
    
        r2 = r9.l;
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0687, code lost:
    
        if (r2 >= r9.m) goto L297;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0689, code lost:
    
        r3 = r9.ab(r13, r9.k[r2], r3);
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0694, code lost:
    
        if (r3 == null) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0696, code lost:
    
        defpackage.ev.N(r13, (defpackage.dfr) r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x069b, code lost:
    
        if (r7 != 0) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x069d, code lost:
    
        if (r0 != r6) goto L201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x06a4, code lost:
    
        throw defpackage.ddu.g();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x06a9, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x06a5, code lost:
    
        if (r0 > r6) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x06a7, code lost:
    
        if (r1 != r7) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x06af, code lost:
    
        throw defpackage.ddu.g();
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x063d  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0494  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int c(Object obj, byte[] bArr, int i, int i2, int i3, dca dcaVar) {
        Unsafe unsafe;
        int i4;
        int i5;
        Object obj2;
        det detVar;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        Object obj3;
        byte[] bArr2;
        dca dcaVar2;
        int i14;
        int i15;
        int i16;
        Object obj4;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        det detVar2 = this;
        Object obj5 = obj;
        byte[] bArr3 = bArr;
        int i25 = i2;
        int i26 = i3;
        dca dcaVar3 = dcaVar;
        Unsafe unsafe2 = b;
        int i27 = i;
        int i28 = 0;
        int i29 = -1;
        int i30 = 0;
        int i31 = 0;
        int i32 = 1048575;
        while (true) {
            if (i27 < i25) {
                int i33 = i27 + 1;
                byte b2 = bArr3[i27];
                if (b2 < 0) {
                    int G = hl.G(b2, bArr3, i33, dcaVar3);
                    i7 = dcaVar3.a;
                    i33 = G;
                } else {
                    i7 = b2;
                }
                int i34 = i7 >>> 3;
                int i35 = i7 & 7;
                int y = i34 > i29 ? detVar2.y(i34, i30 / 3) : detVar2.x(i34);
                if (y == -1) {
                    i8 = i34;
                    i9 = i33;
                    i10 = i7;
                    i11 = i31;
                    unsafe = unsafe2;
                    i12 = 0;
                } else {
                    int i36 = detVar2.c[y + 1];
                    int B = B(i36);
                    i8 = i34;
                    int i37 = i33;
                    long D = D(i36);
                    if (B <= 17) {
                        int i38 = detVar2.c[y + 2];
                        int i39 = 1 << (i38 >>> 20);
                        int i40 = i38 & 1048575;
                        if (i40 != i32) {
                            if (i32 != 1048575) {
                                i17 = y;
                                unsafe2.putInt(obj5, i32, i31);
                            } else {
                                i17 = y;
                            }
                            i18 = i40;
                            i19 = unsafe2.getInt(obj5, i40);
                        } else {
                            i17 = y;
                            i18 = i32;
                            i19 = i31;
                        }
                        switch (B) {
                            case 0:
                                i20 = i7;
                                i21 = i17;
                                i22 = i37;
                                if (i35 != 1) {
                                    i8 = i8;
                                    i9 = i22;
                                    i11 = i19;
                                    i12 = i21;
                                    unsafe = unsafe2;
                                    i10 = i20;
                                    i32 = i18;
                                    break;
                                } else {
                                    dfz.q(obj5, D, hl.u(bArr3, i22));
                                    i27 = i22 + 8;
                                    i31 = i19 | i39;
                                    i30 = i21;
                                    i28 = i20;
                                    i29 = i8;
                                    i32 = i18;
                                    i25 = i2;
                                    i26 = i3;
                                    break;
                                }
                            case 1:
                                i20 = i7;
                                i21 = i17;
                                i22 = i37;
                                if (i35 != 5) {
                                    i8 = i8;
                                    i9 = i22;
                                    i11 = i19;
                                    i12 = i21;
                                    unsafe = unsafe2;
                                    i10 = i20;
                                    i32 = i18;
                                    break;
                                } else {
                                    dfz.r(obj5, D, hl.v(bArr3, i22));
                                    i27 = i22 + 4;
                                    i31 = i19 | i39;
                                    i30 = i21;
                                    i28 = i20;
                                    i29 = i8;
                                    i32 = i18;
                                    i25 = i2;
                                    i26 = i3;
                                    break;
                                }
                            case 2:
                            case 3:
                                i20 = i7;
                                i21 = i17;
                                i22 = i37;
                                if (i35 != 0) {
                                    i8 = i8;
                                    i9 = i22;
                                    i11 = i19;
                                    i12 = i21;
                                    unsafe = unsafe2;
                                    i10 = i20;
                                    i32 = i18;
                                    break;
                                } else {
                                    int I = hl.I(bArr3, i22, dcaVar3);
                                    unsafe2.putLong(obj, D, dcaVar3.b);
                                    i31 = i19 | i39;
                                    i27 = I;
                                    i30 = i21;
                                    i28 = i20;
                                    i29 = i8;
                                    i32 = i18;
                                    i25 = i2;
                                    i26 = i3;
                                    break;
                                }
                            case 4:
                            case 11:
                                i20 = i7;
                                i21 = i17;
                                i22 = i37;
                                if (i35 != 0) {
                                    i8 = i8;
                                    i9 = i22;
                                    i11 = i19;
                                    i12 = i21;
                                    unsafe = unsafe2;
                                    i10 = i20;
                                    i32 = i18;
                                    break;
                                } else {
                                    i27 = hl.F(bArr3, i22, dcaVar3);
                                    unsafe2.putInt(obj5, D, dcaVar3.a);
                                    i31 = i19 | i39;
                                    i30 = i21;
                                    i28 = i20;
                                    i29 = i8;
                                    i32 = i18;
                                    i25 = i2;
                                    i26 = i3;
                                    break;
                                }
                            case 5:
                            case 14:
                                i20 = i7;
                                i21 = i17;
                                if (i35 != 1) {
                                    i22 = i37;
                                    i8 = i8;
                                    i9 = i22;
                                    i11 = i19;
                                    i12 = i21;
                                    unsafe = unsafe2;
                                    i10 = i20;
                                    i32 = i18;
                                    break;
                                } else {
                                    unsafe2.putLong(obj, D, hl.K(bArr3, i37));
                                    i27 = i37 + 8;
                                    i31 = i19 | i39;
                                    i30 = i21;
                                    i28 = i20;
                                    i29 = i8;
                                    i32 = i18;
                                    i25 = i2;
                                    i26 = i3;
                                    break;
                                }
                            case 6:
                            case 13:
                                i20 = i7;
                                i21 = i17;
                                if (i35 != 5) {
                                    i8 = i8;
                                    i22 = i37;
                                    i9 = i22;
                                    i11 = i19;
                                    i12 = i21;
                                    unsafe = unsafe2;
                                    i10 = i20;
                                    i32 = i18;
                                    break;
                                } else {
                                    unsafe2.putInt(obj5, D, hl.x(bArr3, i37));
                                    i27 = i37 + 4;
                                    i31 = i19 | i39;
                                    i29 = i8;
                                    i30 = i21;
                                    i28 = i20;
                                    i32 = i18;
                                    i26 = i3;
                                    break;
                                }
                            case 7:
                                i20 = i7;
                                i21 = i17;
                                if (i35 != 0) {
                                    i8 = i8;
                                    i22 = i37;
                                    i9 = i22;
                                    i11 = i19;
                                    i12 = i21;
                                    unsafe = unsafe2;
                                    i10 = i20;
                                    i32 = i18;
                                    break;
                                } else {
                                    int I2 = hl.I(bArr3, i37, dcaVar3);
                                    dfz.m(obj5, D, dcaVar3.b != 0);
                                    i31 = i19 | i39;
                                    i27 = I2;
                                    i29 = i8;
                                    i30 = i21;
                                    i28 = i20;
                                    i32 = i18;
                                    i26 = i3;
                                    break;
                                }
                            case 8:
                                i20 = i7;
                                i21 = i17;
                                if (i35 != 2) {
                                    i8 = i8;
                                    i22 = i37;
                                    i9 = i22;
                                    i11 = i19;
                                    i12 = i21;
                                    unsafe = unsafe2;
                                    i10 = i20;
                                    i32 = i18;
                                    break;
                                } else {
                                    i27 = (i36 & 536870912) == 0 ? hl.C(bArr3, i37, dcaVar3) : hl.D(bArr3, i37, dcaVar3);
                                    unsafe2.putObject(obj5, D, dcaVar3.c);
                                    i31 = i19 | i39;
                                    i29 = i8;
                                    i30 = i21;
                                    i28 = i20;
                                    i32 = i18;
                                    i26 = i3;
                                    break;
                                }
                            case 9:
                                i20 = i7;
                                i21 = i17;
                                if (i35 != 2) {
                                    i22 = i37;
                                    i9 = i22;
                                    i11 = i19;
                                    i12 = i21;
                                    unsafe = unsafe2;
                                    i10 = i20;
                                    i32 = i18;
                                    break;
                                } else {
                                    i27 = hl.z(detVar2.G(i21), bArr3, i37, i25, dcaVar3);
                                    if ((i19 & i39) == 0) {
                                        unsafe2.putObject(obj5, D, dcaVar3.c);
                                    } else {
                                        unsafe2.putObject(obj5, D, dds.e(unsafe2.getObject(obj5, D), dcaVar3.c));
                                    }
                                    i31 = i19 | i39;
                                    i30 = i21;
                                    i28 = i20;
                                    i29 = i8;
                                    i32 = i18;
                                    i26 = i3;
                                    break;
                                }
                            case 10:
                                i20 = i7;
                                i21 = i17;
                                if (i35 != 2) {
                                    i22 = i37;
                                    i9 = i22;
                                    i11 = i19;
                                    i12 = i21;
                                    unsafe = unsafe2;
                                    i10 = i20;
                                    i32 = i18;
                                    break;
                                } else {
                                    i27 = hl.w(bArr3, i37, dcaVar3);
                                    unsafe2.putObject(obj5, D, dcaVar3.c);
                                    i31 = i19 | i39;
                                    i30 = i21;
                                    i28 = i20;
                                    i29 = i8;
                                    i32 = i18;
                                    i26 = i3;
                                    break;
                                }
                            case 12:
                                i20 = i7;
                                i21 = i17;
                                if (i35 != 0) {
                                    i22 = i37;
                                    i9 = i22;
                                    i11 = i19;
                                    i12 = i21;
                                    unsafe = unsafe2;
                                    i10 = i20;
                                    i32 = i18;
                                    break;
                                } else {
                                    i27 = hl.F(bArr3, i37, dcaVar3);
                                    int i41 = dcaVar3.a;
                                    ddo F = detVar2.F(i21);
                                    if (F != null && !F.a(i41)) {
                                        d(obj).d(i20, Long.valueOf(i41));
                                        i31 = i19;
                                        i30 = i21;
                                        i28 = i20;
                                        i29 = i8;
                                        i32 = i18;
                                        i26 = i3;
                                        break;
                                    } else {
                                        unsafe2.putInt(obj5, D, i41);
                                        i31 = i19 | i39;
                                        i30 = i21;
                                        i28 = i20;
                                        i29 = i8;
                                        i32 = i18;
                                        i26 = i3;
                                        break;
                                    }
                                }
                                break;
                            case 15:
                                i20 = i7;
                                i21 = i17;
                                if (i35 != 0) {
                                    i22 = i37;
                                    i9 = i22;
                                    i11 = i19;
                                    i12 = i21;
                                    unsafe = unsafe2;
                                    i10 = i20;
                                    i32 = i18;
                                    break;
                                } else {
                                    i27 = hl.F(bArr3, i37, dcaVar3);
                                    unsafe2.putInt(obj5, D, dcp.F(dcaVar3.a));
                                    i31 = i19 | i39;
                                    i30 = i21;
                                    i28 = i20;
                                    i29 = i8;
                                    i32 = i18;
                                    i26 = i3;
                                    break;
                                }
                            case 16:
                                if (i35 != 0) {
                                    i20 = i7;
                                    i21 = i17;
                                    i22 = i37;
                                    i9 = i22;
                                    i11 = i19;
                                    i12 = i21;
                                    unsafe = unsafe2;
                                    i10 = i20;
                                    i32 = i18;
                                    break;
                                } else {
                                    int I3 = hl.I(bArr3, i37, dcaVar3);
                                    unsafe2.putLong(obj, D, dcp.G(dcaVar3.b));
                                    i31 = i19 | i39;
                                    i27 = I3;
                                    i30 = i17;
                                    i28 = i7;
                                    i29 = i8;
                                    i32 = i18;
                                    i26 = i3;
                                    break;
                                }
                            default:
                                i20 = i7;
                                i21 = i17;
                                i22 = i37;
                                if (i35 != 3) {
                                    i8 = i8;
                                    i9 = i22;
                                    i11 = i19;
                                    i12 = i21;
                                    unsafe = unsafe2;
                                    i10 = i20;
                                    i32 = i18;
                                    break;
                                } else {
                                    i27 = hl.y(detVar2.G(i21), bArr, i22, i2, (i8 << 3) | 4, dcaVar);
                                    if ((i19 & i39) == 0) {
                                        unsafe2.putObject(obj5, D, dcaVar3.c);
                                    } else {
                                        unsafe2.putObject(obj5, D, dds.e(unsafe2.getObject(obj5, D), dcaVar3.c));
                                    }
                                    i31 = i19 | i39;
                                    bArr3 = bArr;
                                    i25 = i2;
                                    i30 = i21;
                                    i28 = i20;
                                    i29 = i8;
                                    i32 = i18;
                                    i26 = i3;
                                    break;
                                }
                        }
                    } else {
                        int i42 = i7;
                        int i43 = y;
                        if (B != 27) {
                            i11 = i31;
                            i23 = i32;
                            if (B <= 49) {
                                i12 = i43;
                                unsafe = unsafe2;
                                i10 = i42;
                                i27 = w(obj, bArr, i37, i2, i42, i8, i35, i43, i36, B, D, dcaVar);
                                if (i27 != i37) {
                                    detVar2 = this;
                                    obj5 = obj;
                                    bArr3 = bArr;
                                    i25 = i2;
                                    i26 = i3;
                                    dcaVar3 = dcaVar;
                                    i30 = i12;
                                    i31 = i11;
                                    i29 = i8;
                                    i28 = i10;
                                    i32 = i23;
                                    unsafe2 = unsafe;
                                } else {
                                    i9 = i27;
                                    i32 = i23;
                                }
                            } else {
                                i24 = i37;
                                i12 = i43;
                                unsafe = unsafe2;
                                i10 = i42;
                                if (B != 50) {
                                    i27 = v(obj, bArr, i24, i2, i10, i8, i35, i36, B, D, i12, dcaVar);
                                    if (i27 != i24) {
                                        detVar2 = this;
                                        obj5 = obj;
                                        bArr3 = bArr;
                                        i25 = i2;
                                        i26 = i3;
                                        dcaVar3 = dcaVar;
                                        i30 = i12;
                                        i31 = i11;
                                        i29 = i8;
                                        i28 = i10;
                                        i32 = i23;
                                        unsafe2 = unsafe;
                                    } else {
                                        i9 = i27;
                                        i32 = i23;
                                    }
                                } else if (i35 == 2) {
                                    i27 = u(obj, bArr, i24, i2, i12, D, dcaVar);
                                    if (i27 != i24) {
                                        detVar2 = this;
                                        obj5 = obj;
                                        bArr3 = bArr;
                                        i25 = i2;
                                        i26 = i3;
                                        dcaVar3 = dcaVar;
                                        i30 = i12;
                                        i31 = i11;
                                        i29 = i8;
                                        i28 = i10;
                                        i32 = i23;
                                        unsafe2 = unsafe;
                                    } else {
                                        i9 = i27;
                                        i32 = i23;
                                    }
                                } else {
                                    i9 = i24;
                                    i32 = i23;
                                }
                            }
                        } else if (i35 == 2) {
                            ddr ddrVar = (ddr) unsafe2.getObject(obj5, D);
                            if (!ddrVar.c()) {
                                int size = ddrVar.size();
                                ddrVar = ddrVar.d(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj5, D, ddrVar);
                            }
                            i28 = i42;
                            i27 = hl.A(detVar2.G(i43), i28, bArr, i37, i2, ddrVar, dcaVar);
                            bArr3 = bArr;
                            i25 = i2;
                            i30 = i43;
                            i31 = i31;
                            i29 = i8;
                            i32 = i32;
                            i26 = i3;
                        } else {
                            i11 = i31;
                            i23 = i32;
                            i24 = i37;
                            i12 = i43;
                            unsafe = unsafe2;
                            i10 = i42;
                            i9 = i24;
                            i32 = i23;
                        }
                        i4 = i3;
                        i13 = i10;
                        if (i13 == i4 || i4 == 0) {
                            if (this.h) {
                                obj3 = obj;
                                bArr2 = bArr;
                                dcaVar2 = dcaVar;
                                i14 = i32;
                                i15 = i8;
                                i16 = i2;
                            } else {
                                dcaVar2 = dcaVar;
                                if (dcaVar2.d != dcz.a()) {
                                    i15 = i8;
                                    dcx c = dcaVar2.d.c(this.g, i15);
                                    if (c == null) {
                                        i27 = hl.E(i13, bArr, i9, i2, d(obj), dcaVar);
                                        obj3 = obj;
                                        bArr2 = bArr;
                                        i14 = i32;
                                        i16 = i2;
                                    } else {
                                        obj3 = obj;
                                        ddi ddiVar = (ddi) obj3;
                                        ddiVar.c();
                                        ddb ddbVar = ddiVar.d;
                                        if (c.a() == dgc.ENUM) {
                                            hl.F(bArr, i9, dcaVar2);
                                            throw null;
                                        }
                                        switch (c.a()) {
                                            case DOUBLE:
                                                bArr2 = bArr;
                                                i14 = i32;
                                                i16 = i2;
                                                Double valueOf = Double.valueOf(hl.u(bArr2, i9));
                                                i9 += 8;
                                                obj4 = valueOf;
                                                break;
                                            case FLOAT:
                                                bArr2 = bArr;
                                                i14 = i32;
                                                i16 = i2;
                                                Float valueOf2 = Float.valueOf(hl.v(bArr2, i9));
                                                i9 += 4;
                                                obj4 = valueOf2;
                                                break;
                                            case INT64:
                                            case UINT64:
                                                bArr2 = bArr;
                                                i14 = i32;
                                                i16 = i2;
                                                i9 = hl.I(bArr2, i9, dcaVar2);
                                                obj4 = Long.valueOf(dcaVar2.b);
                                                break;
                                            case INT32:
                                            case UINT32:
                                                bArr2 = bArr;
                                                i14 = i32;
                                                i16 = i2;
                                                i9 = hl.F(bArr2, i9, dcaVar2);
                                                obj4 = Integer.valueOf(dcaVar2.a);
                                                break;
                                            case FIXED64:
                                            case SFIXED64:
                                                bArr2 = bArr;
                                                i14 = i32;
                                                i16 = i2;
                                                Long valueOf3 = Long.valueOf(hl.K(bArr2, i9));
                                                i9 += 8;
                                                obj4 = valueOf3;
                                                break;
                                            case FIXED32:
                                            case SFIXED32:
                                                bArr2 = bArr;
                                                i14 = i32;
                                                i16 = i2;
                                                Integer valueOf4 = Integer.valueOf(hl.x(bArr2, i9));
                                                i9 += 4;
                                                obj4 = valueOf4;
                                                break;
                                            case BOOL:
                                                bArr2 = bArr;
                                                i14 = i32;
                                                i16 = i2;
                                                i9 = hl.I(bArr2, i9, dcaVar2);
                                                obj4 = Boolean.valueOf(dcaVar2.b != 0);
                                                break;
                                            case STRING:
                                                bArr2 = bArr;
                                                i14 = i32;
                                                i16 = i2;
                                                i9 = hl.C(bArr2, i9, dcaVar2);
                                                obj4 = dcaVar2.c;
                                                break;
                                            case GROUP:
                                                bArr2 = bArr;
                                                i14 = i32;
                                                i16 = i2;
                                                i9 = hl.y(dez.a.a(c.c.getClass()), bArr, i9, i2, (i15 << 3) | 4, dcaVar);
                                                obj4 = dcaVar2.c;
                                                break;
                                            case MESSAGE:
                                                bArr2 = bArr;
                                                i9 = hl.z(dez.a.a(c.c.getClass()), bArr2, i9, i2, dcaVar2);
                                                obj4 = dcaVar2.c;
                                                i14 = i32;
                                                i16 = i2;
                                                break;
                                            case BYTES:
                                                bArr2 = bArr;
                                                i9 = hl.w(bArr2, i9, dcaVar2);
                                                obj4 = dcaVar2.c;
                                                i14 = i32;
                                                i16 = i2;
                                                break;
                                            case ENUM:
                                                throw new IllegalStateException("Shouldn't reach here.");
                                            case SINT32:
                                                bArr2 = bArr;
                                                i9 = hl.F(bArr2, i9, dcaVar2);
                                                i14 = i32;
                                                obj4 = Integer.valueOf(dcp.F(dcaVar2.a));
                                                i16 = i2;
                                                break;
                                            case SINT64:
                                                bArr2 = bArr;
                                                i9 = hl.I(bArr2, i9, dcaVar2);
                                                i14 = i32;
                                                obj4 = Long.valueOf(dcp.G(dcaVar2.b));
                                                i16 = i2;
                                                break;
                                            default:
                                                bArr2 = bArr;
                                                i14 = i32;
                                                i16 = i2;
                                                obj4 = null;
                                                break;
                                        }
                                        c.b();
                                        switch (c.a().ordinal()) {
                                            case 9:
                                            case 10:
                                                Object k = ddbVar.k(c.d);
                                                if (k != null) {
                                                    obj4 = dds.e(k, obj4);
                                                    break;
                                                }
                                                break;
                                        }
                                        ddbVar.l(c.d, obj4);
                                        i27 = i9;
                                    }
                                    i28 = i13;
                                    i29 = i15;
                                    obj5 = obj3;
                                    bArr3 = bArr2;
                                    i30 = i12;
                                    i31 = i11;
                                    i25 = i16;
                                    i26 = i4;
                                    detVar2 = this;
                                    dcaVar3 = dcaVar2;
                                    unsafe2 = unsafe;
                                    i32 = i14;
                                } else {
                                    obj3 = obj;
                                    bArr2 = bArr;
                                    i14 = i32;
                                    i15 = i8;
                                    i16 = i2;
                                }
                            }
                            i27 = hl.E(i13, bArr, i9, i2, d(obj), dcaVar);
                            i28 = i13;
                            i29 = i15;
                            obj5 = obj3;
                            bArr3 = bArr2;
                            i30 = i12;
                            i31 = i11;
                            i25 = i16;
                            i26 = i4;
                            detVar2 = this;
                            dcaVar3 = dcaVar2;
                            unsafe2 = unsafe;
                            i32 = i14;
                        } else {
                            detVar = this;
                            obj2 = obj;
                            i27 = i9;
                            i6 = i32;
                            i28 = i13;
                            i31 = i11;
                            i5 = i2;
                        }
                    }
                }
                i4 = i3;
                i13 = i10;
                if (i13 == i4) {
                }
                if (this.h) {
                }
                i27 = hl.E(i13, bArr, i9, i2, d(obj), dcaVar);
                i28 = i13;
                i29 = i15;
                obj5 = obj3;
                bArr3 = bArr2;
                i30 = i12;
                i31 = i11;
                i25 = i16;
                i26 = i4;
                detVar2 = this;
                dcaVar3 = dcaVar2;
                unsafe2 = unsafe;
                i32 = i14;
            } else {
                int i44 = i32;
                unsafe = unsafe2;
                i4 = i26;
                i5 = i25;
                obj2 = obj5;
                detVar = detVar2;
                i6 = i44;
            }
        }
    }

    @Override // defpackage.dfg
    public final Object e() {
        return ((ddk) this.g).E(4);
    }

    @Override // defpackage.dfg
    public final void f(Object obj) {
        int i;
        int i2 = this.l;
        while (true) {
            i = this.m;
            if (i2 >= i) {
                break;
            }
            long D = D(C(this.k[i2]));
            Object h = dfz.h(obj, D);
            if (h != null) {
                ((dem) h).c();
                dfz.u(obj, D, h);
            }
            i2++;
        }
        int length = this.k.length;
        while (i < length) {
            this.n.c(obj, this.k[i]);
            i++;
        }
        ev.P(obj);
        if (this.h) {
            hl.s(obj);
        }
    }

    @Override // defpackage.dfg
    public final void g(Object obj, Object obj2) {
        if (obj2 == null) {
            throw null;
        }
        for (int i = 0; i < this.c.length; i += 3) {
            int C = C(i);
            long D = D(C);
            int s = s(i);
            switch (B(C)) {
                case 0:
                    if (R(obj2, i)) {
                        dfz.q(obj, D, dfz.b(obj2, D));
                        N(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (R(obj2, i)) {
                        dfz.r(obj, D, dfz.c(obj2, D));
                        N(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (R(obj2, i)) {
                        dfz.t(obj, D, dfz.f(obj2, D));
                        N(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (R(obj2, i)) {
                        dfz.t(obj, D, dfz.f(obj2, D));
                        N(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (R(obj2, i)) {
                        dfz.s(obj, D, dfz.d(obj2, D));
                        N(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (R(obj2, i)) {
                        dfz.t(obj, D, dfz.f(obj2, D));
                        N(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (R(obj2, i)) {
                        dfz.s(obj, D, dfz.d(obj2, D));
                        N(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (R(obj2, i)) {
                        dfz.m(obj, D, dfz.w(obj2, D));
                        N(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (R(obj2, i)) {
                        dfz.u(obj, D, dfz.h(obj2, D));
                        N(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    K(obj, obj2, i);
                    break;
                case 10:
                    if (R(obj2, i)) {
                        dfz.u(obj, D, dfz.h(obj2, D));
                        N(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (R(obj2, i)) {
                        dfz.s(obj, D, dfz.d(obj2, D));
                        N(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (R(obj2, i)) {
                        dfz.s(obj, D, dfz.d(obj2, D));
                        N(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (R(obj2, i)) {
                        dfz.s(obj, D, dfz.d(obj2, D));
                        N(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (R(obj2, i)) {
                        dfz.t(obj, D, dfz.f(obj2, D));
                        N(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (R(obj2, i)) {
                        dfz.s(obj, D, dfz.d(obj2, D));
                        N(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (R(obj2, i)) {
                        dfz.t(obj, D, dfz.f(obj2, D));
                        N(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    K(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.n.d(obj, obj2, D);
                    break;
                case 50:
                    dfh.U(obj, obj2, D);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (U(obj2, s, i)) {
                        dfz.u(obj, D, dfz.h(obj2, D));
                        O(obj, s, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    L(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (U(obj2, s, i)) {
                        dfz.u(obj, D, dfz.h(obj2, D));
                        O(obj, s, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    L(obj, obj2, i);
                    break;
            }
        }
        dfh.V(obj, obj2);
        if (this.h) {
            dfh.T(obj, obj2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:307:0x06ec A[LOOP:3: B:305:0x06e8->B:307:0x06ec, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:310:0x06f9  */
    @Override // defpackage.dfg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(Object obj, dfc dfcVar, dcz dczVar) {
        int i;
        Object valueOf;
        if (dczVar == null) {
            throw null;
        }
        ev evVar = this.o;
        Object obj2 = null;
        ddb ddbVar = null;
        while (true) {
            try {
                int c = dfcVar.c();
                int x = x(c);
                if (x >= 0) {
                    int C = C(x);
                    switch (B(C)) {
                        case 0:
                            dfz.q(obj, D(C), dfcVar.a());
                            N(obj, x);
                        case 1:
                            dfz.r(obj, D(C), dfcVar.b());
                            N(obj, x);
                        case 2:
                            dfz.t(obj, D(C), dfcVar.l());
                            N(obj, x);
                        case 3:
                            dfz.t(obj, D(C), dfcVar.o());
                            N(obj, x);
                        case 4:
                            dfz.s(obj, D(C), dfcVar.g());
                            N(obj, x);
                        case 5:
                            dfz.t(obj, D(C), dfcVar.k());
                            N(obj, x);
                        case 6:
                            dfz.s(obj, D(C), dfcVar.f());
                            N(obj, x);
                        case 7:
                            dfz.m(obj, D(C), dfcVar.T());
                            N(obj, x);
                        case 8:
                            M(obj, C, dfcVar);
                            N(obj, x);
                        case 9:
                            if (R(obj, x)) {
                                dfz.u(obj, D(C), dds.e(dfz.h(obj, D(C)), dfcVar.u(G(x), dczVar)));
                            } else {
                                dfz.u(obj, D(C), dfcVar.u(G(x), dczVar));
                                N(obj, x);
                            }
                        case 10:
                            dfz.u(obj, D(C), dfcVar.q());
                            N(obj, x);
                        case 11:
                            dfz.s(obj, D(C), dfcVar.j());
                            N(obj, x);
                        case 12:
                            int e = dfcVar.e();
                            ddo F = F(x);
                            if (F != null && !F.a(e)) {
                                obj2 = dfh.W(c, e, obj2);
                            }
                            dfz.s(obj, D(C), e);
                            N(obj, x);
                            break;
                        case 13:
                            dfz.s(obj, D(C), dfcVar.h());
                            N(obj, x);
                        case 14:
                            dfz.t(obj, D(C), dfcVar.m());
                            N(obj, x);
                        case 15:
                            dfz.s(obj, D(C), dfcVar.i());
                            N(obj, x);
                        case 16:
                            dfz.t(obj, D(C), dfcVar.n());
                            N(obj, x);
                        case 17:
                            if (R(obj, x)) {
                                dfz.u(obj, D(C), dds.e(dfz.h(obj, D(C)), dfcVar.s(G(x), dczVar)));
                            } else {
                                dfz.u(obj, D(C), dfcVar.s(G(x), dczVar));
                                N(obj, x);
                            }
                        case 18:
                            dfcVar.A(this.n.b(obj, D(C)));
                        case 19:
                            dfcVar.E(this.n.b(obj, D(C)));
                        case 20:
                            dfcVar.H(this.n.b(obj, D(C)));
                        case 21:
                            dfcVar.S(this.n.b(obj, D(C)));
                        case 22:
                            dfcVar.G(this.n.b(obj, D(C)));
                        case 23:
                            dfcVar.D(this.n.b(obj, D(C)));
                        case 24:
                            dfcVar.C(this.n.b(obj, D(C)));
                        case 25:
                            dfcVar.y(this.n.b(obj, D(C)));
                        case 26:
                            if (Q(C)) {
                                dfcVar.Q(this.n.b(obj, D(C)));
                            } else {
                                dfcVar.O(this.n.b(obj, D(C)));
                            }
                        case 27:
                            dfcVar.J(this.n.b(obj, D(C)), G(x), dczVar);
                        case 28:
                            dfcVar.z(this.n.b(obj, D(C)));
                        case 29:
                            dfcVar.R(this.n.b(obj, D(C)));
                        case 30:
                            List b2 = this.n.b(obj, D(C));
                            dfcVar.B(b2);
                            obj2 = dfh.X(c, b2, F(x), obj2);
                        case 31:
                            dfcVar.K(this.n.b(obj, D(C)));
                        case 32:
                            dfcVar.L(this.n.b(obj, D(C)));
                        case 33:
                            dfcVar.M(this.n.b(obj, D(C)));
                        case 34:
                            dfcVar.N(this.n.b(obj, D(C)));
                        case 35:
                            dfcVar.A(this.n.b(obj, D(C)));
                        case 36:
                            dfcVar.E(this.n.b(obj, D(C)));
                        case 37:
                            dfcVar.H(this.n.b(obj, D(C)));
                        case 38:
                            dfcVar.S(this.n.b(obj, D(C)));
                        case 39:
                            dfcVar.G(this.n.b(obj, D(C)));
                        case 40:
                            dfcVar.D(this.n.b(obj, D(C)));
                        case 41:
                            dfcVar.C(this.n.b(obj, D(C)));
                        case 42:
                            dfcVar.y(this.n.b(obj, D(C)));
                        case 43:
                            dfcVar.R(this.n.b(obj, D(C)));
                        case 44:
                            List b3 = this.n.b(obj, D(C));
                            dfcVar.B(b3);
                            obj2 = dfh.X(c, b3, F(x), obj2);
                        case 45:
                            dfcVar.K(this.n.b(obj, D(C)));
                        case 46:
                            dfcVar.L(this.n.b(obj, D(C)));
                        case 47:
                            dfcVar.M(this.n.b(obj, D(C)));
                        case 48:
                            dfcVar.N(this.n.b(obj, D(C)));
                        case 49:
                            dfcVar.F(this.n.b(obj, D(C)), G(x), dczVar);
                        case 50:
                            Object H = H(x);
                            long D = D(C(x));
                            Object h = dfz.h(obj, D);
                            if (h == null) {
                                h = ev.Y();
                                dfz.u(obj, D, h);
                            } else if (ev.W(h)) {
                                Object Y = ev.Y();
                                ev.X(Y, h);
                                dfz.u(obj, D, Y);
                                h = Y;
                            }
                            dfcVar.I((dem) h, ev.U(H), dczVar);
                        case 51:
                            dfz.u(obj, D(C), Double.valueOf(dfcVar.a()));
                            O(obj, c, x);
                        case 52:
                            dfz.u(obj, D(C), Float.valueOf(dfcVar.b()));
                            O(obj, c, x);
                        case 53:
                            dfz.u(obj, D(C), Long.valueOf(dfcVar.l()));
                            O(obj, c, x);
                        case 54:
                            dfz.u(obj, D(C), Long.valueOf(dfcVar.o()));
                            O(obj, c, x);
                        case 55:
                            dfz.u(obj, D(C), Integer.valueOf(dfcVar.g()));
                            O(obj, c, x);
                        case 56:
                            dfz.u(obj, D(C), Long.valueOf(dfcVar.k()));
                            O(obj, c, x);
                        case 57:
                            dfz.u(obj, D(C), Integer.valueOf(dfcVar.f()));
                            O(obj, c, x);
                        case 58:
                            dfz.u(obj, D(C), Boolean.valueOf(dfcVar.T()));
                            O(obj, c, x);
                        case 59:
                            M(obj, C, dfcVar);
                            O(obj, c, x);
                        case 60:
                            if (U(obj, c, x)) {
                                dfz.u(obj, D(C), dds.e(dfz.h(obj, D(C)), dfcVar.u(G(x), dczVar)));
                            } else {
                                dfz.u(obj, D(C), dfcVar.u(G(x), dczVar));
                                N(obj, x);
                            }
                            O(obj, c, x);
                        case 61:
                            dfz.u(obj, D(C), dfcVar.q());
                            O(obj, c, x);
                        case 62:
                            dfz.u(obj, D(C), Integer.valueOf(dfcVar.j()));
                            O(obj, c, x);
                        case 63:
                            int e2 = dfcVar.e();
                            ddo F2 = F(x);
                            if (F2 != null && !F2.a(e2)) {
                                obj2 = dfh.W(c, e2, obj2);
                            }
                            dfz.u(obj, D(C), Integer.valueOf(e2));
                            O(obj, c, x);
                            break;
                        case 64:
                            dfz.u(obj, D(C), Integer.valueOf(dfcVar.h()));
                            O(obj, c, x);
                        case 65:
                            dfz.u(obj, D(C), Long.valueOf(dfcVar.m()));
                            O(obj, c, x);
                        case 66:
                            dfz.u(obj, D(C), Integer.valueOf(dfcVar.i()));
                            O(obj, c, x);
                        case 67:
                            dfz.u(obj, D(C), Long.valueOf(dfcVar.n()));
                            O(obj, c, x);
                        case 68:
                            dfz.u(obj, D(C), dfcVar.s(G(x), dczVar));
                            O(obj, c, x);
                        default:
                            if (obj2 == null) {
                                obj2 = dfr.b();
                            }
                            try {
                            } catch (ddt e3) {
                                if (obj2 == null) {
                                    try {
                                        obj2 = ev.O(obj);
                                    } catch (Throwable th) {
                                        th = th;
                                        while (i < this.m) {
                                        }
                                        if (obj2 != null) {
                                        }
                                        throw th;
                                    }
                                }
                                if (!evVar.J(obj2, dfcVar)) {
                                    for (int i2 = this.l; i2 < this.m; i2++) {
                                        obj2 = ab(obj, this.k[i2], obj2);
                                    }
                                    if (obj2 == null) {
                                        return;
                                    }
                                    ev.N(obj, (dfr) obj2);
                                    return;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                while (i < this.m) {
                                }
                                if (obj2 != null) {
                                }
                                throw th;
                            }
                            if (!evVar.J(obj2, dfcVar)) {
                                for (int i3 = this.l; i3 < this.m; i3++) {
                                    obj2 = ab(obj, this.k[i3], obj2);
                                }
                                if (obj2 == null) {
                                    return;
                                }
                            }
                            break;
                    }
                } else if (c == Integer.MAX_VALUE) {
                    for (int i4 = this.l; i4 < this.m; i4++) {
                        obj2 = ab(obj, this.k[i4], obj2);
                    }
                    if (obj2 == null) {
                        return;
                    }
                } else {
                    dcx c2 = !this.h ? null : dczVar.c(this.g, c);
                    if (c2 != null) {
                        if (ddbVar == null) {
                            ddbVar = hl.p(obj);
                        }
                        if (c2.a() == dgc.ENUM) {
                            dfcVar.g();
                            throw null;
                        }
                        switch (c2.a()) {
                            case DOUBLE:
                                valueOf = Double.valueOf(dfcVar.a());
                                break;
                            case FLOAT:
                                valueOf = Float.valueOf(dfcVar.b());
                                break;
                            case INT64:
                                valueOf = Long.valueOf(dfcVar.l());
                                break;
                            case UINT64:
                                valueOf = Long.valueOf(dfcVar.o());
                                break;
                            case INT32:
                                valueOf = Integer.valueOf(dfcVar.g());
                                break;
                            case FIXED64:
                                valueOf = Long.valueOf(dfcVar.k());
                                break;
                            case FIXED32:
                                valueOf = Integer.valueOf(dfcVar.f());
                                break;
                            case BOOL:
                                valueOf = Boolean.valueOf(dfcVar.T());
                                break;
                            case STRING:
                                valueOf = dfcVar.v();
                                break;
                            case GROUP:
                                valueOf = dfcVar.r(c2.c.getClass(), dczVar);
                                break;
                            case MESSAGE:
                                valueOf = dfcVar.t(c2.c.getClass(), dczVar);
                                break;
                            case BYTES:
                                valueOf = dfcVar.q();
                                break;
                            case UINT32:
                                valueOf = Integer.valueOf(dfcVar.j());
                                break;
                            case ENUM:
                                throw new IllegalStateException("Shouldn't reach here.");
                            case SFIXED32:
                                valueOf = Integer.valueOf(dfcVar.h());
                                break;
                            case SFIXED64:
                                valueOf = Long.valueOf(dfcVar.m());
                                break;
                            case SINT32:
                                valueOf = Integer.valueOf(dfcVar.i());
                                break;
                            case SINT64:
                                valueOf = Long.valueOf(dfcVar.n());
                                break;
                            default:
                                valueOf = null;
                                break;
                        }
                        c2.b();
                        switch (c2.a().ordinal()) {
                            case 9:
                            case 10:
                                Object k = ddbVar.k(c2.d);
                                if (k != null) {
                                    valueOf = dds.e(k, valueOf);
                                    break;
                                }
                                break;
                        }
                        ddbVar.l(c2.d, valueOf);
                    } else {
                        if (obj2 == null) {
                            obj2 = ev.O(obj);
                        }
                        try {
                            if (!evVar.J(obj2, dfcVar)) {
                                for (int i5 = this.l; i5 < this.m; i5++) {
                                    obj2 = ab(obj, this.k[i5], obj2);
                                }
                                if (obj2 == null) {
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            for (i = this.l; i < this.m; i++) {
                                obj2 = ab(obj, this.k[i], obj2);
                            }
                            if (obj2 != null) {
                                ev.N(obj, (dfr) obj2);
                            }
                            throw th;
                        }
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    @Override // defpackage.dfg
    public final void i(Object obj, byte[] bArr, int i, int i2, dca dcaVar) {
        if (this.j) {
            X(obj, bArr, i, i2, dcaVar);
        } else {
            c(obj, bArr, i, i2, 0, dcaVar);
        }
    }

    @Override // defpackage.dfg
    public final boolean j(Object obj, Object obj2) {
        boolean q;
        int length = this.c.length;
        for (int i = 0; i < length; i += 3) {
            int C = C(i);
            long D = D(C);
            switch (B(C)) {
                case 0:
                    if (P(obj, obj2, i) && Double.doubleToLongBits(dfz.b(obj, D)) == Double.doubleToLongBits(dfz.b(obj2, D))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (P(obj, obj2, i) && Float.floatToIntBits(dfz.c(obj, D)) == Float.floatToIntBits(dfz.c(obj2, D))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (P(obj, obj2, i) && dfz.f(obj, D) == dfz.f(obj2, D)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (P(obj, obj2, i) && dfz.f(obj, D) == dfz.f(obj2, D)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (P(obj, obj2, i) && dfz.d(obj, D) == dfz.d(obj2, D)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (P(obj, obj2, i) && dfz.f(obj, D) == dfz.f(obj2, D)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (P(obj, obj2, i) && dfz.d(obj, D) == dfz.d(obj2, D)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (P(obj, obj2, i) && dfz.w(obj, D) == dfz.w(obj2, D)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (P(obj, obj2, i) && dfh.q(dfz.h(obj, D), dfz.h(obj2, D))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (P(obj, obj2, i) && dfh.q(dfz.h(obj, D), dfz.h(obj2, D))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (P(obj, obj2, i) && dfh.q(dfz.h(obj, D), dfz.h(obj2, D))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (P(obj, obj2, i) && dfz.d(obj, D) == dfz.d(obj2, D)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (P(obj, obj2, i) && dfz.d(obj, D) == dfz.d(obj2, D)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (P(obj, obj2, i) && dfz.d(obj, D) == dfz.d(obj2, D)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (P(obj, obj2, i) && dfz.f(obj, D) == dfz.f(obj2, D)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (P(obj, obj2, i) && dfz.d(obj, D) == dfz.d(obj2, D)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (P(obj, obj2, i) && dfz.f(obj, D) == dfz.f(obj2, D)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (P(obj, obj2, i) && dfh.q(dfz.h(obj, D), dfz.h(obj2, D))) {
                        continue;
                    }
                    return false;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    q = dfh.q(dfz.h(obj, D), dfz.h(obj2, D));
                    break;
                case 50:
                    q = dfh.q(dfz.h(obj, D), dfz.h(obj2, D));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long z = z(i) & 1048575;
                    if (dfz.d(obj, z) == dfz.d(obj2, z) && dfh.q(dfz.h(obj, D), dfz.h(obj2, D))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!q) {
                return false;
            }
        }
        if (!ev.M(obj).equals(ev.M(obj2))) {
            return false;
        }
        if (this.h) {
            return hl.o(obj).equals(hl.o(obj2));
        }
        return true;
    }

    @Override // defpackage.dfg
    public final boolean k(Object obj) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.l) {
            int i6 = this.k[i5];
            int s = s(i6);
            int C = C(i6);
            int i7 = this.c[i6 + 2];
            int i8 = i7 & 1048575;
            int i9 = 1 << (i7 >>> 20);
            if (i8 == i3) {
                i = i3;
                i2 = i4;
            } else if (i8 != 1048575) {
                i2 = b.getInt(obj, i8);
                i = i8;
            } else {
                i2 = i4;
                i = i8;
            }
            if ((268435456 & C) != 0 && !S(obj, i6, i, i2, i9)) {
                return false;
            }
            switch (B(C)) {
                case 9:
                case 17:
                    if (S(obj, i6, i, i2, i9) && !T(obj, C, G(i6))) {
                        return false;
                    }
                    break;
                case 27:
                case 49:
                    List list = (List) dfz.h(obj, D(C));
                    if (!list.isEmpty()) {
                        dfg G = G(i6);
                        for (int i10 = 0; i10 < list.size(); i10++) {
                            if (!G.k(list.get(i10))) {
                                return false;
                            }
                        }
                        break;
                    } else {
                        continue;
                    }
                case 50:
                    dem demVar = (dem) dfz.h(obj, D(C));
                    if (!demVar.isEmpty() && ev.U(H(i6)).c.s == dgd.MESSAGE) {
                        dfg dfgVar = null;
                        for (Object obj2 : demVar.values()) {
                            if (dfgVar == null) {
                                dfgVar = dez.a.a(obj2.getClass());
                            }
                            if (!dfgVar.k(obj2)) {
                                return false;
                            }
                        }
                        break;
                    }
                    break;
                case 60:
                case 68:
                    if (U(obj, s, i6) && !T(obj, C, G(i6))) {
                        return false;
                    }
                    break;
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        return !this.h || hl.o(obj).i();
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x03b8  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x03f1  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0454  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0467  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x047a  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x04a0  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x04df  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x04f2  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0505  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0517  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0529  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x053b  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x054d  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x055f  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0571  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0582 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0589  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0169  */
    @Override // defpackage.dfg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void l(Object obj, dcv dcvVar) {
        Iterator it;
        Map.Entry entry;
        int length;
        int i;
        if (!this.j) {
            Y(obj, dcvVar);
            return;
        }
        if (this.h) {
            ddb o = hl.o(obj);
            if (!o.h()) {
                it = o.d();
                entry = (Map.Entry) it.next();
                length = this.c.length;
                for (i = 0; i < length; i += 3) {
                    int C = C(i);
                    int s = s(i);
                    while (entry != null) {
                        hl.n(entry);
                        if (s >= 334728578) {
                            hl.r(dcvVar, entry);
                            entry = it.hasNext() ? (Map.Entry) it.next() : null;
                        } else {
                            switch (B(C)) {
                                case 0:
                                    if (R(obj, i)) {
                                        dcvVar.c(s, dfz.b(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 1:
                                    if (R(obj, i)) {
                                        dcvVar.g(s, dfz.c(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 2:
                                    if (R(obj, i)) {
                                        dcvVar.j(s, dfz.f(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 3:
                                    if (R(obj, i)) {
                                        dcvVar.s(s, dfz.f(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 4:
                                    if (R(obj, i)) {
                                        dcvVar.i(s, dfz.d(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 5:
                                    if (R(obj, i)) {
                                        dcvVar.f(s, dfz.f(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 6:
                                    if (R(obj, i)) {
                                        dcvVar.e(s, dfz.d(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 7:
                                    if (R(obj, i)) {
                                        dcvVar.a(s, dfz.w(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 8:
                                    if (R(obj, i)) {
                                        aa(s, dfz.h(obj, D(C)), dcvVar);
                                        break;
                                    } else {
                                        break;
                                    }
                                case 9:
                                    if (R(obj, i)) {
                                        dcvVar.k(s, dfz.h(obj, D(C)), G(i));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 10:
                                    if (R(obj, i)) {
                                        dcvVar.b(s, (dcl) dfz.h(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 11:
                                    if (R(obj, i)) {
                                        dcvVar.r(s, dfz.d(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 12:
                                    if (R(obj, i)) {
                                        dcvVar.d(s, dfz.d(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 13:
                                    if (R(obj, i)) {
                                        dcvVar.m(s, dfz.d(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 14:
                                    if (R(obj, i)) {
                                        dcvVar.n(s, dfz.f(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 15:
                                    if (R(obj, i)) {
                                        dcvVar.o(s, dfz.d(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 16:
                                    if (R(obj, i)) {
                                        dcvVar.p(s, dfz.f(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 17:
                                    if (R(obj, i)) {
                                        dcvVar.h(s, dfz.h(obj, D(C)), G(i));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 18:
                                    dfh.D(s(i), (List) dfz.h(obj, D(C)), dcvVar, false);
                                    break;
                                case 19:
                                    dfh.H(s(i), (List) dfz.h(obj, D(C)), dcvVar, false);
                                    break;
                                case 20:
                                    dfh.K(s(i), (List) dfz.h(obj, D(C)), dcvVar, false);
                                    break;
                                case 21:
                                    dfh.S(s(i), (List) dfz.h(obj, D(C)), dcvVar, false);
                                    break;
                                case 22:
                                    dfh.J(s(i), (List) dfz.h(obj, D(C)), dcvVar, false);
                                    break;
                                case 23:
                                    dfh.G(s(i), (List) dfz.h(obj, D(C)), dcvVar, false);
                                    break;
                                case 24:
                                    dfh.F(s(i), (List) dfz.h(obj, D(C)), dcvVar, false);
                                    break;
                                case 25:
                                    dfh.B(s(i), (List) dfz.h(obj, D(C)), dcvVar, false);
                                    break;
                                case 26:
                                    dfh.Q(s(i), (List) dfz.h(obj, D(C)), dcvVar);
                                    break;
                                case 27:
                                    dfh.L(s(i), (List) dfz.h(obj, D(C)), dcvVar, G(i));
                                    break;
                                case 28:
                                    dfh.C(s(i), (List) dfz.h(obj, D(C)), dcvVar);
                                    break;
                                case 29:
                                    dfh.R(s(i), (List) dfz.h(obj, D(C)), dcvVar, false);
                                    break;
                                case 30:
                                    dfh.E(s(i), (List) dfz.h(obj, D(C)), dcvVar, false);
                                    break;
                                case 31:
                                    dfh.M(s(i), (List) dfz.h(obj, D(C)), dcvVar, false);
                                    break;
                                case 32:
                                    dfh.N(s(i), (List) dfz.h(obj, D(C)), dcvVar, false);
                                    break;
                                case 33:
                                    dfh.O(s(i), (List) dfz.h(obj, D(C)), dcvVar, false);
                                    break;
                                case 34:
                                    dfh.P(s(i), (List) dfz.h(obj, D(C)), dcvVar, false);
                                    break;
                                case 35:
                                    dfh.D(s(i), (List) dfz.h(obj, D(C)), dcvVar, true);
                                    break;
                                case 36:
                                    dfh.H(s(i), (List) dfz.h(obj, D(C)), dcvVar, true);
                                    break;
                                case 37:
                                    dfh.K(s(i), (List) dfz.h(obj, D(C)), dcvVar, true);
                                    break;
                                case 38:
                                    dfh.S(s(i), (List) dfz.h(obj, D(C)), dcvVar, true);
                                    break;
                                case 39:
                                    dfh.J(s(i), (List) dfz.h(obj, D(C)), dcvVar, true);
                                    break;
                                case 40:
                                    dfh.G(s(i), (List) dfz.h(obj, D(C)), dcvVar, true);
                                    break;
                                case 41:
                                    dfh.F(s(i), (List) dfz.h(obj, D(C)), dcvVar, true);
                                    break;
                                case 42:
                                    dfh.B(s(i), (List) dfz.h(obj, D(C)), dcvVar, true);
                                    break;
                                case 43:
                                    dfh.R(s(i), (List) dfz.h(obj, D(C)), dcvVar, true);
                                    break;
                                case 44:
                                    dfh.E(s(i), (List) dfz.h(obj, D(C)), dcvVar, true);
                                    break;
                                case 45:
                                    dfh.M(s(i), (List) dfz.h(obj, D(C)), dcvVar, true);
                                    break;
                                case 46:
                                    dfh.N(s(i), (List) dfz.h(obj, D(C)), dcvVar, true);
                                    break;
                                case 47:
                                    dfh.O(s(i), (List) dfz.h(obj, D(C)), dcvVar, true);
                                    break;
                                case 48:
                                    dfh.P(s(i), (List) dfz.h(obj, D(C)), dcvVar, true);
                                    break;
                                case 49:
                                    dfh.I(s(i), (List) dfz.h(obj, D(C)), dcvVar, G(i));
                                    break;
                                case 50:
                                    Z(dcvVar, s, dfz.h(obj, D(C)), i);
                                    break;
                                case 51:
                                    if (U(obj, s, i)) {
                                        dcvVar.c(s, o(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 52:
                                    if (U(obj, s, i)) {
                                        dcvVar.g(s, p(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 53:
                                    if (U(obj, s, i)) {
                                        dcvVar.j(s, E(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 54:
                                    if (U(obj, s, i)) {
                                        dcvVar.s(s, E(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 55:
                                    if (U(obj, s, i)) {
                                        dcvVar.i(s, t(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 56:
                                    if (U(obj, s, i)) {
                                        dcvVar.f(s, E(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 57:
                                    if (U(obj, s, i)) {
                                        dcvVar.e(s, t(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 58:
                                    if (U(obj, s, i)) {
                                        dcvVar.a(s, V(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 59:
                                    if (U(obj, s, i)) {
                                        aa(s, dfz.h(obj, D(C)), dcvVar);
                                        break;
                                    } else {
                                        break;
                                    }
                                case 60:
                                    if (U(obj, s, i)) {
                                        dcvVar.k(s, dfz.h(obj, D(C)), G(i));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 61:
                                    if (U(obj, s, i)) {
                                        dcvVar.b(s, (dcl) dfz.h(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 62:
                                    if (U(obj, s, i)) {
                                        dcvVar.r(s, t(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 63:
                                    if (U(obj, s, i)) {
                                        dcvVar.d(s, t(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 64:
                                    if (U(obj, s, i)) {
                                        dcvVar.m(s, t(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 65:
                                    if (U(obj, s, i)) {
                                        dcvVar.n(s, E(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 66:
                                    if (U(obj, s, i)) {
                                        dcvVar.o(s, t(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 67:
                                    if (U(obj, s, i)) {
                                        dcvVar.p(s, E(obj, D(C)));
                                        break;
                                    } else {
                                        break;
                                    }
                                case 68:
                                    if (U(obj, s, i)) {
                                        dcvVar.h(s, dfz.h(obj, D(C)), G(i));
                                        break;
                                    } else {
                                        break;
                                    }
                            }
                        }
                    }
                    switch (B(C)) {
                    }
                }
                while (entry != null) {
                    hl.r(dcvVar, entry);
                    entry = it.hasNext() ? (Map.Entry) it.next() : null;
                }
                ad(obj, dcvVar);
            }
        }
        it = null;
        entry = null;
        length = this.c.length;
        while (i < length) {
        }
        while (entry != null) {
        }
        ad(obj, dcvVar);
    }
}
