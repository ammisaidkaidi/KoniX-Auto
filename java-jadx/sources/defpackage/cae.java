package defpackage;

import android.car.CarInfoManager;
import android.car.hardware.property.CarPropertyManager;
import android.content.pm.PackageManager;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cae implements dhx {
    private final dny a;
    private final dny b;
    private final dny c;
    private final dny d;
    private final dny e;
    private final /* synthetic */ int f;

    public cae(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, dny dnyVar5, int i) {
        this.f = i;
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
        this.e = dnyVar5;
    }

    public cae(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, dny dnyVar5, int i, byte[] bArr) {
        this.f = i;
        this.c = dnyVar;
        this.e = dnyVar2;
        this.d = dnyVar3;
        this.b = dnyVar4;
        this.a = dnyVar5;
    }

    public cae(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, dny dnyVar5, int i, char[] cArr) {
        this.f = i;
        this.c = dnyVar;
        this.d = dnyVar2;
        this.e = dnyVar3;
        this.a = dnyVar4;
        this.b = dnyVar5;
    }

    @Override // defpackage.dny
    public final /* synthetic */ Object a() {
        switch (this.f) {
            case 0:
                return new cad(((bwp) this.a).a(), (dai) this.b.a(), (Executor) this.c.a(), dhw.b(this.d), this.e);
            case 1:
                return new awt(((dhr) this.c).a(), (CarPropertyManager) this.e.a(), (CarInfoManager) this.d.a(), (ayf) this.b.a(), (PackageManager) this.a.a());
            default:
                return new cau(((bwp) this.c).a(), (Executor) this.d.a(), dhw.b(this.e), this.a, ((cbw) this.b).a());
        }
    }
}
