package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.EdgeEffect;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class io {
    public static int A(Parcel parcel) {
        int readInt = parcel.readInt();
        int z = z(parcel, readInt);
        int dataPosition = parcel.dataPosition();
        if (x(readInt) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(readInt));
            throw new bnu(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i = z + dataPosition;
        if (i >= dataPosition && i <= parcel.dataSize()) {
            return i;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("Size read is invalid start=");
        sb.append(dataPosition);
        sb.append(" end=");
        sb.append(i);
        throw new bnu(sb.toString(), parcel);
    }

    public static long B(Parcel parcel, int i) {
        J(parcel, i, 8);
        return parcel.readLong();
    }

    public static Bundle C(Parcel parcel, int i) {
        int z = z(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (z == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + z);
        return readBundle;
    }

    public static IBinder D(Parcel parcel, int i) {
        int z = z(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (z == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + z);
        return readStrongBinder;
    }

    public static Parcelable E(Parcel parcel, int i, Parcelable.Creator creator) {
        int z = z(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (z == 0) {
            return null;
        }
        Parcelable parcelable = (Parcelable) creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + z);
        return parcelable;
    }

    public static String F(Parcel parcel, int i) {
        int z = z(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (z == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + z);
        return readString;
    }

    public static ArrayList G(Parcel parcel, int i) {
        int z = z(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (z == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + z);
        return createStringArrayList;
    }

    public static ArrayList H(Parcel parcel, int i, Parcelable.Creator creator) {
        int z = z(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (z == 0) {
            return null;
        }
        ArrayList createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + z);
        return createTypedArrayList;
    }

    public static void I(Parcel parcel, int i) {
        if (parcel.dataPosition() == i) {
            return;
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(i);
        throw new bnu(sb.toString(), parcel);
    }

    public static void J(Parcel parcel, int i, int i2) {
        int z = z(parcel, i);
        if (z == i2) {
            return;
        }
        String hexString = Integer.toHexString(z);
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb.append("Expected size ");
        sb.append(i2);
        sb.append(" got ");
        sb.append(z);
        sb.append(" (0x");
        sb.append(hexString);
        sb.append(")");
        throw new bnu(sb.toString(), parcel);
    }

    public static void K(Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + z(parcel, i));
    }

    public static boolean L(Parcel parcel, int i) {
        J(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    public static byte[] M(Parcel parcel, int i) {
        int z = z(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (z == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + z);
        return createByteArray;
    }

    public static int[] N(Parcel parcel, int i) {
        int z = z(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (z == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(dataPosition + z);
        return createIntArray;
    }

    public static Object[] O(Parcel parcel, int i, Parcelable.Creator creator) {
        int z = z(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (z == 0) {
            return null;
        }
        Object[] createTypedArray = parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + z);
        return createTypedArray;
    }

    public static String[] P(Parcel parcel, int i) {
        int z = z(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (z == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + z);
        return createStringArray;
    }

    public static byte[][] Q(Parcel parcel, int i) {
        int z = z(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (z == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        byte[][] bArr = new byte[readInt][];
        for (int i2 = 0; i2 < readInt; i2++) {
            bArr[i2] = parcel.createByteArray();
        }
        parcel.setDataPosition(dataPosition + z);
        return bArr;
    }

    public static void R(Parcel parcel, int i, int i2) {
        if (i == i2) {
            return;
        }
        String hexString = Integer.toHexString(i);
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb.append("Expected size ");
        sb.append(i2);
        sb.append(" got ");
        sb.append(i);
        sb.append(" (0x");
        sb.append(hexString);
        sb.append(")");
        throw new bnu(sb.toString(), parcel);
    }

    private static int S(Parcel parcel, int i) {
        parcel.writeInt(i | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    private static void T(Parcel parcel, Parcelable parcelable, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int dataPosition2 = parcel.dataPosition();
        parcelable.writeToParcel(parcel, i);
        int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }

    public static float a(EdgeEffect edgeEffect) {
        try {
            return edgeEffect.getDistance();
        } catch (Throwable th) {
            return 0.0f;
        }
    }

    public static float b(EdgeEffect edgeEffect, float f, float f2) {
        try {
            return edgeEffect.onPullDistance(f, f2);
        } catch (Throwable th) {
            edgeEffect.onPull(f, f2);
            return 0.0f;
        }
    }

    public static EdgeEffect c(Context context, AttributeSet attributeSet) {
        try {
            return new EdgeEffect(context, attributeSet);
        } catch (Throwable th) {
            return new EdgeEffect(context);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ws d(vx vxVar, int i, ArrayList arrayList, ws wsVar) {
        int i2;
        int i3;
        int i4 = i == 0 ? vxVar.an : vxVar.ao;
        if (i4 != -1) {
            if (wsVar != null) {
                i3 = i4 != wsVar.c ? 0 : 0;
            }
            while (true) {
                if (i3 >= arrayList.size()) {
                    break;
                }
                ws wsVar2 = (ws) arrayList.get(i3);
                if (wsVar2.c == i4) {
                    if (wsVar != null) {
                        wsVar.c(i, wsVar2);
                        arrayList.remove(wsVar);
                    }
                    wsVar = wsVar2;
                } else {
                    i3++;
                }
            }
            if (wsVar == null) {
                if (vxVar instanceof wb) {
                    wb wbVar = (wb) vxVar;
                    int i5 = 0;
                    while (true) {
                        if (i5 >= wbVar.ar) {
                            i2 = -1;
                            break;
                        }
                        vx vxVar2 = wbVar.aq[i5];
                        if (i == 0) {
                            i2 = vxVar2.an;
                            if (i2 != -1) {
                                break;
                            }
                            i5++;
                        } else {
                            i2 = vxVar2.ao;
                            if (i2 != -1) {
                                break;
                            }
                            i5++;
                        }
                    }
                    if (i2 != -1) {
                        int i6 = 0;
                        while (true) {
                            if (i6 >= arrayList.size()) {
                                break;
                            }
                            ws wsVar3 = (ws) arrayList.get(i6);
                            if (wsVar3.c == i2) {
                                wsVar = wsVar3;
                                break;
                            }
                            i6++;
                        }
                    }
                }
                if (wsVar == null) {
                    wsVar = new ws(i);
                }
                arrayList.add(wsVar);
            }
            if (wsVar.d(vxVar)) {
                if (vxVar instanceof wa) {
                    wa waVar = (wa) vxVar;
                    waVar.d.c(waVar.aq == 0 ? 1 : 0, arrayList, wsVar);
                }
                if (i == 0) {
                    vxVar.an = wsVar.c;
                    vxVar.J.c(0, arrayList, wsVar);
                    vxVar.L.c(0, arrayList, wsVar);
                } else {
                    vxVar.ao = wsVar.c;
                    vxVar.K.c(1, arrayList, wsVar);
                    vxVar.N.c(1, arrayList, wsVar);
                    vxVar.M.c(1, arrayList, wsVar);
                }
                vxVar.Q.c(i, arrayList, wsVar);
            }
            return wsVar;
        }
        if (i4 != -1) {
            return wsVar;
        }
        if (wsVar == null) {
        }
        if (wsVar.d(vxVar)) {
        }
        return wsVar;
    }

    public static ws e(ArrayList arrayList, int i) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ws wsVar = (ws) arrayList.get(i2);
            if (i == wsVar.c) {
                return wsVar;
            }
        }
        return null;
    }

    public static boolean f(int i, int i2, int i3, int i4) {
        return (i3 == 1 || i3 == 2 || (i3 == 4 && i != 2)) || (i4 == 1 || i4 == 2 || (i4 == 4 && i2 != 2));
    }

    public static int g(Parcel parcel) {
        return S(parcel, 20293);
    }

    public static void h(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    public static void i(Parcel parcel, int i, boolean z) {
        j(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    public static void j(Parcel parcel, int i, int i2) {
        parcel.writeInt(i | (i2 << 16));
    }

    public static void k(Parcel parcel, int i, int i2) {
        j(parcel, i, 4);
        parcel.writeInt(i2);
    }

    public static void l(Parcel parcel, int i, long j) {
        j(parcel, i, 8);
        parcel.writeLong(j);
    }

    public static void m(Parcel parcel, int i, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        int S = S(parcel, i);
        parcel.writeBundle(bundle);
        h(parcel, S);
    }

    public static void n(Parcel parcel, int i, byte[] bArr) {
        if (bArr == null) {
            return;
        }
        int S = S(parcel, i);
        parcel.writeByteArray(bArr);
        h(parcel, S);
    }

    public static void o(Parcel parcel, int i, byte[][] bArr) {
        if (bArr == null) {
            return;
        }
        int S = S(parcel, i);
        parcel.writeInt(bArr.length);
        for (byte[] bArr2 : bArr) {
            parcel.writeByteArray(bArr2);
        }
        h(parcel, S);
    }

    public static void p(Parcel parcel, int i, IBinder iBinder) {
        if (iBinder == null) {
            return;
        }
        int S = S(parcel, i);
        parcel.writeStrongBinder(iBinder);
        h(parcel, S);
    }

    public static void q(Parcel parcel, int i, int[] iArr) {
        if (iArr == null) {
            return;
        }
        int S = S(parcel, i);
        parcel.writeIntArray(iArr);
        h(parcel, S);
    }

    public static void r(Parcel parcel, int i, Parcelable parcelable, int i2) {
        if (parcelable == null) {
            return;
        }
        int S = S(parcel, i);
        parcelable.writeToParcel(parcel, i2);
        h(parcel, S);
    }

    public static void s(Parcel parcel, int i, String str) {
        if (str == null) {
            return;
        }
        int S = S(parcel, i);
        parcel.writeString(str);
        h(parcel, S);
    }

    public static void t(Parcel parcel, int i, String[] strArr) {
        if (strArr == null) {
            return;
        }
        int S = S(parcel, i);
        parcel.writeStringArray(strArr);
        h(parcel, S);
    }

    public static void u(Parcel parcel, int i, List list) {
        if (list == null) {
            return;
        }
        int S = S(parcel, i);
        parcel.writeStringList(list);
        h(parcel, S);
    }

    public static void v(Parcel parcel, int i, Parcelable[] parcelableArr, int i2) {
        if (parcelableArr == null) {
            return;
        }
        int S = S(parcel, i);
        parcel.writeInt(parcelableArr.length);
        for (Parcelable parcelable : parcelableArr) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                T(parcel, parcelable, i2);
            }
        }
        h(parcel, S);
    }

    public static void w(Parcel parcel, int i, List list) {
        if (list == null) {
            return;
        }
        int S = S(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            Parcelable parcelable = (Parcelable) list.get(i2);
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                T(parcel, parcelable, 0);
            }
        }
        h(parcel, S);
    }

    public static int x(int i) {
        return (char) i;
    }

    public static int y(Parcel parcel, int i) {
        J(parcel, i, 4);
        return parcel.readInt();
    }

    public static int z(Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (char) (i >> 16) : parcel.readInt();
    }
}
