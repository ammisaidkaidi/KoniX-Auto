package defpackage;

import android.bluetooth.BluetoothDevice;
import android.hardware.usb.UsbDevice;

/* compiled from: PG */
/* loaded from: classes.dex */
public interface DeviceRegistryBase {
    ProjectionDevice a(BluetoothDevice bluetoothDevice, String str);

    ProjectionDevice b(BluetoothDevice bluetoothDevice);

    ProjectionDevice c(String str);

    ProjectionDevice d(BluetoothDevice bluetoothDevice);

    ProjectionDevice e(UsbDevice usbDevice);

    ProjectionDevice f(String str, String str2);

    ProjectionDevice g(ProjectionDevice awoVar, ProjectionCloseReason clyVar);

    ProjectionDevice h(ProjectionDevice awoVar, ProjectionVisibilityState bcqVar);

    void i();

    void j(ProjectionDevice awoVar, String str);

    void k(BluetoothDevice bluetoothDevice);

    void l(ProjectionDevice awoVar);
}
