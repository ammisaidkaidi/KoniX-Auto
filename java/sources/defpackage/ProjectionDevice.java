package defpackage;

import android.bluetooth.BluetoothDevice;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public interface ProjectionDevice extends Parcelable {
    BluetoothDevice a();

    ProjectionVisibilityState b();

    ProjectionCloseReason c();

    String d();

    String e();

    boolean f();
}
