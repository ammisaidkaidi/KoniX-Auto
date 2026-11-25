package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ClearcutLogRequestParcel extends SafeParcelableBase {
    public static final Parcelable.Creator CREATOR = new GmsSafeParcelableCreatorSwitch(14);
    public final ConfigPackageProto a;
    public final ClearcutSamplingParcel b;
    public byte[] c;
    public final int[] d;
    public final String[] e;
    public final int[] f;
    public final byte[][] g;
    public final ExperimentTokensParcel[] h;
    public final boolean i;
    public ProtoMsgMixedScalarsConfig j;
    public final DerSyntheticLambdaHolder k;

    public ClearcutLogRequestParcel(ClearcutSamplingParcel biwVar, ProtoMsgMixedScalarsConfig dgtVar, DerSyntheticLambdaHolder bieVar, int[] iArr, String[] strArr, int[] iArr2) {
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

    public ClearcutLogRequestParcel(ClearcutSamplingParcel biwVar, byte[] bArr, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr2, boolean z, ExperimentTokensParcel[] bolVarArr) {
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
        if (obj instanceof ClearcutLogRequestParcel) {
            ClearcutLogRequestParcel binVar = (ClearcutLogRequestParcel) obj;
            if (ThreadAndNullChecksUtil.n(this.b, binVar.b) && Arrays.equals(this.c, binVar.c) && Arrays.equals(this.d, binVar.d) && Arrays.equals(this.e, binVar.e) && ThreadAndNullChecksUtil.n(this.j, binVar.j) && ThreadAndNullChecksUtil.n(this.k, binVar.k)) {
                ConfigPackageProto cxmVar = binVar.a;
                if (ThreadAndNullChecksUtil.n(null, null) && Arrays.equals(this.f, binVar.f) && Arrays.deepEquals(this.g, binVar.g) && Arrays.equals(this.h, binVar.h) && this.i == binVar.i) {
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
        StaggeredGridLayoutParams.append(this.b);
        StaggeredGridLayoutParams.append(", LogEventBytes: ");
        byte[] bArr = this.c;
        StaggeredGridLayoutParams.append(bArr == null ? null : new String(bArr));
        StaggeredGridLayoutParams.append(", TestCodes: ");
        StaggeredGridLayoutParams.append(Arrays.toString(this.d));
        StaggeredGridLayoutParams.append(", MendelPackages: ");
        StaggeredGridLayoutParams.append(Arrays.toString(this.e));
        StaggeredGridLayoutParams.append(", LogEvent: ");
        StaggeredGridLayoutParams.append(this.j);
        StaggeredGridLayoutParams.append(", SourceExtensionByteStringProvider: ");
        StaggeredGridLayoutParams.append(this.k);
        StaggeredGridLayoutParams.append(", VeProducer: ");
        StaggeredGridLayoutParams.append((Object) null);
        StaggeredGridLayoutParams.append(", ExperimentIDs: ");
        StaggeredGridLayoutParams.append(Arrays.toString(this.f));
        StaggeredGridLayoutParams.append(", ExperimentTokens: ");
        StaggeredGridLayoutParams.append(Arrays.deepToString(this.g));
        StaggeredGridLayoutParams.append(", ExperimentTokensParcelables: ");
        StaggeredGridLayoutParams.append(Arrays.toString(this.h));
        StaggeredGridLayoutParams.append(", AddPhenotypeExperimentTokens: ");
        StaggeredGridLayoutParams.append(this.i);
        StaggeredGridLayoutParams.append("]");
        return StaggeredGridLayoutParams.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.r(parcel, 2, this.b, i);
        VersionedParcelReader.n(parcel, 3, this.c);
        VersionedParcelReader.q(parcel, 4, this.d);
        VersionedParcelReader.t(parcel, 5, this.e);
        VersionedParcelReader.q(parcel, 6, this.f);
        VersionedParcelReader.o(parcel, 7, this.g);
        VersionedParcelReader.i(parcel, 8, this.i);
        VersionedParcelReader.v(parcel, 9, this.h, i);
        VersionedParcelReader.h(parcel, g);
    }
}
