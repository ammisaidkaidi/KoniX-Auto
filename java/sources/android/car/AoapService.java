package android.car;

import android.app.Service;
import android.car.IUsbAoapSupportCheckService;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes2.dex */
public abstract class AoapService extends Service {
    public static final String KEY_DEVICE = "usb-device";
    public static final String KEY_RESULT = "result";
    public static final int MSG_CAN_SWITCH_TO_AOAP = 3;
    public static final int MSG_CAN_SWITCH_TO_AOAP_RESPONSE = 4;
    public static final int MSG_NEW_USB_DEVICE = 1;
    public static final int MSG_NEW_USB_DEVICE_RESPONSE = 2;
    public static final int RESULT_DEVICE_NOT_SUPPORTED = 1;
    public static final int RESULT_DO_NOT_SWITCH_TO_AOAP = 2;
    public static final int RESULT_OK = 0;
    private IBinder mLegacyBinder;
    private Messenger mMessenger;

    public abstract int isDeviceSupported(UsbDevice usbDevice);

    public int canSwitchToAoap(UsbDevice usbDevice) {
        return 0;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mMessenger = new Messenger(new Handler(Looper.getMainLooper()) { // from class: android.car.AoapService.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int canSwitchToAoap;
                int i;
                Bundle data = message.getData();
                if (data == null || message.replyTo == null) {
                    return;
                }
                data.setClassLoader(UsbDevice.class.getClassLoader());
                UsbDevice usbDevice = (UsbDevice) data.getParcelable(AoapService.KEY_DEVICE);
                if (message.what == 1) {
                    canSwitchToAoap = usbDevice != null ? AoapService.this.isDeviceSupported(usbDevice) : 1;
                    i = 2;
                } else if (message.what == 3) {
                    canSwitchToAoap = usbDevice != null ? AoapService.this.canSwitchToAoap(usbDevice) : 1;
                    i = 4;
                } else {
                    return;
                }
                Message obtain = Message.obtain((Handler) null, i);
                Bundle bundle = new Bundle();
                bundle.putInt(AoapService.KEY_RESULT, canSwitchToAoap);
                obtain.setData(bundle);
                try {
                    message.replyTo.send(obtain);
                } catch (RemoteException e) {
                    Log.w("AoapService", "Reply failed", e);
                }
            }
        });
        try {
            this.mLegacyBinder = new IUsbAoapSupportCheckService.Stub() { // from class: android.car.AoapService.2
                public boolean isDeviceSupported(UsbDevice usbDevice) {
                    return usbDevice != null && AoapService.this.isDeviceSupported(usbDevice) == 0;
                }
            };
        } catch (Throwable th) {
            Log.w("AoapService", "Legacy binder unavailable", th);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        IBinder iBinder;
        if (intent != null && "android.car.usb.handler.action.USB_AOAP_SUPPORT_CHECK_SERVICE".equals(intent.getAction()) && (iBinder = this.mLegacyBinder) != null) {
            return iBinder;
        }
        return this.mMessenger.getBinder();
    }

    @Override // android.app.Service
    protected void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.println("AoapService (API-28 compat v8 active)");
    }
}
