package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeCommitParcel extends SafeParcelableBase {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(9);
    public final String a;
    public final byte[] b;
    public final String c;
    public final PhenotypeRegistrationParcel[] d;
    public final Map e = new TreeMap();
    public final boolean f;
    public final long g;

    public PhenotypeCommitParcel(String str, String str2, PhenotypeRegistrationParcel[] boiVarArr, boolean z, byte[] bArr, long j) {
        this.a = str;
        this.c = str2;
        this.d = boiVarArr;
        this.f = z;
        this.b = bArr;
        this.g = j;
        for (PhenotypeRegistrationParcel boiVar : boiVarArr) {
            this.e.put(Integer.valueOf(boiVar.a), boiVar);
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof PhenotypeCommitParcel) {
            PhenotypeCommitParcel bojVar = (PhenotypeCommitParcel) obj;
            if (AdapterDataObserver.b(this.a, bojVar.a) && AdapterDataObserver.b(this.c, bojVar.c) && this.e.equals(bojVar.e) && this.f == bojVar.f && Arrays.equals(this.b, bojVar.b) && this.g == bojVar.g) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.c, this.e, Boolean.valueOf(this.f), this.b, Long.valueOf(this.g)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Configurations('");
        StaggeredGridLayoutParams.append(this.a);
        StaggeredGridLayoutParams.append("', '");
        StaggeredGridLayoutParams.append(this.c);
        StaggeredGridLayoutParams.append("', (");
        Iterator it = this.e.values().iterator();
        while (it.hasNext()) {
            StaggeredGridLayoutParams.append((PhenotypeRegistrationParcel) it.next());
            StaggeredGridLayoutParams.append(", ");
        }
        StaggeredGridLayoutParams.append("), ");
        StaggeredGridLayoutParams.append(this.f);
        StaggeredGridLayoutParams.append(", ");
        byte[] bArr = this.b;
        StaggeredGridLayoutParams.append(bArr == null ? "null" : Base64.encodeToString(bArr, 3));
        StaggeredGridLayoutParams.append(", ");
        StaggeredGridLayoutParams.append(this.g);
        StaggeredGridLayoutParams.append(')');
        return StaggeredGridLayoutParams.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.s(parcel, 2, this.a);
        VersionedParcelReader.s(parcel, 3, this.c);
        VersionedParcelReader.v(parcel, 4, this.d, i);
        VersionedParcelReader.i(parcel, 5, this.f);
        VersionedParcelReader.n(parcel, 6, this.b);
        VersionedParcelReader.l(parcel, 7, this.g);
        VersionedParcelReader.h(parcel, g);
    }
}
