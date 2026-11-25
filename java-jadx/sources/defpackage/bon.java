package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bon extends bnt implements Comparable {
    public static final Parcelable.Creator CREATOR = new bmt(12);
    public final String a;
    public final long b;
    public final boolean c;
    public final double d;
    public final String e;
    public final byte[] f;
    public final int g;
    public final int h;

    public bon(String str, long j, boolean z, double d, String str2, byte[] bArr, int i, int i2) {
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
        if (i < i2) {
            return -1;
        }
        return i != i2 ? 1 : 0;
    }

    public final String a(StringBuilder sb) {
        sb.append("Flag(");
        sb.append(this.a);
        sb.append(", ");
        int i = this.g;
        switch (i) {
            case 1:
                sb.append(this.b);
                break;
            case 2:
                sb.append(this.c);
                break;
            case 3:
                sb.append(this.d);
                break;
            case 4:
                sb.append("'");
                String str = this.e;
                hr.d(str);
                sb.append(str);
                sb.append("'");
                break;
            case 5:
                sb.append("'");
                sb.append(Base64.encodeToString((byte[]) hr.d(this.f), 3));
                sb.append("'");
                break;
            default:
                String str2 = this.a;
                StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 27);
                sb2.append("Invalid type: ");
                sb2.append(str2);
                sb2.append(", ");
                sb2.append(i);
                throw new AssertionError(sb2.toString());
        }
        sb.append(", ");
        sb.append(this.g);
        sb.append(", ");
        sb.append(this.h);
        sb.append(")");
        return sb.toString();
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        bon bonVar = (bon) obj;
        int compareTo = this.a.compareTo(bonVar.a);
        if (compareTo != 0) {
            return compareTo;
        }
        int b = b(this.g, bonVar.g);
        if (b != 0) {
            return b;
        }
        int i = this.g;
        switch (i) {
            case 1:
                long j = this.b;
                long j2 = bonVar.b;
                if (j < j2) {
                    return -1;
                }
                return j == j2 ? 0 : 1;
            case 2:
                boolean z = this.c;
                if (z == bonVar.c) {
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
                sb.append("Invalid enum value: ");
                sb.append(i);
                throw new AssertionError(sb.toString());
        }
    }

    public final boolean equals(Object obj) {
        int i;
        if (!(obj instanceof bon)) {
            return false;
        }
        bon bonVar = (bon) obj;
        if (!qs.b(this.a, bonVar.a) || (i = this.g) != bonVar.g || this.h != bonVar.h) {
            return false;
        }
        switch (i) {
            case 1:
                return this.b == bonVar.b;
            case 2:
                return this.c == bonVar.c;
            case 3:
                return this.d == bonVar.d;
            case 4:
                return qs.b(this.e, bonVar.e);
            case 5:
                return Arrays.equals(this.f, bonVar.f);
            default:
                StringBuilder sb = new StringBuilder(31);
                sb.append("Invalid enum value: ");
                sb.append(i);
                throw new AssertionError(sb.toString());
        }
    }

    public final String toString() {
        return a(new StringBuilder());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        if (!bmt.c(this.a)) {
            io.s(parcel, 2, this.a);
        }
        long j = this.b;
        if (j != 0) {
            io.l(parcel, 3, j);
        }
        if (this.c) {
            io.i(parcel, 4, true);
        }
        double d = this.d;
        if (d != 0.0d) {
            io.j(parcel, 5, 8);
            parcel.writeDouble(d);
        }
        if (!bmt.c(this.e)) {
            io.s(parcel, 6, this.e);
        }
        if (!bmt.c(this.f)) {
            io.n(parcel, 7, this.f);
        }
        if (!bmt.b(this.g)) {
            io.k(parcel, 8, this.g);
        }
        if (!bmt.b(this.h)) {
            io.k(parcel, 9, this.h);
        }
        io.h(parcel, g);
    }
}
