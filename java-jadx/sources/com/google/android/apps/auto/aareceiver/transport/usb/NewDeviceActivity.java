package com.google.android.apps.auto.aareceiver.transport.usb;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.os.Bundle;
import android.widget.Toast;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import com.google.android.embedded.projection.R;
import defpackage.awh;
import defpackage.awo;
import defpackage.awp;
import defpackage.awy;
import defpackage.azy;
import defpackage.baf;
import defpackage.bah;
import defpackage.bby;
import defpackage.bde;
import defpackage.bea;
import defpackage.bec;
import defpackage.bef;
import defpackage.beh;
import defpackage.caa;
import defpackage.csx;
import defpackage.csz;

/* compiled from: PG */
/* loaded from: classes.dex */
public class NewDeviceActivity extends bea {
    private static final csz o = csz.g("com/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity");
    private static bec p = null;
    public bah b;
    public bby c;
    public awh d;
    public azy e;
    public awy l;
    public bde m;
    public bef n;

    public NewDeviceActivity() {
        caa.a.a();
    }

    @Override // defpackage.tk, defpackage.ActivityC0003do, android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context applicationContext = getApplicationContext();
        Intent intent = getIntent();
        String action = intent.getAction();
        UsbDevice usbDevice = (UsbDevice) intent.getParcelableExtra("device");
        if (CarCompat.interceptNewDeviceActivity(this, usbDevice)) {
            return;
        }
        beh.d(usbDevice);
        if (beh.b(applicationContext, CarCompat.getUsbSerialSafe(usbDevice)) == null) {
            ((csx) o.c().h("com/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity", "onCreate", 71, "NewDeviceActivity.java")).n("UsbDevice from UsbManager is either not connected or is not in AOAP mode. Resetting the device received in NewDeviceActivity.");
            if (!beh.e(applicationContext, usbDevice)) {
                Toast.makeText(getApplicationContext(), getString(R.string.instruct_user_to_replug_usb_device), 1).show();
            }
            finish();
            return;
        }
        if ("android.hardware.usb.action.USB_DEVICE_ATTACHED".equals(action)) {
            this.m.c();
            bah bahVar = this.b;
            baf bafVar = (baf) bahVar.f.c(CarCompat.getUsbSerialSafe(usbDevice));
            if (bafVar == null) {
                bafVar = bahVar.e(bahVar.d.e(usbDevice));
            }
            bahVar.o(bafVar, awp.USB);
            bec becVar = p;
            if (becVar == null || !becVar.b) {
                bec becVar2 = new bec(applicationContext, this.b, this.c, this.d, this.m);
                p = becVar2;
                becVar2.a.registerReceiver(becVar2, new IntentFilter("android.hardware.usb.action.USB_DEVICE_DETACHED"));
                becVar2.b = true;
            }
            awo d = this.b.d(CarCompat.getUsbSerialSafe(usbDevice), null);
            if (d == null || !this.b.z(d)) {
                finish();
                return;
            } else {
                if (!this.l.c()) {
                    finish();
                    return;
                }
                this.e.d(applicationContext, awp.USB, d, this.l.b(), this.l.a(), true);
            }
        } else {
            ((csx) o.b().h("com/google/android/apps/auto/aareceiver/transport/usb/NewDeviceActivity", "onCreate", 127, "NewDeviceActivity.java")).p("Unexpected intent action: %s", action);
        }
        finish();
    }
}
