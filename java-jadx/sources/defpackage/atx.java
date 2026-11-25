package defpackage;

import android.bluetooth.BluetoothAdapter;
import android.car.CarProjectionManager;
import android.car.hardware.property.CarPropertyManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.HandlerThread;
import android.provider.Settings;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class atx implements dhx {
    private final dny a;
    private final dny b;
    private final /* synthetic */ int c;

    public atx(dny dnyVar, dny dnyVar2, int i) {
        this.c = i;
        this.a = dnyVar;
        this.b = dnyVar2;
    }

    public atx(dny dnyVar, dny dnyVar2, int i, byte[] bArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public atx(dny dnyVar, dny dnyVar2, int i, char[] cArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public atx(dny dnyVar, dny dnyVar2, int i, float[] fArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public atx(dny dnyVar, dny dnyVar2, int i, int[] iArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public atx(dny dnyVar, dny dnyVar2, int i, short[] sArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public atx(dny dnyVar, dny dnyVar2, int i, boolean[] zArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public atx(dny dnyVar, dny dnyVar2, int i, byte[][] bArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public atx(dny dnyVar, dny dnyVar2, int i, char[][] cArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public atx(dny dnyVar, dny dnyVar2, int i, int[][] iArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public atx(dny dnyVar, dny dnyVar2, int i, short[][] sArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    @Override // defpackage.dny
    public final /* synthetic */ Object a() {
        Object obj;
        boolean z = false;
        switch (this.c) {
            case 0:
                att attVar = dji.a.a().a() ? (att) dhw.b(this.a).a() : (att) dhw.b(this.b).a();
                dpx.m(attVar);
                return attVar;
            case 1:
                Context a = ((dhr) this.a).a();
                PackageManager packageManager = (PackageManager) this.b.a();
                if (!djx.a.a().a()) {
                    z = true;
                } else if (Settings.Secure.getString(a.getContentResolver(), "assistant") != null) {
                    z = true;
                } else {
                    List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(new Intent("android.service.voice.VoiceInteractionService"), 786432);
                    if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            case 2:
                zn znVar = (zn) this.b.a();
                return new aun(znVar);
            case 3:
                BluetoothAdapter bluetoothAdapter = (BluetoothAdapter) this.a.a();
                dny dnyVar = this.b;
                if (bluetoothAdapter == null) {
                    ((csx) avd.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothModule", "provideBluetoothService", 33, "BluetoothModule.java")).n("No bluetooth adapter found.");
                    obj = baz.a;
                } else if (TextUtils.isEmpty(bluetoothAdapter.getAddress())) {
                    ((csx) avd.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothModule", "provideBluetoothService", 37, "BluetoothModule.java")).n("No bluetooth-address found.");
                    obj = baz.a;
                } else {
                    obj = ((avi) dnyVar.a()).h;
                }
                dpx.m(obj);
                return obj;
            case 4:
                return new avq(this.b, this.a);
            case 5:
                return new cew(((dhr) this.a).a(), (dah) this.b.a(), new hh(), null);
            case 6:
                return new azi((CarPropertyManager) this.a.a(), (bah) this.b.a());
            case 7:
                azj azjVar = din.a.a().a() ? (azj) dhw.b(this.a).a() : (azj) dhw.b(this.b).a();
                dpx.m(azjVar);
                return azjVar;
            case 8:
                return new bat(((dhr) this.a).a(), (CarProjectionManager) this.b.a());
            case 9:
                cxz c = cde.c();
                cor a2 = ((bru) this.b).a();
                return new bde(c, a2);
            case 10:
                Context a3 = ((dhr) this.a).a();
                bdu bduVar = (bdu) this.b.a();
                cmg cmgVar = new cmg();
                cmgVar.a = a3;
                cmgVar.b = bduVar;
                if (cmgVar.a == null) {
                    throw new IllegalArgumentException("Context was not provided");
                }
                cmj cmjVar = new cmj();
                if (cmgVar.b != null) {
                    cmjVar.c = Arrays.asList(new cmm(cmgVar.a, 0), new cmm(cmgVar.a, 1, null), new cme(cmgVar.b));
                } else {
                    cmjVar.c = Arrays.asList(new cmm(cmgVar.a, 0), new cmm(cmgVar.a, 1, null));
                }
                return cmjVar;
            case 11:
                return new bgi(((dhr) this.a).a(), (bbl) ((dhy) this.b).a);
            case 12:
                bsv bsvVar = new bsv((Context) ((dhy) this.b).a, ((bsq) this.a).a(), null);
                HandlerThread handlerThread = new HandlerThread("CheckboxObserverThread");
                handlerThread.start();
                bsvVar.a.getContentResolver().registerContentObserver(Settings.Global.getUriFor("multi_cb"), false, new bsu(bsvVar, new boh(handlerThread.getLooper())));
                return bsvVar;
            case 13:
                SharedPreferences sharedPreferences = (SharedPreferences) ((col) ((cbo) this.b).a().b(new bya(((dhr) this.a).a(), 1))).a();
                dpx.m(sharedPreferences);
                return sharedPreferences;
            case 14:
                return new btt((dai) this.a.a(), (bvh) this.b.a());
            case 15:
                buj bujVar = (buj) this.b.a();
                brw a4 = ((brx) this.a).a();
                int i = bujVar.b;
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(i, new buh(bujVar.a), new buf());
                scheduledThreadPoolExecutor.setMaximumPoolSize(i);
                dai l = hi.l(scheduledThreadPoolExecutor);
                bry bryVar = a4.a;
                if (bryVar != null) {
                    l = bryVar.a();
                }
                dpx.m(l);
                return l;
            case 16:
                return new bvh(((dhr) this.a).a(), (bvj) this.b.a());
            case 17:
                Object o = ((coc) ((dhy) this.b).a).d() ? cqw.o((bwq) this.a.a()) : csf.a;
                dpx.m(o);
                return o;
            case 18:
                Object o2 = !((coc) ((dhy) this.b).a).d() ? csf.a : cqw.o((bwq) this.a.a());
                dpx.m(o2);
                return o2;
            case 19:
                ((atg) this.b).b();
                return cqw.o((bwq) this.a.a());
            default:
                ((atg) this.b).b();
                return cqw.o((bwq) this.a.a());
        }
    }
}
