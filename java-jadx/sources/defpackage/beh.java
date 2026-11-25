package defpackage;

import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbManager;
import android.text.TextUtils;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class beh {
    private static final csz a = csz.g("com/google/android/apps/auto/aareceiver/transport/usb/UsbUtils");
    private static final cqw b = cqw.q(11520, 11521, 11524, 11525);

    public static UsbDevice a(Context context, awo awoVar) {
        if (TextUtils.isEmpty(awoVar.e())) {
            return null;
        }
        return b(context, awoVar.e());
    }

    public static UsbDevice b(Context context, String str) {
        UsbManager usbManager = (UsbManager) context.getSystemService(UsbManager.class);
        if (usbManager == null) {
            ((csx) a.b().h("com/google/android/apps/auto/aareceiver/transport/usb/UsbUtils", "getConnectedUsbDevice", 43, "UsbUtils.java")).n("Failed to get UsbManager from the context");
            return null;
        }
        try {
            for (UsbDevice usbDevice : usbManager.getDeviceList().values()) {
                if (str.equals(CarCompat.getUsbSerialSafe(usbDevice))) {
                    if (d(usbDevice)) {
                        return usbDevice;
                    }
                    ((csx) a.c().h("com/google/android/apps/auto/aareceiver/transport/usb/UsbUtils", "getConnectedUsbDevice", 52, "UsbUtils.java")).p("Device %s currently not in AOAP mode, ignoring.", str);
                }
            }
        } catch (SecurityException e) {
            ((csx) ((csx) a.c().g(e)).h("com/google/android/apps/auto/aareceiver/transport/usb/UsbUtils", "getConnectedUsbDevice", 62, "UsbUtils.java")).n("Security exception while getting usb device list.");
        }
        ((csx) a.c().h("com/google/android/apps/auto/aareceiver/transport/usb/UsbUtils", "getConnectedUsbDevice", 64, "UsbUtils.java")).p("No USB device connected with serial: %s", str);
        return null;
    }

    public static UsbDeviceConnection c(Context context, UsbDevice usbDevice) {
        UsbManager usbManager = (UsbManager) context.getSystemService(UsbManager.class);
        if (usbManager != null) {
            return usbManager.openDevice(usbDevice);
        }
        ((csx) a.b().h("com/google/android/apps/auto/aareceiver/transport/usb/UsbUtils", "getUsbDeviceConnection", 77, "UsbUtils.java")).n("Failed to get UsbManager from the context");
        return null;
    }

    public static boolean d(UsbDevice usbDevice) {
        if (usbDevice == null) {
            return false;
        }
        return usbDevice.getVendorId() == 6353 && b.contains(Integer.valueOf(usbDevice.getProductId()));
    }

    public static boolean e(Context context, UsbDevice usbDevice) {
        if (((UsbManager) context.getSystemService(UsbManager.class)) != null) {
            return f(usbDevice, c(context, usbDevice));
        }
        ((csx) a.b().h("com/google/android/apps/auto/aareceiver/transport/usb/UsbUtils", "resetUsbDevice", 94, "UsbUtils.java")).n("Failed to get UsbManager from the context");
        return false;
    }

    public static boolean f(UsbDevice usbDevice, UsbDeviceConnection usbDeviceConnection) {
        if (usbDevice == null || usbDeviceConnection == null) {
            ((csx) a.c().h("com/google/android/apps/auto/aareceiver/transport/usb/UsbUtils", "resetUsbDevice", 114, "UsbUtils.java")).n("Unable to reset USB device.");
            return false;
        }
        boolean releaseInterface = usbDeviceConnection.releaseInterface(usbDevice.getInterface(0));
        boolean resetDevice = usbDeviceConnection.resetDevice();
        usbDeviceConnection.close();
        return releaseInterface & resetDevice;
    }
}
