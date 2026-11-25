package defpackage;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SignInStatusParcel extends SafeParcelableBase implements StatusResultInterface {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(16);
    final int a;
    public int b;
    public Intent c;

    public SignInStatusParcel() {
        this(2, 0, null);
    }

    public SignInStatusParcel(int i, int i2, Intent intent) {
        this.a = i;
        this.b = i2;
        this.c = intent;
    }

    @Override // defpackage.StatusResultInterface
    public final Status a() {
        return this.b == 0 ? Status.a : Status.c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.k(parcel, 1, this.a);
        VersionedParcelReader.k(parcel, 2, this.b);
        VersionedParcelReader.r(parcel, 3, this.c, i);
        VersionedParcelReader.h(parcel, g);
    }
}
