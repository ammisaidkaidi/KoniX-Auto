package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.os.Parcelable;
import android.util.ArrayMap;
import java.io.IOException;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class UsbTransportFactory implements TransportFactory {
    public final Map a;
    private final Context b;
    private final BroadcastReceiver c;
    private boolean d;
    private final /* synthetic */ int e;

    public UsbTransportFactory(Context context, int i, byte[] bArr) {
        this.e = i;
        UsbAccessoryDetachReceiver cmkVar = new UsbAccessoryDetachReceiver(this, null);
        this.c = cmkVar;
        this.a = new ArrayMap();
        Context applicationContext = context.getApplicationContext();
        this.b = applicationContext;
        applicationContext.registerReceiver(cmkVar, new IntentFilter("android.hardware.usb.action.USB_ACCESSORY_DETACHED"));
        this.d = true;
    }

    @Override // defpackage.TransportFactory
    public final TransportHandle b(Parcelable parcelable, TransportFutureCallback bbjVar) {
        switch (this.e) {
            case 0:
                if (!(parcelable instanceof UsbDevice)) {
                    return null;
                }
                UsbManager usbManager = (UsbManager) this.b.getSystemService("usb");
                if (usbManager == null) {
                    throw new IOException("Unable to get USB manager");
                }
                UsbTransportConnection cmpVar = new UsbTransportConnection(usbManager, (UsbDevice) parcelable);
                ProjectionLog.b("AHU.USB_HOST_CONNECTION", "Started USB host connection");
                this.a.put(parcelable, bbjVar);
                bbjVar.a(cmpVar);
                return cmj.a;
            default:
                return null;
        }
    }

    @Override // defpackage.TransportFactory
    public final void a() {
        switch (this.e) {
            case 0:
                if (this.d) {
                    this.b.unregisterReceiver(this.c);
                    this.d = false;
                    break;
                }
                break;
            default:
                if (this.d) {
                    this.b.unregisterReceiver(this.c);
                    this.d = false;
                    break;
                }
                break;
        }
    }

    public UsbTransportFactory(Context context, int i) {
        this.e = i;
        UsbDeviceDetachReceiver cmlVar = new UsbDeviceDetachReceiver(this);
        this.c = cmlVar;
        this.a = new ArrayMap();
        Context applicationContext = context.getApplicationContext();
        this.b = applicationContext;
        applicationContext.registerReceiver(cmlVar, new IntentFilter("android.hardware.usb.action.USB_DEVICE_DETACHED"));
        this.d = true;
    }
}
