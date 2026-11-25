package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SignInAccountParcel extends SafeParcelableBase implements StatusResultInterface {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(17);
    public final List a;
    public final String b;

    public SignInAccountParcel(List list, String str) {
        this.a = list;
        this.b = str;
    }

    @Override // defpackage.StatusResultInterface
    public final Status a() {
        return this.b != null ? Status.a : Status.c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.u(parcel, 1, this.a);
        VersionedParcelReader.s(parcel, 2, this.b);
        VersionedParcelReader.h(parcel, g);
    }
}
