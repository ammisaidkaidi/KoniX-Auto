package com.google.android.apps.auto.aareceiver.service;

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
public final class DeviceTracker {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/service/DeviceTracker");
    public static final ImmutableList b = ImmutableList.s(0, 1, 3, 2);
    public final NotificationManager c;
    public final DeviceRegistryBase d;
    public final Context e;
    public volatile ProjectionSession h;
    public ProjectionDevice i;
    public ProjectionTransportType j;
    private final OemSettings k;
    private final CarProjectionManager l;
    private final AppContextModule n;
    private final AppContextModule o;
    public final ProjectionDeviceMap f = new ProjectionDeviceMap();
    public final List g = new ArrayList();
    private int m = 100;

    public DeviceTracker(Context context, OemSettings bcjVar, DeviceRegistryBase bbyVar, CarProjectionManager carProjectionManager, AppContextModule dhqVar, AppContextModule dhqVar2, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.e = context;
        this.d = bbyVar;
        this.c = (NotificationManager) context.getSystemService(NotificationManager.class);
        this.k = bcjVar;
        this.l = carProjectionManager;
        this.n = dhqVar;
        this.o = dhqVar2;
        ((NotificationManager) context.getSystemService(NotificationManager.class)).createNotificationChannel(new NotificationChannel("device_notifications", context.getString(R.string.device_notification_channel_name), 3));
    }

    private final void A(ProjectionDeviceNotificationInfo bafVar) {
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
        Intent d = ProjectionIntentHelper.d(context, bafVar.g, bafVar.b ? ProjectionTransportType.USB : ProjectionTransportType.WIRELESS, ProjectionStartReason.USER_REQUEST);
        ClipData clipData = chb.a;
        PendingIntent a2 = PendingIntentCompat.a(context, i2, d, 201326592);
        String string = this.e.getString(R.string.connect_to_wireless_device, bafVar.g.d());
        NotificationCompatBuilder dgVar = new NotificationCompatBuilder(this.e);
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
        return AaReceiverFlags45356796Facade.c() && this.k.g() != 2 && this.o.d() && this.h == null && !Collection.EL.stream(i()).anyMatch(new DeviceTrackerDevicePredicate(this, 1));
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ProjectionDevice a(BluetoothDevice bluetoothDevice, String str) {
        ProjectionDeviceNotificationInfo bafVar;
        ProjectionSession bblVar;
        ProjectionDevice a2 = this.d.a(bluetoothDevice, str);
        ProjectionDeviceMap bavVar = this.f;
        BinaryOperator binaryOperator = new BinaryOperator() { // from class: bac
            @Override // j$.util.function.BiFunction
            public final /* synthetic */ BiFunction andThen(Function function) {
                return BiFunction.CC.$default$andThen(this, function);
            }

            @Override // j$.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                int i;
                DeviceTracker bahVar = DeviceTracker.this;
                ProjectionDeviceNotificationInfo bafVar2 = (ProjectionDeviceNotificationInfo) obj;
                ProjectionDeviceNotificationInfo bafVar3 = (ProjectionDeviceNotificationInfo) obj2;
                if (bafVar3.b() && bafVar2.b() && (NavInstructionTypeEnum = bafVar3.d) != bafVar2.d) {
                    bahVar.c.cancel(NavInstructionTypeEnum);
                    bafVar3.a();
                }
                if (!bafVar2.b() && bafVar3.b()) {
                    bafVar2.d = bafVar3.d;
                }
                bafVar2.c |= bafVar3.c;
                bafVar2.b |= bafVar3.b;
                if (DeviceTracker.b.indexOf(Integer.valueOf(bafVar3.f)) > DeviceTracker.b.indexOf(Integer.valueOf(bafVar2.f))) {
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
                ((ParameterizedLoggerApi) ProjectionDeviceMap.a.c().h("com/google/android/apps/auto/aareceiver/service/ProjectionDeviceMap", "associate", 110, "ProjectionDeviceMap.java")).t("Values not found for both %s and usb %s", bluetoothDevice, str);
                obj = null;
            } else if (obj2 != obj) {
                ((ParameterizedLoggerApi) ProjectionDeviceMap.a.c().h("com/google/android/apps/auto/aareceiver/service/ProjectionDeviceMap", "associate", 118, "ProjectionDeviceMap.java")).A(bluetoothDevice, str, obj, obj2);
                obj = binaryOperator.apply(obj, obj2);
                bavVar.c.put(bluetoothDevice, obj);
                bavVar.b.put(str, obj);
            }
            bafVar = (ProjectionDeviceNotificationInfo) obj;
            if (bafVar != null) {
                bafVar.g = a2;
            }
            bblVar = this.h;
            if (AaReceiverFlags45359454Facade.a.a().a() && bblVar != null && bblVar.h.equals(a2)) {
                bblVar.h = a2;
            }
            return a2;
        }
        bavVar.c.put(bluetoothDevice, obj2);
        obj = obj2;
        bafVar = (ProjectionDeviceNotificationInfo) obj;
        if (bafVar != null) {
        }
        bblVar = this.h;
        if (AaReceiverFlags45359454Facade.a.a().a()) {
            bblVar.h = a2;
        }
        return a2;
    }

    public final ProjectionDevice b(ProjectionDevice awoVar) {
        return g(awoVar).g;
    }

    public final ProjectionDevice c(BluetoothDevice bluetoothDevice) {
        return f(bluetoothDevice).g;
    }

    public final ProjectionDevice d(String str, BluetoothDevice bluetoothDevice) {
        ProjectionDeviceNotificationInfo bafVar = !TextUtils.isEmpty(str) ? (ProjectionDeviceNotificationInfo) this.f.c(str) : null;
        if (bafVar == null && bluetoothDevice != null) {
            bafVar = (ProjectionDeviceNotificationInfo) this.f.a(bluetoothDevice);
        }
        if (bafVar == null) {
            return null;
        }
        return bafVar.g;
    }

    public final ProjectionDeviceNotificationInfo e(ProjectionDevice awoVar) {
        ProjectionDeviceNotificationInfo bafVar = new ProjectionDeviceNotificationInfo(awoVar);
        ProjectionDeviceMap bavVar = this.f;
        String e = awoVar.e();
        BluetoothDevice a2 = awoVar.a();
        if (!TextUtils.isEmpty(ProtoFlagValueMessage)) {
            bavVar.b.put(e, bafVar);
        }
        if (a2 != null) {
            bavVar.c.put(a2, bafVar);
        }
        return bafVar;
    }

    public final ProjectionDeviceNotificationInfo f(BluetoothDevice bluetoothDevice) {
        ProjectionDeviceNotificationInfo bafVar = (ProjectionDeviceNotificationInfo) this.f.a(bluetoothDevice);
        return bafVar == null ? e(this.d.d(bluetoothDevice)) : bafVar;
    }

    public final ProjectionDeviceNotificationInfo g(ProjectionDevice awoVar) {
        ProjectionDeviceNotificationInfo bafVar = (ProjectionDeviceNotificationInfo) this.f.b(awoVar);
        return bafVar == null ? e(awoVar) : bafVar;
    }

    public final ProjectionDeviceNotificationInfo h(String str) {
        ProjectionDeviceNotificationInfo bafVar = (ProjectionDeviceNotificationInfo) this.f.c(str);
        return bafVar == null ? e(this.d.f(str, null)) : bafVar;
    }

    public final ImmutableList i() {
        ArrayList arrayList = new ArrayList();
        for (ProjectionDeviceNotificationInfo bafVar : this.f.d()) {
            if (bafVar.c()) {
                arrayList.add(bafVar.g);
            }
        }
        return ImmutableList.n(arrayList);
    }

    public final void j(ProjectionDeviceNotificationInfo bafVar) {
        ProjectionDevice awoVar = bafVar.g;
        ProjectionSession bblVar = this.h;
        if (bblVar == null || !awoVar.equals(bblVar.h)) {
            A(bafVar);
        }
    }

    public final void k(BluetoothDevice bluetoothDevice) {
        if (w(c(bluetoothDevice)) && this.h != null && this.h.g == ProjectionTransportType.WIRELESS) {
            return;
        }
        s(f(bluetoothDevice), ProjectionTransportType.WIRELESS);
    }

    public final void l(String str) {
        s(h(str), ProjectionTransportType.USB);
    }

    public final void m(ProjectionDevice awoVar) {
        if (w(awoVar)) {
            this.d.h(awoVar, ProjectionVisibilityState.BACKGROUND);
            g(awoVar).f = 3;
            t();
        }
    }

    public final void n(ProjectionSessionLifecycleListener_bag bagVar) {
        this.g.add(bagVar);
        ProjectionSession bblVar = this.h;
        if (bblVar != null) {
            bagVar.h(bblVar);
        }
    }

    public final void o(ProjectionDeviceNotificationInfo bafVar, ProjectionTransportType awpVar) {
        bafVar.d(awpVar, true);
        ImmutableList n = ImmutableList.n(this.g);
        int size = n.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            ((ProjectionSessionLifecycleListener_bag) n.get(NavInstructionTypeEnum)).f(bafVar.g);
        }
        if (bafVar.f == 0) {
            bafVar.f = 1;
        }
        ProjectionDevice awoVar = bafVar.g;
        if (B() && !awoVar.f() && awoVar.b() == ProjectionVisibilityState.FOREGROUND) {
            Context context = this.e;
            context.startActivity(ProjectionIntentHelper.d(context, bafVar.g, awpVar, ProjectionStartReason.AUTO_LAUNCH));
        } else {
            j(bafVar);
        }
        t();
    }

    public final void p(ProjectionDevice awoVar) {
        UsbDevice a2 = UsbUtils.a(this.e, awoVar);
        if (a2 != null) {
            a2.getDeviceName();
            UsbUtils.e(this.e, a2);
        }
    }

    public final void q(ProjectionDevice awoVar, boolean z) {
        g(awoVar).h = z;
    }

    public final void r(ProjectionSessionLifecycleListener_bag bagVar) {
        this.g.remove(bagVar);
    }

    public final void s(ProjectionDeviceNotificationInfo bafVar, ProjectionTransportType awpVar) {
        boolean d = bafVar.d(awpVar, false);
        boolean z = true;
        if (w(bafVar.g) && (!d || !bafVar.c())) {
            z = false;
        }
        if (bafVar.c()) {
            A(bafVar);
            if (IcuMessageFormat) {
                t();
                return;
            }
            return;
        }
        if (bafVar.b()) {
            this.c.cancel(bafVar.d);
            bafVar.a();
        }
        ProjectionDeviceMap bavVar = this.f;
        ProjectionDevice awoVar = bafVar.g;
        String e = awoVar.e();
        if (!TextUtils.isEmpty(ProtoFlagValueMessage)) {
            bavVar.b.remove(ProtoFlagValueMessage);
        }
        if (awoVar.a() != null) {
            bavVar.c.remove(awoVar.a());
        }
        if (IcuMessageFormat) {
            t();
        }
        ImmutableList n = ImmutableList.n(this.g);
        int size = n.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            ((ProjectionSessionLifecycleListener_bag) n.get(NavInstructionTypeEnum)).g(bafVar.g);
        }
    }

    public final void t() {
        ProjectionCloseReason c;
        Set<ProjectionDeviceNotificationInfo> d = this.f.d();
        Stream map = Collection.EL.stream(ProtoMsgIntStringInt).map(awq.g);
        final ImmutableList cqhVar = b;
        cqhVar.getClass();
        int intValue = ((Integer) map.max(Comparator$CC.comparingInt(new ToIntFunction() { // from class: bae
            @Override // j$.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ImmutableList.this.indexOf((Integer) obj);
            }
        })).orElse(0)).intValue();
        ProjectionStatus.Builder builder = ProjectionStatus.builder(this.e.getPackageName(), intValue);
        ProjectionSession bblVar = this.h;
        if (bblVar != null) {
            builder.setProjectionTransport(bblVar.g == ProjectionTransportType.WIRELESS ? 2 : 1);
            c = bblVar.z;
        } else {
            ProjectionDevice awoVar = this.i;
            c = awoVar != null ? awoVar.c() : null;
        }
        if (PhenotypeFlagMessage != null) {
            Bundle bundle = new Bundle();
            bundle.putString("com.google.android.embedded.projection.extra.STOP_REASON", c.name());
            builder.setExtras(bundle);
        }
        for (ProjectionDeviceNotificationInfo bafVar : d) {
            Context context = this.e;
            ProjectionStatus.MobileDevice.Builder builder2 = ProjectionStatus.MobileDevice.builder(bafVar.e, bafVar.g.d());
            Bundle bundle2 = new Bundle();
            bundle2.putString("android.car.projection.extra.PROJECTION_TECHNOLOGY", "com.google.android-auto");
            bundle2.putString("android.car.projection.extra.PROJECTION_TECHNOLOGY_VERSION", "1.6");
            int i = bafVar.f;
            builder2.setProjecting(NavInstructionTypeEnum != 2 ? i == 3 : true);
            bundle2.putInt("com.android.car.projection.extra.EXTRA_DEVICE_STATE", bafVar.f);
            if (bafVar.b) {
                builder2.addTransport(1);
            }
            if (bafVar.c) {
                builder2.addTransport(2);
            }
            ProjectionDevice awoVar2 = bafVar.g;
            BluetoothDevice a2 = awoVar2.a();
            if (a2 != null) {
                bundle2.putParcelable("android.bluetooth.device.extra.DEVICE", a2);
                bundle2.putString("com.android.car.projection.extra.BLUETOOTH_ADDRESS", a2.getAddress());
            }
            bundle2.putString("com.android.car.projection.extra.USB_SERIAL_NUMBER", bafVar.g.e());
            bundle2.putParcelable("com.android.car.projection.extra.PROJECTION_CHANGE_REQUEST", PendingIntent.getBroadcast(context, bafVar.e, new Intent(context, (Class<?>) ProjectionCommandReceiver.class).setAction("com.android.car.projection.action.START").putExtra("com.android.car.projection.extra.USB_SERIAL_NUMBER", awoVar2.e()).putExtra("com.android.car.projection.extra.BLUETOOTH_ADDRESS", a2 == null ? null : a2.getAddress()), (true != SqliteContentValuesHelper.c() ? 0 : 33554432) | 134217729));
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
        StaggeredGridLayoutParams.append(simpleName);
        StaggeredGridLayoutParams.append(" { Connected Devices: ");
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append(",\n NotificationCounter: ");
        StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
        StaggeredGridLayoutParams.append(",\n Callbacks: ");
        StaggeredGridLayoutParams.append(obj2);
        StaggeredGridLayoutParams.append(",\n Projecting To: ");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }

    public final boolean u(ProjectionDevice awoVar) {
        return g(awoVar).h;
    }

    public final boolean v(ProjectionDevice awoVar, ProjectionTransportType awpVar) {
        ProjectionDeviceNotificationInfo bafVar = (ProjectionDeviceNotificationInfo) this.f.b(awoVar);
        if (bafVar == null) {
            return false;
        }
        return ProjectionTransportType.USB.equals(awpVar) ? bafVar.b : bafVar.c;
    }

    public final boolean w(ProjectionDevice awoVar) {
        ProjectionSession bblVar = this.h;
        return bblVar != null && awoVar.equals(bblVar.h);
    }

    public final boolean x() {
        ProjectionSession bblVar = this.h;
        return bblVar != null && g(bblVar.h).f == 2;
    }

    public final boolean y(UsbDevice usbDevice) {
        return this.k.c(usbDevice) && ((ProjectionDeviceImpl) this.d.e(usbDevice)).f;
    }

    public final boolean z(ProjectionDevice awoVar) {
        return B() && !awoVar.f() && awoVar.b() == ProjectionVisibilityState.BACKGROUND;
    }
}
