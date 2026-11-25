package defpackage;

import android.bluetooth.BluetoothDevice;
import android.os.Parcel;
import android.os.Parcelable;
import j$.util.Objects;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProjectionDeviceImpl implements ProjectionDevice {
    public static final Parcelable.Creator CREATOR = new GmsSafeParcelableCreatorSwitch(8);
    public final long a;
    public BluetoothDevice b;
    public String c;
    public String d;
    public ProjectionVisibilityState e = ProjectionVisibilityState.NEVER_PROJECTED;
    public boolean f = true;
    public ProjectionCloseReason g = null;

    public ProjectionDeviceImpl(long j) {
        this.a = j;
    }

    public static ProjectionCloseReason g(String str) {
        if (str == null) {
            return null;
        }
        try {
            return ProjectionCloseReason.a(str);
        } catch (IllegalArgumentException e) {
            int i = bco.b;
            return null;
        }
    }

    static String h(ProjectionCloseReason clyVar) {
        if (clyVar == null) {
            return null;
        }
        return clyVar.name();
    }

    @Override // defpackage.ProjectionDevice
    public final BluetoothDevice a() {
        return this.b;
    }

    @Override // defpackage.ProjectionDevice
    public final ProjectionVisibilityState b() {
        return this.e;
    }

    @Override // defpackage.ProjectionDevice
    public final ProjectionCloseReason c() {
        return this.g;
    }

    @Override // defpackage.ProjectionDevice
    public final String d() {
        return this.d;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // defpackage.ProjectionDevice
    public final String e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ProjectionDeviceImpl)) {
            return false;
        }
        ProjectionDeviceImpl bcnVar = (ProjectionDeviceImpl) obj;
        BluetoothDevice bluetoothDevice = this.b;
        if (bluetoothDevice != null && Objects.equals(bluetoothDevice, bcnVar.b)) {
            return true;
        }
        String str = this.c;
        return str != null && str.equals(bcnVar.c);
    }

    @Override // defpackage.ProjectionDevice
    public final boolean f() {
        ProjectionCloseReason clyVar = this.g;
        return clyVar == ProjectionCloseReason.HU_BYEBYE || clyVar == ProjectionCloseReason.MD_BYEBYE || clyVar == ProjectionCloseReason.USER_SWITCH;
    }

    public final int hashCode() {
        long j = this.a;
        return (int) (ProtoMessageTwoIntsAndFlagValue ^ (ProtoMessageTwoIntsAndFlagValue >>> 32));
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
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append(" [bt=");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append(" usb=");
        StaggeredGridLayoutParams.append(str2);
        StaggeredGridLayoutParams.append(" autolaunch=");
        StaggeredGridLayoutParams.append(valueOf2);
        StaggeredGridLayoutParams.append(" lastStopReason=");
        StaggeredGridLayoutParams.append(valueOf3);
        StaggeredGridLayoutParams.append("]");
        return StaggeredGridLayoutParams.toString();
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
