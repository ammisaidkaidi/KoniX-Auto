package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ExperimentTokensParcel extends SafeParcelableBase {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(11);
    public final String a;
    public final byte[] b;
    public final byte[][] c;
    public final byte[][] d;
    public final byte[][] e;
    public final byte[][] f;
    public final int[] g;
    public final byte[][] h;
    public final int[] i;

    public ExperimentTokensParcel(String str, byte[] bArr, byte[][] bArr2, byte[][] bArr3, byte[][] bArr4, byte[][] bArr5, int[] iArr, byte[][] bArr6, int[] iArr2) {
        this.a = str;
        this.b = bArr;
        this.c = bArr2;
        this.d = bArr3;
        this.e = bArr4;
        this.f = bArr5;
        this.g = iArr;
        this.h = bArr6;
        this.i = iArr2;
    }

    private static List a(int[] iArr) {
        if (iArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i : iArr) {
            arrayList.add(Integer.valueOf(NavInstructionTypeEnum));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static List b(byte[][] bArr) {
        if (bArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte[] bArr2 : bArr) {
            ThreadAndNullChecksUtil.d(bArr2);
            arrayList.add(Base64.encodeToString(bArr2, 3));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static List c(int[] iArr) {
        if (iArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(iArr.length >> 1);
        for (int i = 0; NavInstructionTypeEnum < iArr.length; i += 2) {
            arrayList.add(new PhenotypeSnapshotParcel(iArr[i], iArr[i + 1]));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static void d(StringBuilder sb, String str, byte[][] bArr) {
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append("=");
        if (bArr == null) {
            StaggeredGridLayoutParams.append("null");
            return;
        }
        StaggeredGridLayoutParams.append("(");
        int length = bArr.length;
        boolean z = true;
        int i = 0;
        while (NavInstructionTypeEnum < length) {
            byte[] bArr2 = bArr[i];
            if (!z) {
                StaggeredGridLayoutParams.append(", ");
            }
            StaggeredGridLayoutParams.append("'");
            ThreadAndNullChecksUtil.d(bArr2);
            StaggeredGridLayoutParams.append(Base64.encodeToString(bArr2, 3));
            StaggeredGridLayoutParams.append("'");
            i++;
            z = false;
        }
        StaggeredGridLayoutParams.append(")");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ExperimentTokensParcel) {
            ExperimentTokensParcel bolVar = (ExperimentTokensParcel) obj;
            if (AdapterDataObserver.b(this.a, bolVar.a) && Arrays.equals(this.b, bolVar.b) && AdapterDataObserver.b(b(this.c), b(bolVar.c)) && AdapterDataObserver.b(b(this.d), b(bolVar.d)) && AdapterDataObserver.b(b(this.e), b(bolVar.e)) && AdapterDataObserver.b(b(this.f), b(bolVar.f)) && AdapterDataObserver.b(a(this.g), a(bolVar.g)) && AdapterDataObserver.b(b(this.h), b(bolVar.h)) && AdapterDataObserver.b(c(this.i), c(bolVar.i))) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        String sb;
        StringBuilder sb2 = new StringBuilder("ExperimentTokens");
        sb2.append("(");
        String str = this.a;
        if (str == null) {
            sb = "null";
        } else {
            StringBuilder sb3 = new StringBuilder(str.length() + 2);
            sb3.append("'");
            sb3.append(str);
            sb3.append("'");
            sb = sb3.toString();
        }
        sb2.append(StaggeredGridLayoutParams);
        byte[] bArr = this.b;
        sb2.append(", direct==");
        if (bArr == null) {
            sb2.append("null");
        } else {
            sb2.append("'");
            sb2.append(Base64.encodeToString(bArr, 3));
            sb2.append("'");
        }
        sb2.append(", ");
        d(sb2, "GAIA=", this.c);
        sb2.append(", ");
        d(sb2, "PSEUDO=", this.d);
        sb2.append(", ");
        d(sb2, "ALWAYS=", this.e);
        sb2.append(", ");
        d(sb2, "OTHER=", this.f);
        sb2.append(", weak=");
        sb2.append(Arrays.toString(this.g));
        sb2.append(", ");
        d(sb2, "directs=", this.h);
        sb2.append(", genDims=");
        sb2.append(Arrays.toString(c(this.i).toArray()));
        sb2.append(")");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.s(parcel, 2, this.a);
        VersionedParcelReader.n(parcel, 3, this.b);
        VersionedParcelReader.o(parcel, 4, this.c);
        VersionedParcelReader.o(parcel, 5, this.d);
        VersionedParcelReader.o(parcel, 6, this.e);
        VersionedParcelReader.o(parcel, 7, this.f);
        VersionedParcelReader.q(parcel, 8, this.g);
        VersionedParcelReader.o(parcel, 9, this.h);
        VersionedParcelReader.q(parcel, 10, this.i);
        VersionedParcelReader.h(parcel, g);
    }
}
