package com.google.android.apps.auto.aareceiver.service;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import defpackage.ProjectionDevice;
import defpackage.ProjectionTransportType;
import com.google.android.apps.auto.aareceiver.service.DeviceTracker;
import defpackage.PersistentServiceAclReceiver;
import com.google.android.apps.auto.aareceiver.session.ProjectionSession;
import defpackage.ProjectionStartReason;
import defpackage.ParameterizedLoggerApi;
import defpackage.FloggerLoggerFactory;
import defpackage.ProjectionIntentHelper;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ProjectionCommandReceiver extends PersistentServiceAclReceiver {
    private static final FloggerLoggerFactory c = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver");
    public DeviceTracker a;
    public BluetoothAdapter b;

    private final void b(int i) {
        if (i != 0) {
            ((ParameterizedLoggerApi) c.c().h("com/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver", "setResult", 165, "ProjectionCommandReceiver.java")).o("Error occurred while serving the request: %d", i);
        }
        setResultCode(i);
    }

    private static void c(Context context, ProjectionDevice awoVar, ProjectionTransportType awpVar, ProjectionStartReason claVar) {
        context.startActivity(ProjectionIntentHelper.d(context, awoVar, awpVar, claVar));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0096, code lost:
    
        if (r0.equals("com.android.car.projection.action.START_WIRELESS") != false) goto L42;
     */
    @Override // defpackage.PersistentServiceAclReceiver, android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onReceive(Context context, Intent intent) {
        ProjectionStartReason claVar;
        ProjectionTransportType awpVar;
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
        ProjectionDevice d = this.a.d(string, bluetoothDevice);
        if (d == null) {
            b(5);
            return;
        }
        boolean v = this.a.v(d, ProjectionTransportType.USB);
        boolean v2 = this.a.v(d, ProjectionTransportType.WIRELESS);
        if (intent.hasExtra("com.android.car.projection.extra.START_REQUEST_REASON")) {
            claVar = ProjectionStartReason.b(intent.getIntExtra("com.android.car.projection.extra.START_REQUEST_REASON", ProjectionStartReason.USER_REQUEST.d));
            if (claVar == null) {
                claVar = ProjectionStartReason.USER_REQUEST;
            }
        } else {
            claVar = ProjectionStartReason.USER_REQUEST;
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
                        awpVar = ProjectionTransportType.USB;
                        c(context, d, awpVar, claVar);
                        break;
                    }
                } else if (!v2) {
                    b(5);
                    return;
                }
                awpVar = ProjectionTransportType.WIRELESS;
                c(context, d, awpVar, claVar);
            case 1:
                if (!v2) {
                    b(6);
                    return;
                } else {
                    c(context, d, ProjectionTransportType.WIRELESS, claVar);
                    break;
                }
            case 2:
                if (!v) {
                    b(7);
                    return;
                } else {
                    c(context, d, ProjectionTransportType.USB, claVar);
                    break;
                }
            case 3:
                ProjectionSession bblVar = this.a.h;
                if (bblVar != null && d.equals(bblVar.h)) {
                    bblVar.f();
                    break;
                } else {
                    ((ParameterizedLoggerApi) c.c().h("com/google/android/apps/auto/aareceiver/service/ProjectionCommandReceiver", "onReceive", 98, "ProjectionCommandReceiver.java")).t("Received stop request for %s, but didn't find matched session. Current session: %s", d, bblVar);
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
