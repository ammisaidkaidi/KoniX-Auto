package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbAccessory;

/* compiled from: PG */
/* loaded from: classes.dex */
final class UsbAccessoryDetachReceiver extends BroadcastReceiver {
    final /* synthetic */ UsbTransportFactory a;

    public UsbAccessoryDetachReceiver(UsbTransportFactory cmmVar, byte[] bArr) {
        this.a = cmmVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        UsbAccessory usbAccessory;
        TransportFutureCallback bbjVar;
        if (!"android.hardware.usb.action.USB_ACCESSORY_DETACHED".equals(intent.getAction()) || (usbAccessory = (UsbAccessory) intent.getParcelableExtra("accessory")) == null || (bbjVar = (TransportFutureCallback) this.a.a.remove(usbAccessory)) == null) {
            return;
        }
        ProjectionLog.c("AHU.USB_ACC_CONNECTION", "Disconnected, finishing");
        bbjVar.b();
    }
}
