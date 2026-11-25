package defpackage;

import android.bluetooth.BluetoothDevice;
import android.os.Parcel;
import android.os.Parcelable;
import j$.util.Objects;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bcn implements awo {
    public static final Parcelable.Creator CREATOR = new acg(8);
    public final long a;
    public BluetoothDevice b;
    public String c;
    public String d;
    public bcq e = bcq.NEVER_PROJECTED;
    public boolean f = true;
    public cly g = null;

    public bcn(long j) {
        this.a = j;
    }

    public static cly g(String str) {
        if (str == null) {
            return null;
        }
        try {
            return cly.a(str);
        } catch (IllegalArgumentException e) {
            int i = bco.b;
            return null;
        }
    }

    static String h(cly clyVar) {
        if (clyVar == null) {
            return null;
        }
        return clyVar.name();
    }

    @Override // defpackage.awo
    public final BluetoothDevice a() {
        return this.b;
    }

    @Override // defpackage.awo
    public final bcq b() {
        return this.e;
    }

    @Override // defpackage.awo
    public final cly c() {
        return this.g;
    }

    @Override // defpackage.awo
    public final String d() {
        return this.d;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // defpackage.awo
    public final String e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof bcn)) {
            return false;
        }
        bcn bcnVar = (bcn) obj;
        BluetoothDevice bluetoothDevice = this.b;
        if (bluetoothDevice != null && Objects.equals(bluetoothDevice, bcnVar.b)) {
            return true;
        }
        String str = this.c;
        return str != null && str.equals(bcnVar.c);
    }

    @Override // defpackage.awo
    public final boolean f() {
        cly clyVar = this.g;
        return clyVar == cly.HU_BYEBYE || clyVar == cly.MD_BYEBYE || clyVar == cly.USER_SWITCH;
    }

    public final int hashCode() {
        long j = this.a;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        String str = this.d;
        String valueOf = String.valueOf(this.b);
        String str2 = this.c;
        String valueOf2 = String.valueOf(this.e);
        String valueOf3 = String.valueOf(this.g);
        int length = String.valueOf(str).length();
        int length2 = String.valueOf(valueOf).length();
        int length3 = String.valueOf(str2).length();
        StringBuilder sb = new StringBuilder(length + 39 + length2 + length3 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length());
        sb.append(str);
        sb.append(" [bt=");
        sb.append(valueOf);
        sb.append(" usb=");
        sb.append(str2);
        sb.append(" autolaunch=");
        sb.append(valueOf2);
        sb.append(" lastStopReason=");
        sb.append(valueOf3);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.a);
        parcel.writeParcelable(this.b, 0);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e.d);
        parcel.writeByte(this.f ? (byte) 1 : (byte) 0);
        parcel.writeString(h(this.g));
    }
}
