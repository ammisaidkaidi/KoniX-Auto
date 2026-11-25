package defpackage;

import android.bluetooth.BluetoothAdapter;
import android.car.CarProjectionManager;
import android.content.Context;
import android.media.AudioManager;
import android.net.wifi.WifiManager;
import android.os.UserManager;
import com.google.android.projection.protocol.GalReceiver;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class avc implements dhx {
    private final dny a;
    private final dny b;
    private final dny c;
    private final dny d;
    private final /* synthetic */ int e;

    public avc(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, int i) {
        this.e = i;
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
    }

    public avc(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, int i, byte[] bArr) {
        this.e = i;
        this.d = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
        this.b = dnyVar4;
    }

    public avc(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, int i, char[] cArr) {
        this.e = i;
        this.d = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.a = dnyVar4;
    }

    public avc(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, int i, float[] fArr) {
        this.e = i;
        this.a = dnyVar;
        this.d = dnyVar2;
        this.c = dnyVar3;
        this.b = dnyVar4;
    }

    public avc(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, int i, int[] iArr) {
        this.e = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
    }

    public avc(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, int i, short[] sArr) {
        this.e = i;
        this.d = dnyVar;
        this.a = dnyVar2;
        this.b = dnyVar3;
        this.c = dnyVar4;
    }

    public avc(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, int i, boolean[] zArr) {
        this.e = i;
        this.d = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.a = dnyVar4;
    }

    public avc(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, int i, byte[][] bArr) {
        this.e = i;
        this.b = dnyVar;
        this.c = dnyVar2;
        this.d = dnyVar3;
        this.a = dnyVar4;
    }

    public avc(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, int i, char[][] cArr) {
        this.e = i;
        this.a = dnyVar;
        this.d = dnyVar2;
        this.b = dnyVar3;
        this.c = dnyVar4;
    }

    public avc(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, int i, short[][] sArr) {
        this.e = i;
        this.b = dnyVar;
        this.a = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
    }

    @Override // defpackage.dny
    public final /* synthetic */ Object a() {
        switch (this.e) {
            case 0:
                return new avb(((dhr) this.a).a(), (BluetoothAdapter) this.b.a(), (bde) this.c.a(), (Executor) this.d.a());
            case 1:
                AudioManager audioManager = (AudioManager) this.d.a();
                GalReceiver galReceiver = (GalReceiver) ((dhy) this.a).a;
                zn znVar = (zn) this.c.a();
                return new auw(audioManager, galReceiver, znVar, atz.b());
            case 2:
                return new avk(((dhr) this.d).a(), (BluetoothAdapter) this.b.a(), (UserManager) this.c.a(), (bde) this.a.a());
            case 3:
                return ayf.b(((dhr) this.d).a(), ((ayi) this.a).a(), (CarProjectionManager) this.b.a(), (bcj) this.c.a());
            case 4:
                return new bcu(((dhr) this.b).a(), (GalReceiver) ((dhy) this.a).a, (zn) this.c.a(), (bah) this.d.a());
            case 5:
                Context a = ((dhr) this.d).a();
                CarProjectionManager carProjectionManager = (CarProjectionManager) this.b.a();
                WifiManager wifiManager = (WifiManager) this.c.a();
                return new bhi(a, carProjectionManager, wifiManager);
            case 6:
                return new bxw(dhw.b(this.a), this.d, (coc) ((dhy) this.c).a, (Executor) this.b.a());
            case 7:
                return new caf((bvh) this.b.a(), this.c, this.d, this.a);
            case 8:
                ((atg) this.a).b();
                ((cax) this.d).a();
                return cqw.o((bwq) this.c.a());
            default:
                return new cce(this.b, this.a, this.c, this.d);
        }
    }
}
