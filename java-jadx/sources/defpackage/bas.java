package defpackage;

import android.hardware.usb.UsbDevice;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import j$.util.Objects;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bas implements bag {
    final /* synthetic */ bat a;

    public bas(bat batVar) {
        this.a = batVar;
    }

    @Override // defpackage.bag
    public final /* synthetic */ void f(awo awoVar) {
    }

    @Override // defpackage.bag
    public final void g(awo awoVar) {
        UsbDevice usbDevice = this.a.g;
        if (usbDevice == null || CarCompat.getUsbSerialSafe(usbDevice) == null || !Objects.equals(CarCompat.getUsbSerialSafe(this.a.g), awoVar.e())) {
            return;
        }
        bat batVar = this.a;
        batVar.g = null;
        batVar.f = null;
    }

    @Override // defpackage.bag
    public final void h(bbl bblVar) {
        if (bblVar.g == awp.USB) {
            bat batVar = this.a;
            batVar.g = beh.a(batVar.b, bblVar.h);
            bat batVar2 = this.a;
            UsbDevice usbDevice = batVar2.g;
            if (usbDevice != null) {
                batVar2.f = beh.c(batVar2.b, usbDevice);
            } else {
                ((csx) bat.a.b().h("com/google/android/apps/auto/aareceiver/service/PersistentServiceController$2", "onProjectionSessionStarted", 119, "PersistentServiceController.java")).p("Device unexpectedly not found: %s", bblVar.h);
                this.a.f = null;
            }
        }
    }
}
