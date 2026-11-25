package com.google.android.apps.auto.aareceiver.transport.usb;

import android.hardware.usb.UsbDevice;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import defpackage.ProjectionDevice;
import defpackage.ProjectionTransportType;
import com.google.android.apps.auto.aareceiver.service.DeviceTracker;
import com.google.android.apps.auto.aareceiver.session.ProjectionSession;
import defpackage.AoapSupportService;
import defpackage.ParameterizedLoggerApi;
import defpackage.FloggerLoggerFactory;

/* compiled from: PG */
/* loaded from: classes.dex */
public class AoapSupportCheckService extends AoapSupportService {
    private static final FloggerLoggerFactory b = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/transport/usb/AoapSupportCheckService");
    public DeviceTracker a;

    @Override // android.car.AoapService
    public final int canSwitchToAoap(UsbDevice usbDevice) {
        ProjectionDevice awoVar;
        if (!this.a.y(usbDevice)) {
            ((ParameterizedLoggerApi) b.c().h("com/google/android/apps/auto/aareceiver/transport/usb/AoapSupportCheckService", "canSwitchToAoap", 30, "AoapSupportCheckService.java")).p("canSwitchToAoap, projection over USB for device %s is not supported", usbDevice);
            return 1;
        }
        String usbSerialSafe = CarCompat.getUsbSerialSafe(usbDevice);
        ProjectionDevice d = this.a.d(usbSerialSafe, null);
        if (d != null && this.a.v(d, ProjectionTransportType.WIRELESS)) {
            return 2;
        }
        ProjectionSession bblVar = this.a.h;
        return (bblVar == null || (awoVar = bblVar.h) == null || awoVar.e() == null || !awoVar.e().equals(usbSerialSafe)) ? 0 : 2;
    }

    @Override // android.car.AoapService
    public final int isDeviceSupported(UsbDevice usbDevice) {
        return this.a.y(usbDevice) ? 0 : 1;
    }
}
