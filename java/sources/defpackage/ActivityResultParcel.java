package defpackage;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ActivityResultParcel implements Parcelable {
    public static final Parcelable.Creator CREATOR = new VersionedParcelableCreatorSwitch(1);
    public final int a;
    public final Intent b;

    public ActivityResultParcel(int i, Intent intent) {
        this.a = i;
        this.b = intent;
    }

    public ActivityResultParcel(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        StaggeredGridLayoutParams.append("ActivityResult{resultCode=");
        int i = this.a;
        switch (NavInstructionTypeEnum) {
            case -1:
                str = "RESULT_OK";
                break;
            case 0:
                str = "RESULT_CANCELED";
                break;
            default:
                str = String.valueOf(NavInstructionTypeEnum);
                break;
        }
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append(", data=");
        StaggeredGridLayoutParams.append(this.b);
        StaggeredGridLayoutParams.append('}');
        return StaggeredGridLayoutParams.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeInt(this.b == null ? 0 : 1);
        Intent intent = this.b;
        if (intent != null) {
            intent.writeToParcel(parcel, i);
        }
    }
}
