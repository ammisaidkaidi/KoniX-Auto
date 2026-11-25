package defpackage;

import android.car.CarProjectionManager;
import android.location.LocationManager;
import android.net.wifi.WifiManager;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bds implements dhx {
    private final dny a;
    private final dny b;
    private final dny c;
    private final dny d;
    private final dny e;
    private final dny f;
    private final /* synthetic */ int g;

    public bds(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, dny dnyVar5, dny dnyVar6, int i) {
        this.g = i;
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
        this.e = dnyVar5;
        this.f = dnyVar6;
    }

    public bds(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, dny dnyVar5, dny dnyVar6, int i, byte[] bArr) {
        this.g = i;
        this.d = dnyVar;
        this.b = dnyVar2;
        this.f = dnyVar3;
        this.a = dnyVar4;
        this.c = dnyVar5;
        this.e = dnyVar6;
    }

    public bds(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, dny dnyVar5, dny dnyVar6, int i, char[] cArr) {
        this.g = i;
        this.d = dnyVar;
        this.a = dnyVar2;
        this.e = dnyVar3;
        this.b = dnyVar4;
        this.c = dnyVar5;
        this.f = dnyVar6;
    }

    @Override // defpackage.dny
    public final /* synthetic */ Object a() {
        switch (this.g) {
            case 0:
                return new bdq(((dhr) this.a).a(), (WifiManager) this.b.a(), (CarProjectionManager) this.c.a(), atz.c(), (dah) this.d.a(), (bde) this.e.a(), (LocationManager) this.f.a());
            case 1:
                return new bah(((dhr) this.d).a(), (bcj) this.b.a(), (bby) this.f.a(), (CarProjectionManager) this.a.a(), (dhq) this.c.a(), ((axu) this.e).a(), null, null, null);
            default:
                return new cbh(((bwp) this.d).a(), (dai) this.a.a(), dhw.b(this.e), dhw.b(this.b), this.c, ((cbw) this.f).a());
        }
    }
}
