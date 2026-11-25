package com.achour.tweaks;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;
import java.util.Set;

/* loaded from: classes3.dex */
public final class Bt {
    private static volatile boolean busy;

    public static boolean isBusy() {
        return busy;
    }

    public static void repair(final Context context, final boolean z) {
        if (busy) {
            return;
        }
        busy = true;
        new Thread(new Runnable() { // from class: com.achour.tweaks.Bt.1
            @Override // java.lang.Runnable
            public void run() {
                BluetoothAdapter defaultAdapter;
                String str;
                String str2 = null;
                try {
                    defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                } catch (Throwable th) {
                    try {
                        Log.w("AATweaks", "repair failed: " + th);
                        str2 = "تعذّر الإصلاح — سأفتح إعدادات البلوتوث";
                        Bt.openBtSettings(context);
                        if (!z) {
                            Bt.toast(context, "تعذّر الإصلاح — سأفتح إعدادات البلوتوث");
                        }
                    } catch (Throwable th2) {
                        if (str2 != null && !z) {
                            Bt.toast(context, str2);
                        }
                        boolean unused = Bt.busy = false;
                        throw th2;
                    }
                }
                if (defaultAdapter != null && defaultAdapter.isEnabled()) {
                    defaultAdapter.cancelDiscovery();
                    BluetoothDevice pick = Bt.pick(defaultAdapter);
                    if (pick == null) {
                        str = "لا يوجد جهاز مقترن";
                    } else {
                        String safeName = Bt.safeName(pick);
                        String address = pick.getAddress();
                        boolean removeBond = Bt.removeBond(pick);
                        Log.i("AATweaks", "removeBond(" + address + ")=" + removeBond);
                        if (removeBond) {
                            Bt.toast(context, "أُزيل اقتران " + safeName + " — أعد الاقتران من الهاتف");
                            Thread.sleep(2500L);
                            boolean createBond = Bt.createBond(pick);
                            Log.i("AATweaks", "createBond(" + address + ")=" + createBond);
                            str2 = createBond ? "جارٍ إعادة الاقتران مع " + safeName + " — أكّد على الهاتف" : "تعذّر بدء الاقتران — افتح إعدادات البلوتوث";
                            if (!createBond) {
                                Bt.openBtSettings(context);
                            }
                            str = str2;
                        } else {
                            str = "فشل إلغاء الاقتران (صلاحية)";
                        }
                    }
                    if (str != null && !z) {
                        Bt.toast(context, str);
                    }
                    boolean unused2 = Bt.busy = false;
                }
                str = "البلوتوث غير مفعّل";
                if (str != null) {
                    Bt.toast(context, str);
                }
                boolean unused22 = Bt.busy = false;
            }
        }, "AATweaks-Bt").start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static BluetoothDevice pick(BluetoothAdapter bluetoothAdapter) {
        try {
            Set<BluetoothDevice> bondedDevices = bluetoothAdapter.getBondedDevices();
            if (bondedDevices != null && !bondedDevices.isEmpty()) {
                BluetoothDevice bluetoothDevice = null;
                for (BluetoothDevice bluetoothDevice2 : bondedDevices) {
                    if (bluetoothDevice == null) {
                        bluetoothDevice = bluetoothDevice2;
                    }
                    if (isConnected(bluetoothDevice2)) {
                        return bluetoothDevice2;
                    }
                }
                return bluetoothDevice;
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    private static boolean isConnected(BluetoothDevice bluetoothDevice) {
        try {
            Object invoke = bluetoothDevice.getClass().getMethod("isConnected", new Class[0]).invoke(bluetoothDevice, new Object[0]);
            if (invoke instanceof Boolean) {
                return ((Boolean) invoke).booleanValue();
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean removeBond(BluetoothDevice bluetoothDevice) {
        try {
            Object invoke = bluetoothDevice.getClass().getMethod("removeBond", new Class[0]).invoke(bluetoothDevice, new Object[0]);
            if (invoke instanceof Boolean) {
                return ((Boolean) invoke).booleanValue();
            }
            return false;
        } catch (Throwable th) {
            Log.w("AATweaks", "removeBond failed: " + th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean createBond(BluetoothDevice bluetoothDevice) {
        try {
            Object invoke = bluetoothDevice.getClass().getMethod("createBond", new Class[0]).invoke(bluetoothDevice, new Object[0]);
            if (invoke instanceof Boolean) {
                return ((Boolean) invoke).booleanValue();
            }
            return false;
        } catch (Throwable th) {
            Log.w("AATweaks", "createBond failed: " + th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String safeName(BluetoothDevice bluetoothDevice) {
        try {
            String name = bluetoothDevice.getName();
            return (name == null || name.length() == 0) ? bluetoothDevice.getAddress() : name;
        } catch (Throwable th) {
            try {
                return bluetoothDevice.getAddress();
            } catch (Throwable th2) {
                return "الهاتف";
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void openBtSettings(Context context) {
        try {
            Intent intent = new Intent("android.settings.BLUETOOTH_SETTINGS");
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void toast(final Context context, final String str) {
        try {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.achour.tweaks.Bt.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Toast.makeText(context, str, 1).show();
                    } catch (Throwable th) {
                    }
                }
            });
        } catch (Throwable th) {
        }
    }
}
