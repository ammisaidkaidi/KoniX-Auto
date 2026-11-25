package defpackage;

import android.bluetooth.BluetoothDevice;
import android.os.Build;
import java.lang.reflect.Method;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class awj {
    public static String a(BluetoothDevice bluetoothDevice) {
        Method method;
        if (Build.VERSION.SDK_INT > 29) {
            return bluetoothDevice.getAlias();
        }
        try {
            method = BluetoothDevice.class.getDeclaredMethod("getAliasName", new Class[0]);
        } catch (NoSuchMethodException e) {
            method = null;
        }
        if (method == null) {
            return bluetoothDevice.getName();
        }
        try {
            String str = (String) method.invoke(bluetoothDevice, new Object[0]);
            return str == null ? bluetoothDevice.getName() : str;
        } catch (ReflectiveOperationException e2) {
            return bluetoothDevice.getName();
        }
    }
}
