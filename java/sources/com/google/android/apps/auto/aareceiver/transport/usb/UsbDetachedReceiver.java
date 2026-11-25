package com.google.android.apps.auto.aareceiver.transport.usb;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import j$.util.Collection;
import j$.util.function.Predicate;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class UsbDetachedReceiver extends BroadcastReceiver implements ProjectionSessionLifecycleListener_bag {
    private static final FloggerLoggerFactory c = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/transport/usb/UsbDetachedReceiver");
    public final Context a;
    private final DeviceTracker d;
    private final DeviceRegistryBase e;
    private final WirelessDiscoveryController f;
    private final TelemetryTracker g;
    private ProjectionDevice h = null;
    public boolean b = false;

    public UsbDetachedReceiver(Context context, DeviceTracker bahVar, DeviceRegistryBase bbyVar, WirelessDiscoveryController awhVar, TelemetryTracker bdeVar) {
        this.a = context;
        this.d = bahVar;
        this.e = bbyVar;
        this.f = awhVar;
        this.g = bdeVar;
        bahVar.n(this);
    }

    @Override // defpackage.ProjectionSessionLifecycleListener_bag
    public final /* synthetic */ void f(ProjectionDevice awoVar) {
    }

    @Override // defpackage.ProjectionSessionLifecycleListener_bag
    public final /* synthetic */ void g(ProjectionDevice awoVar) {
    }

    @Override // defpackage.ProjectionSessionLifecycleListener_bag
    public final void h(ProjectionSession bblVar) {
        if (bblVar.g != ProjectionTransportType.USB) {
            this.h = null;
            return;
        }
        ProjectionDevice awoVar = bblVar.h;
        this.h = awoVar;
        awoVar.e();
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(final Context context, Intent intent) {
        String usbSerialSafe;
        if ("android.hardware.usb.action.USB_DEVICE_DETACHED".equals(intent.getAction())) {
            UsbDevice usbDevice = (UsbDevice) intent.getParcelableExtra("device");
            if (usbDevice == null) {
                ((ParameterizedLoggerApi) UsbSerialProvider.a.c().h("com/google/android/apps/auto/aareceiver/transport/usb/UsbSerialProvider", "extractSerial", 30, "UsbSerialProvider.java")).n("Missing USB device");
                usbSerialSafe = null;
            } else {
                usbSerialSafe = CarCompat.getUsbSerialSafe(usbDevice);
            }
        } else {
            ((ParameterizedLoggerApi) UsbSerialProvider.a.b().h("com/google/android/apps/auto/aareceiver/transport/usb/UsbSerialProvider", "extractSerial", 23, "UsbSerialProvider.java")).p("USB serial provider invoked for the wrong action %s", intent.getAction());
            usbSerialSafe = null;
        }
        if (usbSerialSafe == null) {
            return;
        }
        this.g.c();
        this.d.l(usbSerialSafe);
        if (Collection.EL.stream(this.d.i()).noneMatch(new Predicate() { // from class: beb
            @Override // j$.util.function.Predicate
            public final /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate.CC.$default$and(this, predicate);
            }

            @Override // j$.util.function.Predicate
            public final /* synthetic */ Predicate negate() {
                return Predicate.CC.$default$negate(this);
            }

            @Override // j$.util.function.Predicate
            public final /* synthetic */ Predicate or(Predicate predicate) {
                return Predicate.CC.$default$or(this, predicate);
            }

            @Override // j$.util.function.Predicate
            public final boolean test(Object obj) {
                return UsbUtils.a(context, (ProjectionDevice) obj) != null;
            }
        })) {
            this.d.r(this);
            this.a.unregisterReceiver(this);
            this.b = false;
        }
        ProjectionDevice awoVar = this.h;
        if (awoVar == null || awoVar.e() == null || !this.h.e().equals(usbSerialSafe)) {
            return;
        }
        if (AaReceiverFlags45353302Facade.a.a().a()) {
            String e = this.h.e();
            ProjectionDevice c2 = this.e.c(ProtoFlagValueMessage);
            this.h = c2;
            if (c2 == null) {
                ((ParameterizedLoggerApi) c.c().h("com/google/android/apps/auto/aareceiver/transport/usb/UsbDetachedReceiver", "onReceive", 93, "UsbDetachedReceiver.java")).p("ProjectionDevice not found for serial: %s", e);
                return;
            }
        }
        this.h.c();
        if (!AaReceiverFlags45356796Facade.a.a().e()) {
            if (this.h != null) {
                if (ProjectionCloseReason.CONNECTION_ERROR.equals(this.h.c()) || ProjectionCloseReason.PING_TIMEOUT.equals(this.h.c()) || this.h.c() == null) {
                    this.f.e(this.h, ProjectionStartReason.AUTO_LAUNCH);
                    this.h = null;
                    return;
                }
                return;
            }
            return;
        }
        ProjectionDevice awoVar2 = this.h;
        if (awoVar2 == null) {
            ((ParameterizedLoggerApi) c.b().h("com/google/android/apps/auto/aareceiver/transport/usb/UsbDetachedReceiver", "maybeRestartProjection", 123, "UsbDetachedReceiver.java")).n("Restart projection without projectionUsbDevice.");
            return;
        }
        ProjectionCloseReason c3 = awoVar2.c();
        if (c3 == null) {
            this.f.e(this.h, ProjectionStartReason.AUTO_LAUNCH);
            this.h = null;
            return;
        }
        switch (c3.ordinal()) {
            case 4:
                if (this.d.v(this.h, ProjectionTransportType.WIRELESS)) {
                    Context context2 = this.a;
                    context2.startActivity(ProjectionIntentHelper.d(context2, this.h, ProjectionTransportType.WIRELESS, ProjectionStartReason.AUTO_LAUNCH));
                    break;
                }
                break;
            case 7:
                this.f.e(this.h, ProjectionStartReason.AUTO_LAUNCH);
                break;
        }
        this.h = null;
    }
}
