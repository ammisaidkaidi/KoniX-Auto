package defpackage;

import android.hardware.usb.UsbDevice;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import j$.util.Objects;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PersistentServiceSessionListener implements ProjectionSessionLifecycleListener_bag {
    final /* synthetic */ PersistentServiceController a;

    public PersistentServiceSessionListener(PersistentServiceController batVar) {
        this.a = batVar;
    }

    @Override // defpackage.ProjectionSessionLifecycleListener_bag
    public final /* synthetic */ void f(ProjectionDevice awoVar) {
    }

    @Override // defpackage.ProjectionSessionLifecycleListener_bag
    public final void g(ProjectionDevice awoVar) {
        UsbDevice usbDevice = this.a.g;
        if (usbDevice == null || CarCompat.getUsbSerialSafe(usbDevice) == null || !Objects.equals(CarCompat.getUsbSerialSafe(this.a.g), awoVar.e())) {
            return;
        }
        PersistentServiceController batVar = this.a;
        batVar.g = null;
        batVar.f = null;
    }

    @Override // defpackage.ProjectionSessionLifecycleListener_bag
    public final void h(ProjectionSession bblVar) {
        if (bblVar.g == ProjectionTransportType.USB) {
            PersistentServiceController batVar = this.a;
            batVar.g = UsbUtils.a(batVar.b, bblVar.h);
            PersistentServiceController batVar2 = this.a;
            UsbDevice usbDevice = batVar2.g;
            if (usbDevice != null) {
                batVar2.f = UsbUtils.c(batVar2.b, usbDevice);
            } else {
                ((ParameterizedLoggerApi) PersistentServiceController.a.b().h("com/google/android/apps/auto/aareceiver/service/PersistentServiceController$2", "onProjectionSessionStarted", 119, "PersistentServiceController.java")).p("Device unexpectedly not found: %s", bblVar.h);
                this.a.f = null;
            }
        }
    }
}
