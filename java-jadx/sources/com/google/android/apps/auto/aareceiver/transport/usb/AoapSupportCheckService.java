package com.google.android.apps.auto.aareceiver.transport.usb;

import android.hardware.usb.UsbDevice;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import defpackage.awo;
import defpackage.awp;
import defpackage.bah;
import defpackage.bbl;
import defpackage.bdy;
import defpackage.csx;
import defpackage.csz;

/* compiled from: PG */
/* loaded from: classes.dex */
public class AoapSupportCheckService extends bdy {
    private static final csz b = csz.g("com/google/android/apps/auto/aareceiver/transport/usb/AoapSupportCheckService");
    public bah a;

    @Override // android.car.AoapService
    public final int canSwitchToAoap(UsbDevice usbDevice) {
        awo awoVar;
        if (!this.a.y(usbDevice)) {
            ((csx) b.c().h("com/google/android/apps/auto/aareceiver/transport/usb/AoapSupportCheckService", "canSwitchToAoap", 30, "AoapSupportCheckService.java")).p("canSwitchToAoap, projection over USB for device %s is not supported", usbDevice);
            return 1;
        }
        String usbSerialSafe = CarCompat.getUsbSerialSafe(usbDevice);
        awo d = this.a.d(usbSerialSafe, null);
        if (d != null && this.a.v(d, awp.WIRELESS)) {
            return 2;
        }
        bbl bblVar = this.a.h;
        return (bblVar == null || (awoVar = bblVar.h) == null || awoVar.e() == null || !awoVar.e().equals(usbSerialSafe)) ? 0 : 2;
    }

    @Override // android.car.AoapService
    public final int isDeviceSupported(UsbDevice usbDevice) {
        return this.a.y(usbDevice) ? 0 : 1;
    }
}
