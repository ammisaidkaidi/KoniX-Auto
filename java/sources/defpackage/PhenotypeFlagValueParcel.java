package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeFlagValueParcel extends SafeParcelableBase implements Comparable {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(12);
    public final String a;
    public final long b;
    public final boolean c;
    public final double d;
    public final String e;
    public final byte[] f;
    public final int g;
    public final int h;

    public PhenotypeFlagValueParcel(String str, long j, boolean z, double d, String str2, byte[] bArr, int i, int i2) {
        this.a = str;
        this.b = j;
        this.c = z;
        this.d = d;
        this.e = str2;
        this.f = bArr;
        this.g = i;
        this.h = i2;
    }

    private static int b(int i, int i2) {
        if (NavInstructionTypeEnum < i2) {
            return -1;
        }
        return i != i2 ? 1 : 0;
    }

    public final String a(StringBuilder sb) {
        StaggeredGridLayoutParams.append("Flag(");
        StaggeredGridLayoutParams.append(this.a);
        StaggeredGridLayoutParams.append(", ");
        int i = this.g;
        switch (NavInstructionTypeEnum) {
            case 1:
                StaggeredGridLayoutParams.append(this.b);
                break;
            case 2:
                StaggeredGridLayoutParams.append(this.c);
                break;
            case 3:
                StaggeredGridLayoutParams.append(this.d);
                break;
            case 4:
                StaggeredGridLayoutParams.append("'");
                String str = this.e;
                ThreadAndNullChecksUtil.d(str);
                StaggeredGridLayoutParams.append(str);
                StaggeredGridLayoutParams.append("'");
                break;
            case 5:
                StaggeredGridLayoutParams.append("'");
                StaggeredGridLayoutParams.append(Base64.encodeToString((byte[]) ThreadAndNullChecksUtil.d(this.f), 3));
                StaggeredGridLayoutParams.append("'");
                break;
            default:
                String str2 = this.a;
                StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 27);
                sb2.append("Invalid type: ");
                sb2.append(str2);
                sb2.append(", ");
                sb2.append(NavInstructionTypeEnum);
                throw new AssertionError(sb2.toString());
        }
        StaggeredGridLayoutParams.append(", ");
        StaggeredGridLayoutParams.append(this.g);
        StaggeredGridLayoutParams.append(", ");
        StaggeredGridLayoutParams.append(this.h);
        StaggeredGridLayoutParams.append(")");
        return StaggeredGridLayoutParams.toString();
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        PhenotypeFlagValueParcel bonVar = (PhenotypeFlagValueParcel) obj;
        int compareTo = this.a.compareTo(bonVar.a);
        if (compareTo != 0) {
            return compareTo;
        }
        int b = b(this.g, bonVar.g);
        if (ProtoLiteMessageBase != 0) {
            return b;
        }
        int i = this.g;
        switch (NavInstructionTypeEnum) {
            case 1:
                long j = this.b;
                long j2 = bonVar.b;
                if (ProtoMessageTwoIntsAndFlagValue < j2) {
                    return -1;
                }
                return j == j2 ? 0 : 1;
            case 2:
                boolean z = this.c;
                if (IcuMessageFormat == bonVar.c) {
                    return 0;
                }
                return z ? 1 : -1;
            case 3:
                return Double.compare(this.d, bonVar.d);
            case 4:
                String str = this.e;
                String str2 = bonVar.e;
                if (str == str2) {
                    return 0;
                }
                if (str == null) {
                    return -1;
                }
                if (str2 == null) {
                    return 1;
                }
                return str.compareTo(str2);
            case 5:
                byte[] bArr = this.f;
                byte[] bArr2 = bonVar.f;
                if (bArr == bArr2) {
                    return 0;
                }
                if (bArr == null) {
                    return -1;
                }
                if (bArr2 == null) {
                    return 1;
                }
                for (int i2 = 0; i2 < Math.min(this.f.length, bonVar.f.length); i2++) {
                    int i3 = this.f[i2] - bonVar.f[i2];
                    if (i3 != 0) {
                        return i3;
                    }
                }
                return b(this.f.length, bonVar.f.length);
            default:
                StringBuilder sb = new StringBuilder(31);
                StaggeredGridLayoutParams.append("Invalid enum value: ");
                StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
                throw new AssertionError(StaggeredGridLayoutParams.toString());
        }
    }

    public final boolean equals(Object obj) {
        int i;
        if (!(obj instanceof PhenotypeFlagValueParcel)) {
            return false;
        }
        PhenotypeFlagValueParcel bonVar = (PhenotypeFlagValueParcel) obj;
        if (!AdapterDataObserver.b(this.a, bonVar.a) || (NavInstructionTypeEnum = this.g) != bonVar.g || this.h != bonVar.h) {
            return false;
        }
        switch (NavInstructionTypeEnum) {
            case 1:
                return this.b == bonVar.b;
            case 2:
                return this.c == bonVar.c;
            case 3:
                return this.d == bonVar.d;
            case 4:
                return AdapterDataObserver.b(this.e, bonVar.e);
            case 5:
                return Arrays.equals(this.f, bonVar.f);
            default:
                StringBuilder sb = new StringBuilder(31);
                StaggeredGridLayoutParams.append("Invalid enum value: ");
                StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
                throw new AssertionError(StaggeredGridLayoutParams.toString());
        }
    }

    public final String toString() {
        return a(new StringBuilder());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        if (!ConnectionResultCreator.c(this.a)) {
            VersionedParcelReader.s(parcel, 2, this.a);
        }
        long j = this.b;
        if (ProtoMessageTwoIntsAndFlagValue != 0) {
            VersionedParcelReader.l(parcel, 3, j);
        }
        if (this.c) {
            VersionedParcelReader.i(parcel, 4, true);
        }
        double d = this.d;
        if (ProtoMsgIntStringInt != 0.0d) {
            VersionedParcelReader.j(parcel, 5, 8);
            parcel.writeDouble(ProtoMsgIntStringInt);
        }
        if (!ConnectionResultCreator.c(this.e)) {
            VersionedParcelReader.s(parcel, 6, this.e);
        }
        if (!ConnectionResultCreator.c(this.f)) {
            VersionedParcelReader.n(parcel, 7, this.f);
        }
        if (!ConnectionResultCreator.b(this.g)) {
            VersionedParcelReader.k(parcel, 8, this.g);
        }
        if (!ConnectionResultCreator.b(this.h)) {
            VersionedParcelReader.k(parcel, 9, this.h);
        }
        VersionedParcelReader.h(parcel, g);
    }
}
