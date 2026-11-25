package defpackage;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.bluetooth.BluetoothDevice;
import android.car.CarProjectionManager;
import android.car.projection.ProjectionStatus;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import com.google.android.apps.auto.aareceiver.service.ProjectionCommandReceiver;
import com.google.android.embedded.projection.R;
import j$.util.Collection;
import j$.util.Comparator$CC;
import j$.util.function.BiFunction;
import j$.util.function.BinaryOperator;
import j$.util.function.Function;
import j$.util.function.ToIntFunction;
import j$.util.stream.Stream;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bah {
    public static final csz a = csz.g("com/google/android/apps/auto/aareceiver/service/DeviceTracker");
    public static final cqh b = cqh.s(0, 1, 3, 2);
    public final NotificationManager c;
    public final bby d;
    public final Context e;
    public volatile bbl h;
    public awo i;
    public awp j;
    private final bcj k;
    private final CarProjectionManager l;
    private final dhq n;
    private final dhq o;
    public final bav f = new bav();
    public final List g = new ArrayList();
    private int m = 100;

    public bah(Context context, bcj bcjVar, bby bbyVar, CarProjectionManager carProjectionManager, dhq dhqVar, dhq dhqVar2, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.e = context;
        this.d = bbyVar;
        this.c = (NotificationManager) context.getSystemService(NotificationManager.class);
        this.k = bcjVar;
        this.l = carProjectionManager;
        this.n = dhqVar;
        this.o = dhqVar2;
        ((NotificationManager) context.getSystemService(NotificationManager.class)).createNotificationChannel(new NotificationChannel("device_notifications", context.getString(R.string.device_notification_channel_name), 3));
    }

    private final void A(baf bafVar) {
        if (!bafVar.b()) {
            int i = this.m;
            this.m = i + 1;
            bafVar.d = i;
        }
        if (!bafVar.c()) {
            throw new IllegalArgumentException("Can't create pending intent: device not connected");
        }
        Context context = this.e;
        int i2 = bafVar.d;
        Intent d = hh.d(context, bafVar.g, bafVar.b ? awp.USB : awp.WIRELESS, cla.USER_REQUEST);
        ClipData clipData = chb.a;
        PendingIntent a2 = chb.a(context, i2, d, 201326592);
        String string = this.e.getString(R.string.connect_to_wireless_device, bafVar.g.d());
        dg dgVar = new dg(this.e);
        dgVar.l = "device_notifications";
        dgVar.e(this.e.getText(R.string.app_name));
        dgVar.d(string);
        dgVar.g(R.drawable.ic_android_auto);
        dgVar.i(string);
        dgVar.f(2);
        dgVar.h = 1;
        dgVar.g = a2;
        this.c.notify(bafVar.d, dgVar.a());
    }

    private final boolean B() {
        return dih.c() && this.k.g() != 2 && this.o.d() && this.h == null && !Collection.EL.stream(i()).anyMatch(new bad(this, 1));
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final awo a(BluetoothDevice bluetoothDevice, String str) {
        baf bafVar;
        bbl bblVar;
        awo a2 = this.d.a(bluetoothDevice, str);
        bav bavVar = this.f;
        BinaryOperator binaryOperator = new BinaryOperator() { // from class: bac
            @Override // j$.util.function.BiFunction
            public final /* synthetic */ BiFunction andThen(Function function) {
                return BiFunction.CC.$default$andThen(this, function);
            }

            @Override // j$.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                int i;
                bah bahVar = bah.this;
                baf bafVar2 = (baf) obj;
                baf bafVar3 = (baf) obj2;
                if (bafVar3.b() && bafVar2.b() && (i = bafVar3.d) != bafVar2.d) {
                    bahVar.c.cancel(i);
                    bafVar3.a();
                }
                if (!bafVar2.b() && bafVar3.b()) {
                    bafVar2.d = bafVar3.d;
                }
                bafVar2.c |= bafVar3.c;
                bafVar2.b |= bafVar3.b;
                if (bah.b.indexOf(Integer.valueOf(bafVar3.f)) > bah.b.indexOf(Integer.valueOf(bafVar2.f))) {
                    bafVar2.f = bafVar3.f;
                }
                return bafVar2;
            }
        };
        Object obj = bavVar.c.get(bluetoothDevice);
        Object obj2 = bavVar.b.get(str);
        if (obj2 == null || obj != null) {
            if (obj2 == null && obj != null) {
                bavVar.b.put(str, obj);
            } else if (obj2 == null && obj == null) {
                ((csx) bav.a.c().h("com/google/android/apps/auto/aareceiver/service/ProjectionDeviceMap", "associate", 110, "ProjectionDeviceMap.java")).t("Values not found for both %s and usb %s", bluetoothDevice, str);
                obj = null;
            } else if (obj2 != obj) {
                ((csx) bav.a.c().h("com/google/android/apps/auto/aareceiver/service/ProjectionDeviceMap", "associate", 118, "ProjectionDeviceMap.java")).A(bluetoothDevice, str, obj, obj2);
                obj = binaryOperator.apply(obj, obj2);
                bavVar.c.put(bluetoothDevice, obj);
                bavVar.b.put(str, obj);
            }
            bafVar = (baf) obj;
            if (bafVar != null) {
                bafVar.g = a2;
            }
            bblVar = this.h;
            if (dkv.a.a().a() && bblVar != null && bblVar.h.equals(a2)) {
                bblVar.h = a2;
            }
            return a2;
        }
        bavVar.c.put(bluetoothDevice, obj2);
        obj = obj2;
        bafVar = (baf) obj;
        if (bafVar != null) {
        }
        bblVar = this.h;
        if (dkv.a.a().a()) {
            bblVar.h = a2;
        }
        return a2;
    }

    public final awo b(awo awoVar) {
        return g(awoVar).g;
    }

    public final awo c(BluetoothDevice bluetoothDevice) {
        return f(bluetoothDevice).g;
    }

    public final awo d(String str, BluetoothDevice bluetoothDevice) {
        baf bafVar = !TextUtils.isEmpty(str) ? (baf) this.f.c(str) : null;
        if (bafVar == null && bluetoothDevice != null) {
            bafVar = (baf) this.f.a(bluetoothDevice);
        }
        if (bafVar == null) {
            return null;
        }
        return bafVar.g;
    }

    public final baf e(awo awoVar) {
        baf bafVar = new baf(awoVar);
        bav bavVar = this.f;
        String e = awoVar.e();
        BluetoothDevice a2 = awoVar.a();
        if (!TextUtils.isEmpty(e)) {
            bavVar.b.put(e, bafVar);
        }
        if (a2 != null) {
            bavVar.c.put(a2, bafVar);
        }
        return bafVar;
    }

    public final baf f(BluetoothDevice bluetoothDevice) {
        baf bafVar = (baf) this.f.a(bluetoothDevice);
        return bafVar == null ? e(this.d.d(bluetoothDevice)) : bafVar;
    }

    public final baf g(awo awoVar) {
        baf bafVar = (baf) this.f.b(awoVar);
        return bafVar == null ? e(awoVar) : bafVar;
    }

    public final baf h(String str) {
        baf bafVar = (baf) this.f.c(str);
        return bafVar == null ? e(this.d.f(str, null)) : bafVar;
    }

    public final cqh i() {
        ArrayList arrayList = new ArrayList();
        for (baf bafVar : this.f.d()) {
            if (bafVar.c()) {
                arrayList.add(bafVar.g);
            }
        }
        return cqh.n(arrayList);
    }

    public final void j(baf bafVar) {
        awo awoVar = bafVar.g;
        bbl bblVar = this.h;
        if (bblVar == null || !awoVar.equals(bblVar.h)) {
            A(bafVar);
        }
    }

    public final void k(BluetoothDevice bluetoothDevice) {
        if (w(c(bluetoothDevice)) && this.h != null && this.h.g == awp.WIRELESS) {
            return;
        }
        s(f(bluetoothDevice), awp.WIRELESS);
    }

    public final void l(String str) {
        s(h(str), awp.USB);
    }

    public final void m(awo awoVar) {
        if (w(awoVar)) {
            this.d.h(awoVar, bcq.BACKGROUND);
            g(awoVar).f = 3;
            t();
        }
    }

    public final void n(bag bagVar) {
        this.g.add(bagVar);
        bbl bblVar = this.h;
        if (bblVar != null) {
            bagVar.h(bblVar);
        }
    }

    public final void o(baf bafVar, awp awpVar) {
        bafVar.d(awpVar, true);
        cqh n = cqh.n(this.g);
        int size = n.size();
        for (int i = 0; i < size; i++) {
            ((bag) n.get(i)).f(bafVar.g);
        }
        if (bafVar.f == 0) {
            bafVar.f = 1;
        }
        awo awoVar = bafVar.g;
        if (B() && !awoVar.f() && awoVar.b() == bcq.FOREGROUND) {
            Context context = this.e;
            context.startActivity(hh.d(context, bafVar.g, awpVar, cla.AUTO_LAUNCH));
        } else {
            j(bafVar);
        }
        t();
    }

    public final void p(awo awoVar) {
        UsbDevice a2 = beh.a(this.e, awoVar);
        if (a2 != null) {
            a2.getDeviceName();
            beh.e(this.e, a2);
        }
    }

    public final void q(awo awoVar, boolean z) {
        g(awoVar).h = z;
    }

    public final void r(bag bagVar) {
        this.g.remove(bagVar);
    }

    public final void s(baf bafVar, awp awpVar) {
        boolean d = bafVar.d(awpVar, false);
        boolean z = true;
        if (w(bafVar.g) && (!d || !bafVar.c())) {
            z = false;
        }
        if (bafVar.c()) {
            A(bafVar);
            if (z) {
                t();
                return;
            }
            return;
        }
        if (bafVar.b()) {
            this.c.cancel(bafVar.d);
            bafVar.a();
        }
        bav bavVar = this.f;
        awo awoVar = bafVar.g;
        String e = awoVar.e();
        if (!TextUtils.isEmpty(e)) {
            bavVar.b.remove(e);
        }
        if (awoVar.a() != null) {
            bavVar.c.remove(awoVar.a());
        }
        if (z) {
            t();
        }
        cqh n = cqh.n(this.g);
        int size = n.size();
        for (int i = 0; i < size; i++) {
            ((bag) n.get(i)).g(bafVar.g);
        }
    }

    public final void t() {
        cly c;
        Set<baf> d = this.f.d();
        Stream map = Collection.EL.stream(d).map(awq.g);
        final cqh cqhVar = b;
        cqhVar.getClass();
        int intValue = ((Integer) map.max(Comparator$CC.comparingInt(new ToIntFunction() { // from class: bae
            @Override // j$.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return cqh.this.indexOf((Integer) obj);
            }
        })).orElse(0)).intValue();
        ProjectionStatus.Builder builder = ProjectionStatus.builder(this.e.getPackageName(), intValue);
        bbl bblVar = this.h;
        if (bblVar != null) {
            builder.setProjectionTransport(bblVar.g == awp.WIRELESS ? 2 : 1);
            c = bblVar.z;
        } else {
            awo awoVar = this.i;
            c = awoVar != null ? awoVar.c() : null;
        }
        if (c != null) {
            Bundle bundle = new Bundle();
            bundle.putString("com.google.android.embedded.projection.extra.STOP_REASON", c.name());
            builder.setExtras(bundle);
        }
        for (baf bafVar : d) {
            Context context = this.e;
            ProjectionStatus.MobileDevice.Builder builder2 = ProjectionStatus.MobileDevice.builder(bafVar.e, bafVar.g.d());
            Bundle bundle2 = new Bundle();
            bundle2.putString("android.car.projection.extra.PROJECTION_TECHNOLOGY", "com.google.android-auto");
            bundle2.putString("android.car.projection.extra.PROJECTION_TECHNOLOGY_VERSION", "1.6");
            int i = bafVar.f;
            builder2.setProjecting(i != 2 ? i == 3 : true);
            bundle2.putInt("com.android.car.projection.extra.EXTRA_DEVICE_STATE", bafVar.f);
            if (bafVar.b) {
                builder2.addTransport(1);
            }
            if (bafVar.c) {
                builder2.addTransport(2);
            }
            awo awoVar2 = bafVar.g;
            BluetoothDevice a2 = awoVar2.a();
            if (a2 != null) {
                bundle2.putParcelable("android.bluetooth.device.extra.DEVICE", a2);
                bundle2.putString("com.android.car.projection.extra.BLUETOOTH_ADDRESS", a2.getAddress());
            }
            bundle2.putString("com.android.car.projection.extra.USB_SERIAL_NUMBER", bafVar.g.e());
            bundle2.putParcelable("com.android.car.projection.extra.PROJECTION_CHANGE_REQUEST", PendingIntent.getBroadcast(context, bafVar.e, new Intent(context, (Class<?>) ProjectionCommandReceiver.class).setAction("com.android.car.projection.action.START").putExtra("com.android.car.projection.extra.USB_SERIAL_NUMBER", awoVar2.e()).putExtra("com.android.car.projection.extra.BLUETOOTH_ADDRESS", a2 == null ? null : a2.getAddress()), (true != re.c() ? 0 : 33554432) | 134217729));
            builder2.setExtras(bundle2);
            builder.addMobileDevice(builder2.build());
        }
        this.n.b(intValue != 0 ? 1 : 2);
        CarCompat.updateProjectionStatus(this.l, builder.build());
    }

    public final String toString() {
        String simpleName = getClass().getSimpleName();
        String obj = this.f.toString();
        int i = this.m;
        String obj2 = this.g.toString();
        String valueOf = String.valueOf(this.h);
        int length = String.valueOf(simpleName).length();
        StringBuilder sb = new StringBuilder(length + 90 + obj.length() + obj2.length() + String.valueOf(valueOf).length());
        sb.append(simpleName);
        sb.append(" { Connected Devices: ");
        sb.append(obj);
        sb.append(",\n NotificationCounter: ");
        sb.append(i);
        sb.append(",\n Callbacks: ");
        sb.append(obj2);
        sb.append(",\n Projecting To: ");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }

    public final boolean u(awo awoVar) {
        return g(awoVar).h;
    }

    public final boolean v(awo awoVar, awp awpVar) {
        baf bafVar = (baf) this.f.b(awoVar);
        if (bafVar == null) {
            return false;
        }
        return awp.USB.equals(awpVar) ? bafVar.b : bafVar.c;
    }

    public final boolean w(awo awoVar) {
        bbl bblVar = this.h;
        return bblVar != null && awoVar.equals(bblVar.h);
    }

    public final boolean x() {
        bbl bblVar = this.h;
        return bblVar != null && g(bblVar.h).f == 2;
    }

    public final boolean y(UsbDevice usbDevice) {
        return this.k.c(usbDevice) && ((bcn) this.d.e(usbDevice)).f;
    }

    public final boolean z(awo awoVar) {
        return B() && !awoVar.f() && awoVar.b() == bcq.BACKGROUND;
    }
}
