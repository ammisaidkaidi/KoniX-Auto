package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bin extends bnt {
    public static final Parcelable.Creator CREATOR = new acg(14);
    public final cxm a;
    public final biw b;
    public byte[] c;
    public final int[] d;
    public final String[] e;
    public final int[] f;
    public final byte[][] g;
    public final bol[] h;
    public final boolean i;
    public dgt j;
    public final bie k;

    public bin(biw biwVar, dgt dgtVar, bie bieVar, int[] iArr, String[] strArr, int[] iArr2) {
        this.b = biwVar;
        this.j = dgtVar;
        this.k = bieVar;
        this.a = null;
        this.d = iArr;
        this.e = strArr;
        this.f = iArr2;
        this.g = null;
        this.h = null;
        this.i = true;
    }

    public bin(biw biwVar, byte[] bArr, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr2, boolean z, bol[] bolVarArr) {
        this.b = biwVar;
        this.c = bArr;
        this.d = iArr;
        this.e = strArr;
        this.j = null;
        this.k = null;
        this.a = null;
        this.f = iArr2;
        this.g = bArr2;
        this.h = bolVarArr;
        this.i = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof bin) {
            bin binVar = (bin) obj;
            if (hr.n(this.b, binVar.b) && Arrays.equals(this.c, binVar.c) && Arrays.equals(this.d, binVar.d) && Arrays.equals(this.e, binVar.e) && hr.n(this.j, binVar.j) && hr.n(this.k, binVar.k)) {
                cxm cxmVar = binVar.a;
                if (hr.n(null, null) && Arrays.equals(this.f, binVar.f) && Arrays.deepEquals(this.g, binVar.g) && Arrays.equals(this.h, binVar.h) && this.i == binVar.i) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.b, this.c, this.d, this.e, this.j, this.k, null, this.f, this.g, this.h, Boolean.valueOf(this.i)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LogEventParcelable[");
        sb.append(this.b);
        sb.append(", LogEventBytes: ");
        byte[] bArr = this.c;
        sb.append(bArr == null ? null : new String(bArr));
        sb.append(", TestCodes: ");
        sb.append(Arrays.toString(this.d));
        sb.append(", MendelPackages: ");
        sb.append(Arrays.toString(this.e));
        sb.append(", LogEvent: ");
        sb.append(this.j);
        sb.append(", SourceExtensionByteStringProvider: ");
        sb.append(this.k);
        sb.append(", VeProducer: ");
        sb.append((Object) null);
        sb.append(", ExperimentIDs: ");
        sb.append(Arrays.toString(this.f));
        sb.append(", ExperimentTokens: ");
        sb.append(Arrays.deepToString(this.g));
        sb.append(", ExperimentTokensParcelables: ");
        sb.append(Arrays.toString(this.h));
        sb.append(", AddPhenotypeExperimentTokens: ");
        sb.append(this.i);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.r(parcel, 2, this.b, i);
        io.n(parcel, 3, this.c);
        io.q(parcel, 4, this.d);
        io.t(parcel, 5, this.e);
        io.q(parcel, 6, this.f);
        io.o(parcel, 7, this.g);
        io.i(parcel, 8, this.i);
        io.v(parcel, 9, this.h, i);
        io.h(parcel, g);
    }
}
