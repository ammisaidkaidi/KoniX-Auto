package com.google.android.apps.auto.aareceiver.transport.usb;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.os.Bundle;
import android.widget.Toast;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import com.google.android.embedded.projection.R;
import com.google.android.apps.auto.aareceiver.bluetooth.WirelessDiscoveryController;
import defpackage.ProjectionDevice;
import defpackage.ProjectionTransportType;
import defpackage.DisplayDimensions;
import com.google.android.apps.auto.aareceiver.service.AndroidAutoHeadunitProjectionHandler;
import defpackage.ProjectionDeviceNotificationInfo;
import com.google.android.apps.auto.aareceiver.service.DeviceTracker;
import defpackage.DeviceRegistryBase;
import com.google.android.apps.auto.aareceiver.telemetry.TelemetryTracker;
import defpackage.NewDeviceActivityBase;
import com.google.android.apps.auto.aareceiver.transport.usb.UsbDetachedReceiver;
import com.google.android.apps.auto.aareceiver.transport.usb.UsbSerialProvider;
import com.google.android.apps.auto.aareceiver.transport.usb.UsbUtils;
import defpackage.StartupTimingRecorder;
import defpackage.ParameterizedLoggerApi;
import defpackage.FloggerLoggerFactory;

/* compiled from: PG */
/* loaded from: classes.dex */
public class NewDeviceActivity extends NewDeviceActivityBase {
    private static final FloggerLoggerFactory o = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity");
    private static UsbDetachedReceiver p = null;
    public DeviceTracker b;
    public DeviceRegistryBase c;
    public WirelessDiscoveryController d;
    public AndroidAutoHeadunitProjectionHandler e;
    public DisplayDimensions l;
    public TelemetryTracker m;
    public UsbSerialProvider n;

    public NewDeviceActivity() {
        StartupTimingRecorder.a.a();
    }

    @Override // defpackage.ComponentActivity, defpackage.ComponentActivityBase, android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context applicationContext = getApplicationContext();
        Intent intent = getIntent();
        String action = intent.getAction();
        UsbDevice usbDevice = (UsbDevice) intent.getParcelableExtra("device");
        if (CarCompat.interceptNewDeviceActivity(this, usbDevice)) {
            return;
        }
        UsbUtils.d(usbDevice);
        if (UsbUtils.b(applicationContext, CarCompat.getUsbSerialSafe(usbDevice)) == null) {
            ((ParameterizedLoggerApi) o.c().h("com/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity", "onCreate", 71, "NewDeviceActivity.java")).n("UsbDevice from UsbManager is either not connected or is not in AOAP mode. Resetting the device received in NewDeviceActivity.");
            if (!UsbUtils.e(applicationContext, usbDevice)) {
                Toast.makeText(getApplicationContext(), getString(R.string.instruct_user_to_replug_usb_device), 1).show();
            }
            finish();
            return;
        }
        if ("android.hardware.usb.action.USB_DEVICE_ATTACHED".equals(action)) {
            this.m.c();
            DeviceTracker bahVar = this.b;
            ProjectionDeviceNotificationInfo bafVar = (ProjectionDeviceNotificationInfo) bahVar.f.c(CarCompat.getUsbSerialSafe(usbDevice));
            if (bafVar == null) {
                bafVar = bahVar.e(bahVar.d.e(usbDevice));
            }
            bahVar.o(bafVar, ProjectionTransportType.USB);
            UsbDetachedReceiver becVar = p;
            if (becVar == null || !becVar.b) {
                UsbDetachedReceiver becVar2 = new UsbDetachedReceiver(applicationContext, this.b, this.c, this.d, this.m);
                p = becVar2;
                becVar2.a.registerReceiver(becVar2, new IntentFilter("android.hardware.usb.action.USB_DEVICE_DETACHED"));
                becVar2.b = true;
            }
            ProjectionDevice d = this.b.d(CarCompat.getUsbSerialSafe(usbDevice), null);
            if (d == null || !this.b.z(d)) {
                finish();
                return;
            } else {
                if (!this.l.c()) {
                    finish();
                    return;
                }
                this.e.d(applicationContext, ProjectionTransportType.USB, d, this.l.b(), this.l.a(), true);
            }
        } else {
            ((ParameterizedLoggerApi) o.b().h("com/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity", "onCreate", 127, "NewDeviceActivity.java")).p("Unexpected intent action: %s", action);
        }
        finish();
    }
}
