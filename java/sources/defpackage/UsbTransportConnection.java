package defpackage;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.util.Log;
import java.io.IOException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class UsbTransportConnection extends GalTransportConnection {
    public final UsbDeviceConnection a;
    public final UsbEndpoint b;
    public boolean c;
    private final UsbInterface d;
    private final UsbEndpoint e;
    private final ProtoReadBuffer f;
    private final UsbConnectionInputStream g;

    public UsbTransportConnection(UsbManager usbManager, UsbDevice usbDevice) {
        UsbConnectionInputStream cmoVar = new UsbConnectionInputStream(this);
        this.g = cmoVar;
        this.f = new ProtoReadBuffer(cmoVar);
        UsbDeviceConnection openDevice = usbManager.openDevice(usbDevice);
        this.a = openDevice;
        if (openDevice == null) {
            throw new IOException("connection failed to open");
        }
        UsbInterface usbInterface = usbDevice.getInterface(0);
        this.d = usbInterface;
        if (usbInterface == null) {
            throw new IOException("interface not available");
        }
        if (!openDevice.claimInterface(usbInterface, true)) {
            throw new IOException("interface could not be claimed");
        }
        UsbEndpoint usbEndpoint = null;
        UsbEndpoint usbEndpoint2 = null;
        for (int i = 0; NavInstructionTypeEnum < this.d.getEndpointCount(); i++) {
            UsbEndpoint endpoint = this.d.getEndpoint(NavInstructionTypeEnum);
            if (endpoint.getType() == 2) {
                if (endpoint.getDirection() == 128) {
                    String.format("Found bulk IN endpoint at %d", Integer.valueOf(NavInstructionTypeEnum));
                    usbEndpoint = endpoint;
                } else if (endpoint.getDirection() == 0) {
                    String.format("Found bulk OUT endpoint at %d", Integer.valueOf(NavInstructionTypeEnum));
                    usbEndpoint2 = endpoint;
                }
            }
        }
        if (usbEndpoint == null) {
            throw new IOException("Could not find USB bulk in endpoint");
        }
        if (usbEndpoint2 == null) {
            throw new IOException("Could not find USB bulk out endpoint");
        }
        this.b = usbEndpoint;
        this.e = usbEndpoint2;
        this.c = true;
    }

    @Override // defpackage.GalTransportConnection
    public final int a(byte[] bArr, int i, int i2) {
        int i3;
        if (!this.c) {
            throw new IOException("Connection was closed.");
        }
        ProtoReadBuffer cjxVar = this.f;
        int i4 = cjxVar.b;
        int i5 = cjxVar.c;
        int i6 = i4 - i5;
        if (i6 > 0) {
            System.arraycopy(cjxVar.a, i5, bArr, i, Math.min(i2, i6));
            if (i6 >= i2) {
                cjxVar.c += i2;
                return i2;
            }
            i3 = i2 - i6;
            i += i6;
        } else {
            i3 = i2;
        }
        cjxVar.b = 0;
        cjxVar.c = 0;
        Thread currentThread = Thread.currentThread();
        while (i3 > 32768) {
            if (currentThread.isInterrupted()) {
                throw new IOException("interrupted");
            }
            int a = cjxVar.d.a(bArr, i, i3);
            if (SingleStringProtoMessage > 0) {
                i += a;
                i3 -= a;
            } else if (SingleStringProtoMessage < 0) {
                StringBuilder sb = new StringBuilder(23);
                StaggeredGridLayoutParams.append("read failed ");
                StaggeredGridLayoutParams.append(SingleStringProtoMessage);
                throw new IOException(StaggeredGridLayoutParams.toString());
            }
        }
        while (i3 > cjxVar.b) {
            if (currentThread.isInterrupted()) {
                throw new IOException("interrupted");
            }
            int a2 = cjxVar.d.a(cjxVar.a, cjxVar.b, 32768);
            if (a2 > 0) {
                cjxVar.b += a2;
            } else if (a2 < 0) {
                StringBuilder sb2 = new StringBuilder(23);
                sb2.append("read failed ");
                sb2.append(a2);
                throw new IOException(sb2.toString());
            }
        }
        System.arraycopy(cjxVar.a, 0, bArr, i, i3);
        cjxVar.c += i3;
        return i2;
    }

    @Override // defpackage.GalTransportConnection
    public final void b(ProjectionCloseReason clyVar) {
        this.a.releaseInterface(this.d);
        if (clyVar != ProjectionCloseReason.MD_BYEBYE) {
            try {
                this.a.getClass().getDeclaredMethod("resetDevice", new Class[0]).invoke(this.a, new Object[0]);
            } catch (Exception e) {
                Log.w("AHU.USB_HOST_CONNECTION", "Unable to reset USB - restarting projection will not work", e);
            }
        }
        this.a.close();
        this.c = false;
    }

    @Override // defpackage.GalTransportConnection
    public final void c(byte[] bArr, int i) {
        if (!this.c) {
            throw new IOException("Connection was closed.");
        }
        if (this.a.bulkTransfer(this.e, bArr, 0, i, 36000000) < 0) {
            throw new IOException("Bulk transfer failed.");
        }
    }
}
