package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbAccessory;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cmk extends BroadcastReceiver {
    final /* synthetic */ cmm a;

    public cmk(cmm cmmVar, byte[] bArr) {
        this.a = cmmVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        UsbAccessory usbAccessory;
        bbj bbjVar;
        if (!"android.hardware.usb.action.USB_ACCESSORY_DETACHED".equals(intent.getAction()) || (usbAccessory = (UsbAccessory) intent.getParcelableExtra("accessory")) == null || (bbjVar = (bbj) this.a.a.remove(usbAccessory)) == null) {
            return;
        }
        cjz.c("AHU.USB_ACC_CONNECTION", "Disconnected, finishing");
        bbjVar.b();
    }
}
