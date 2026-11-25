package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cml extends BroadcastReceiver {
    final /* synthetic */ cmm a;

    public cml(cmm cmmVar) {
        this.a = cmmVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        UsbDevice usbDevice;
        bbj bbjVar;
        if (!"android.hardware.usb.action.USB_DEVICE_DETACHED".equals(intent.getAction()) || (usbDevice = (UsbDevice) intent.getParcelableExtra("device")) == null || (bbjVar = (bbj) this.a.a.remove(usbDevice)) == null) {
            return;
        }
        cjz.c("AHU.USB_HOST_CONNECTION", "Disconnected, finishing");
        bbjVar.b();
    }
}
