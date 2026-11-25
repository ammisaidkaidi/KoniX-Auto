package defpackage;

import android.car.CarAppFocusManager;
import android.car.CarInfoManager;
import android.car.hardware.CarSensorManager;
import android.car.hardware.property.CarPropertyManager;
import android.car.navigation.CarNavigationStatusManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import com.google.android.projection.protocol.GalReceiver;
import com.google.android.projection.protocol.NavigationStatus;
import j$.util.Optional;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Random;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class avy implements dhx {
    private final dny a;
    private final dny b;
    private final dny c;
    private final /* synthetic */ int d;

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i) {
        this.d = i;
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
    }

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i, byte[] bArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i, char[] cArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i, float[] fArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i, int[] iArr) {
        this.d = i;
        this.a = dnyVar;
        this.c = dnyVar2;
        this.b = dnyVar3;
    }

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i, short[] sArr) {
        this.d = i;
        this.c = dnyVar;
        this.a = dnyVar2;
        this.b = dnyVar3;
    }

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i, boolean[] zArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i, byte[][] bArr) {
        this.d = i;
        this.c = dnyVar;
        this.a = dnyVar2;
        this.b = dnyVar3;
    }

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i, char[][] cArr) {
        this.d = i;
        this.c = dnyVar;
        this.a = dnyVar2;
        this.b = dnyVar3;
    }

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i, float[][] fArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i, int[][] iArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i, short[][] sArr) {
        this.d = i;
        this.c = dnyVar;
        this.b = dnyVar2;
        this.a = dnyVar3;
    }

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i, boolean[][] zArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i, byte[][][] bArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i, char[][][] cArr) {
        this.d = i;
        this.a = dnyVar;
        this.c = dnyVar2;
        this.b = dnyVar3;
    }

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i, float[][][] fArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i, int[][][] iArr) {
        this.d = i;
        this.c = dnyVar;
        this.b = dnyVar2;
        this.a = dnyVar3;
    }

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i, short[][][] sArr) {
        this.d = i;
        this.c = dnyVar;
        this.a = dnyVar2;
        this.b = dnyVar3;
    }

    public avy(dny dnyVar, dny dnyVar2, dny dnyVar3, int i, boolean[][][] zArr) {
        this.d = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [j$.util.Optional] */
    /* JADX WARN: Type inference failed for: r0v27, types: [j$.util.Optional] */
    @Override // defpackage.dny
    public final /* synthetic */ Object a() {
        Object navigationStatus;
        bdt bdtVar;
        Object obj;
        String str = "PhenotypeRegistrationInfoModule.java";
        switch (this.d) {
            case 0:
                return new bss(this.a, this.b, this.c);
            case 1:
                return new auq((AudioManager) this.b.a(), (GalReceiver) ((dhy) this.a).a, (zn) this.c.a(), atz.b());
            case 2:
                Context a = ((dhr) this.b).a();
                axc axcVar = (axc) this.a.a();
                Optional optional = (Optional) this.c.a();
                cde.c();
                if (optional.isPresent()) {
                    awn awnVar = new awn(a, (CarNavigationStatusManager) optional.get(), axcVar, a.getResources().getConfiguration());
                    axc axcVar2 = awnVar.c;
                    awk awkVar = awnVar.i;
                    awkVar.getClass();
                    axcVar2.e = new WeakReference(awkVar);
                    navigationStatus = new NavigationStatus(awnVar);
                } else {
                    navigationStatus = baz.a;
                }
                dpx.m(navigationStatus);
                return navigationStatus;
            case 3:
                return new awx(((dhr) this.c).a(), (cqh) this.a.a(), (cqk) this.b.a());
            case 4:
                return new axc(((dhr) this.a).a(), (PackageManager) this.c.a(), (CarAppFocusManager) this.b.a());
            case 5:
                Context a2 = ((dhr) this.b).a();
                dai daiVar = (dai) this.a.a();
                ceo ceoVar = (ceo) this.c.a();
                col j = ex.j(daiVar);
                return new cdz(a2, j, ex.j(ceoVar), coc.e(new cfw(j)));
            case 6:
                Context a3 = ((dhr) this.b).a();
                PackageManager packageManager = (PackageManager) this.a.a();
                cha chaVar = (cha) this.c.a();
                try {
                    Iterator it = chaVar.c(packageManager.getPackageInfo(a3.getPackageName(), 0), chaVar.b(a3.getPackageName())).iterator();
                    while (true) {
                        if (it.hasNext()) {
                            dbt dbtVar = (dbt) it.next();
                            if ("com.google.android.apps.auto.aareceiver#com.google.android.embedded.projection".equals(dbtVar.d.replace(".automation", ""))) {
                                str = Optional.of(dbtVar);
                            }
                        } else {
                            ((csx) ayb.a.c().h("com/google/android/apps/auto/aareceiver/phenotype/PhenotypeRegistrationInfoModule", "providesRegistrationInfo", 59, "PhenotypeRegistrationInfoModule.java")).n("Expected to have Phenotype registration info, but found none");
                            str = Optional.empty();
                        }
                    }
                    return str;
                } catch (PackageManager.NameNotFoundException e) {
                    ((csx) ((csx) ayb.a.c().g(e)).h("com/google/android/apps/auto/aareceiver/phenotype/PhenotypeRegistrationInfoModule", "providesRegistrationInfo", 62, str)).n("PackageName not found");
                    return Optional.empty();
                }
            case 7:
                return new aym(((dhr) this.c).a(), (CarPropertyManager) this.a.a(), (CarInfoManager) this.b.a());
            case 8:
                return new ays(((dhr) this.c).a(), (CarSensorManager) this.a.a(), (CarInfoManager) this.b.a());
            case 9:
                return new azm((zn) this.c.a(), (awt) this.b.a(), ((dhz) this.a).a());
            case 10:
                return new bcm(((dhr) this.b).a(), (bcf) this.a.a(), (bhi) this.c.a());
            case 11:
                bdq bdqVar = (bdq) this.b.a();
                cbv a4 = ((bhf) this.a).a();
                if (((bcj) this.c.a()).e()) {
                    bdtVar = bdqVar.b();
                    if (bdtVar == null) {
                        bdtVar = new bdt(CarCompat.getPersistentApSsid(), CarCompat.getApBssidSafe(null), CarCompat.getPersistentApPsk(), 1, null);
                    }
                } else {
                    bdtVar = null;
                }
                if (bdtVar != null) {
                    bhi bhiVar = (bhi) a4.a.a();
                    bhiVar.getClass();
                    obj = new clm(bdtVar, bhiVar).b;
                } else {
                    obj = baz.a;
                }
                dpx.m(obj);
                return obj;
            case 12:
                Executor executor = ((buj) this.c.a()).c ? (Executor) this.b.a() : (Executor) this.a.a();
                dpx.m(executor);
                return executor;
            case 13:
                return new bws(((dhr) this.b).a(), ((btp) this.a).a(), (String) this.c.a());
            case 14:
                return new bxx();
            case 15:
                ((atg) this.c).b();
                return cqw.o((bwq) this.b.a());
            case 16:
                Random random = (Random) this.c.a();
                cbr cbrVar = (cbr) this.b.a();
                return new cch(random, cbrVar);
            case 17:
                return new ccq(((dhr) this.b).a(), ((dhz) this.a).a(), ((dhz) this.c).a());
            default:
                return new cdh(((dhr) this.b).a(), (coc) ((dhy) this.a).a, ((cdd) this.c).a(), cde.b());
        }
    }
}
