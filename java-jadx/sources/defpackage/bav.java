package defpackage;

import android.bluetooth.BluetoothDevice;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bav {
    public static final csz a = csz.g("com/google/android/apps/auto/aareceiver/service/ProjectionDeviceMap");
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();

    public final Object a(BluetoothDevice bluetoothDevice) {
        bluetoothDevice.getClass();
        return this.c.get(bluetoothDevice);
    }

    public final Object b(awo awoVar) {
        String e = awoVar.e();
        Object obj = !TextUtils.isEmpty(e) ? this.b.get(e) : null;
        return (obj != null || awoVar.a() == null) ? obj : this.c.get(awoVar.a());
    }

    public final Object c(String str) {
        str.getClass();
        return this.b.get(str);
    }

    public final Set d() {
        HashSet hashSet = new HashSet(this.c.values());
        hashSet.addAll(this.b.values());
        return hashSet;
    }

    public final String toString() {
        String simpleName = getClass().getSimpleName();
        String obj = this.c.toString();
        String obj2 = this.b.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 19 + obj.length() + obj2.length());
        sb.append(simpleName);
        sb.append("{btMap: ");
        sb.append(obj);
        sb.append(", usbMap: ");
        sb.append(obj2);
        sb.append("}");
        return sb.toString();
    }
}
