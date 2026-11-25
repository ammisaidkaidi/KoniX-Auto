package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.os.Process;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import com.google.android.apps.auto.aareceiver.service.PersistentService;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bar extends BroadcastReceiver {
    final /* synthetic */ bat a;

    public bar(bat batVar) {
        this.a = batVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        char c;
        UsbDeviceConnection usbDeviceConnection;
        intent.getAction();
        Process.myUserHandle();
        String action = intent.getAction();
        switch (action.hashCode()) {
            case 735264466:
                if (action.equals("android.intent.action.USER_FOREGROUND")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1713580733:
                if (action.equals("android.intent.action.USER_BACKGROUND")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                bat batVar = this.a;
                UsbDevice usbDevice = batVar.g;
                if (usbDevice != null && (usbDeviceConnection = batVar.f) != null) {
                    beh.f(usbDevice, usbDeviceConnection);
                    bat batVar2 = this.a;
                    batVar2.f = null;
                    batVar2.g = null;
                }
                bat batVar3 = this.a;
                PersistentService persistentService = batVar3.d;
                if (persistentService != null) {
                    persistentService.b();
                }
                if (batVar3.e) {
                    batVar3.e = false;
                    CarCompat.unregisterProjectionRunner(batVar3.c, bat.a(batVar3.b));
                    break;
                }
                break;
            case 1:
                this.a.c();
                break;
            default:
                ((csx) bat.a.b().h("com/google/android/apps/auto/aareceiver/service/PersistentServiceController$1", "onReceive", 101, "PersistentServiceController.java")).p("Unexpected action received: %s", intent.getAction());
                break;
        }
    }
}
