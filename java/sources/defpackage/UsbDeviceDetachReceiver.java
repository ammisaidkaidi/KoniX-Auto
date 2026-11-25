package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;

/* compiled from: PG */
/* loaded from: classes.dex */
final class UsbDeviceDetachReceiver extends BroadcastReceiver {
    final /* synthetic */ UsbTransportFactory a;

    public UsbDeviceDetachReceiver(UsbTransportFactory cmmVar) {
        this.a = cmmVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        UsbDevice usbDevice;
        TransportFutureCallback bbjVar;
        if (!"android.hardware.usb.action.USB_DEVICE_DETACHED".equals(intent.getAction()) || (usbDevice = (UsbDevice) intent.getParcelableExtra("device")) == null || (bbjVar = (TransportFutureCallback) this.a.a.remove(usbDevice)) == null) {
            return;
        }
        ProjectionLog.c("AHU.USB_HOST_CONNECTION", "Disconnected, finishing");
        bbjVar.b();
    }
}
