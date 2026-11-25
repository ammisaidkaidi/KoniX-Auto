package com.google.android.apps.auto.aareceiver.service;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import defpackage.awo;
import defpackage.awp;
import defpackage.bah;
import defpackage.bao;
import defpackage.bbl;
import defpackage.cla;
import defpackage.csx;
import defpackage.csz;
import defpackage.hh;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ProjectionCommandReceiver extends bao {
    private static final csz c = csz.g("com/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver");
    public bah a;
    public BluetoothAdapter b;

    private final void b(int i) {
        if (i != 0) {
            ((csx) c.c().h("com/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver", "setResult", 165, "ProjectionCommandReceiver.java")).o("Error occurred while serving the request: %d", i);
        }
        setResultCode(i);
    }

    private static void c(Context context, awo awoVar, awp awpVar, cla claVar) {
        context.startActivity(hh.d(context, awoVar, awpVar, claVar));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0096, code lost:
    
        if (r0.equals("com.android.car.projection.action.START_WIRELESS") != false) goto L42;
     */
    @Override // defpackage.bao, android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onReceive(Context context, Intent intent) {
        cla claVar;
        awp awpVar;
        BluetoothAdapter bluetoothAdapter;
        a(context);
        String action = intent.getAction();
        char c2 = 1;
        if (action == null) {
            b(1);
            return;
        }
        if (intent.getExtras() == null) {
            b(2);
            return;
        }
        Bundle extras = intent.getExtras();
        String string = extras.getString("com.android.car.projection.extra.USB_SERIAL_NUMBER");
        String string2 = extras.getString("com.android.car.projection.extra.BLUETOOTH_ADDRESS");
        BluetoothDevice bluetoothDevice = null;
        if (BluetoothAdapter.checkBluetoothAddress(string2) && (bluetoothAdapter = this.b) != null) {
            bluetoothDevice = bluetoothAdapter.getRemoteDevice(string2);
        }
        awo d = this.a.d(string, bluetoothDevice);
        if (d == null) {
            b(5);
            return;
        }
        boolean v = this.a.v(d, awp.USB);
        boolean v2 = this.a.v(d, awp.WIRELESS);
        if (intent.hasExtra("com.android.car.projection.extra.START_REQUEST_REASON")) {
            claVar = cla.b(intent.getIntExtra("com.android.car.projection.extra.START_REQUEST_REASON", cla.USER_REQUEST.d));
            if (claVar == null) {
                claVar = cla.USER_REQUEST;
            }
        } else {
            claVar = cla.USER_REQUEST;
        }
        switch (action.hashCode()) {
            case -1814187544:
                if (action.equals("com.android.car.projection.action.START_USB")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1041317478:
                break;
            case -564779679:
                if (action.equals("com.android.car.projection.action.STOP")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -328314173:
                if (action.equals("com.android.car.projection.action.START")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                if (v) {
                    if (!v2) {
                        awpVar = awp.USB;
                        c(context, d, awpVar, claVar);
                        break;
                    }
                } else if (!v2) {
                    b(5);
                    return;
                }
                awpVar = awp.WIRELESS;
                c(context, d, awpVar, claVar);
            case 1:
                if (!v2) {
                    b(6);
                    return;
                } else {
                    c(context, d, awp.WIRELESS, claVar);
                    break;
                }
            case 2:
                if (!v) {
                    b(7);
                    return;
                } else {
                    c(context, d, awp.USB, claVar);
                    break;
                }
            case 3:
                bbl bblVar = this.a.h;
                if (bblVar != null && d.equals(bblVar.h)) {
                    bblVar.f();
                    break;
                } else {
                    ((csx) c.c().h("com/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver", "onReceive", 98, "ProjectionCommandReceiver.java")).t("Received stop request for %s, but didn't find matched session. Current session: %s", d, bblVar);
                    break;
                }
                break;
            default:
                b(3);
                return;
        }
        b(0);
    }
}
