package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ClearcutSamplingParcel extends SafeParcelableBase {
    public static final Parcelable.Creator CREATOR = new GmsSafeParcelableCreatorSwitch(15);
    public final String a;
    public final int b;
    public final int c;
    public final String d;
    public final String e;
    public final boolean f;
    public final String g;
    public final boolean h;
    public final int i;
    public final Integer j;
    public final boolean k;
    public final int l;

    public ClearcutSamplingParcel(String str, int i, int i2, String str2, String str3, boolean z, String str4, boolean z2, int i3, Integer num, boolean z3, int i4) {
        this.a = str;
        this.b = i;
        this.c = i2;
        this.d = str2;
        this.e = str3;
        this.f = z;
        this.g = str4;
        this.h = z2;
        this.i = i3;
        this.j = num;
        this.k = z3;
        this.l = i4;
    }

    @Deprecated
    public ClearcutSamplingParcel(String str, int i, String str2, String str3, int i2, EnumSet enumSet) {
        ThreadAndNullChecksUtil.d(str);
        this.a = str;
        this.b = i;
        this.c = -1;
        this.g = str2;
        this.d = true != enumSet.contains(CollectionBasisVerifierType.ACCOUNT_NAME) ? null : str3;
        this.e = null;
        this.f = enumSet.contains(CollectionBasisVerifierType.ANDROID_ID);
        this.h = enumSet.equals(bij.f);
        int i3 = i2 - 1;
        if (i2 == 0) {
            throw null;
        }
        this.i = i3;
        this.j = null;
        int i4 = 0;
        this.k = false;
        if (!enumSet.equals(bij.e)) {
            Iterator it = enumSet.iterator();
            int i5 = -1;
            while (it.hasNext()) {
                i5 &= ((CollectionBasisVerifierType) it.next()).h ^ (-1);
            }
            i4 = i5;
        }
        this.l = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ClearcutSamplingParcel) {
            ClearcutSamplingParcel biwVar = (ClearcutSamplingParcel) obj;
            if (ThreadAndNullChecksUtil.n(this.a, biwVar.a) && this.b == biwVar.b && this.c == biwVar.c && ThreadAndNullChecksUtil.n(this.g, biwVar.g) && ThreadAndNullChecksUtil.n(this.d, biwVar.d) && ThreadAndNullChecksUtil.n(this.e, biwVar.e) && this.f == biwVar.f && this.h == biwVar.h && this.i == biwVar.i && ThreadAndNullChecksUtil.n(this.j, biwVar.j) && this.k == biwVar.k && this.l == biwVar.l) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, Integer.valueOf(this.b), Integer.valueOf(this.c), this.g, this.d, this.e, Boolean.valueOf(this.f), Boolean.valueOf(this.h), Integer.valueOf(this.i), this.j, Boolean.valueOf(this.k), Integer.valueOf(this.l)});
    }

    public final String toString() {
        return "PlayLoggerContext[package=" + this.a + ",packageVersionCode=" + this.b + ",logSource=" + this.c + ",logSourceName=" + this.g + ",uploadAccount=" + this.d + ",loggingId=" + this.e + ",logAndroidId=" + this.f + ",isAnonymous=" + this.h + ",qosTier=" + this.i + ",appMobilespecId=" + this.j + ",scrubMccMnc=" + this.k + "piiLevelset=" + this.l + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.s(parcel, 2, this.a);
        VersionedParcelReader.k(parcel, 3, this.b);
        VersionedParcelReader.k(parcel, 4, this.c);
        VersionedParcelReader.s(parcel, 5, this.d);
        VersionedParcelReader.s(parcel, 6, this.e);
        VersionedParcelReader.i(parcel, 7, this.f);
        VersionedParcelReader.s(parcel, 8, this.g);
        VersionedParcelReader.i(parcel, 9, this.h);
        VersionedParcelReader.k(parcel, 10, this.i);
        Integer num = this.j;
        if (num != null) {
            VersionedParcelReader.j(parcel, 11, 4);
            parcel.writeInt(num.intValue());
        }
        VersionedParcelReader.i(parcel, 12, this.k);
        VersionedParcelReader.k(parcel, 13, this.l);
        VersionedParcelReader.h(parcel, g);
    }
}
