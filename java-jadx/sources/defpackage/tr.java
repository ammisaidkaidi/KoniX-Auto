package defpackage;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class tr implements Parcelable {
    public static final Parcelable.Creator CREATOR = new afz(1);
    public final int a;
    public final Intent b;

    public tr(int i, Intent intent) {
        this.a = i;
        this.b = intent;
    }

    public tr(Parcel parcel) {
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
        sb.append("ActivityResult{resultCode=");
        int i = this.a;
        switch (i) {
            case -1:
                str = "RESULT_OK";
                break;
            case 0:
                str = "RESULT_CANCELED";
                break;
            default:
                str = String.valueOf(i);
                break;
        }
        sb.append(str);
        sb.append(", data=");
        sb.append(this.b);
        sb.append('}');
        return sb.toString();
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
