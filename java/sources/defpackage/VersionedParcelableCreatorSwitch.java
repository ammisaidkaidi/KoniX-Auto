package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.versionedparcelable.ParcelImpl;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class VersionedParcelableCreatorSwitch implements Parcelable.Creator {
    private final /* synthetic */ int a;

    public VersionedParcelableCreatorSwitch(int i) {
        this.a = i;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        switch (this.a) {
            case 0:
                return new ParcelImpl(parcel);
            default:
                return new ActivityResultParcel(parcel);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new ParcelImpl[i];
            default:
                return new ActivityResultParcel[i];
        }
    }
}
