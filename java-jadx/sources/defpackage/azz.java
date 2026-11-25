package defpackage;

import android.car.CarProjectionManager;
import android.content.Context;
import j$.util.Optional;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class azz implements dhx {
    private final dny a;
    private final dny b;
    private final dny c;
    private final dny d;
    private final dny e;
    private final dny f;
    private final dny g;
    private final /* synthetic */ int h;

    public azz(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, dny dnyVar5, dny dnyVar6, dny dnyVar7, int i) {
        this.h = i;
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
        this.e = dnyVar5;
        this.f = dnyVar6;
        this.g = dnyVar7;
    }

    public azz(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, dny dnyVar5, dny dnyVar6, dny dnyVar7, int i, byte[] bArr) {
        this.h = i;
        this.g = dnyVar;
        this.b = dnyVar2;
        this.f = dnyVar3;
        this.c = dnyVar4;
        this.e = dnyVar5;
        this.d = dnyVar6;
        this.a = dnyVar7;
    }

    public azz(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, dny dnyVar5, dny dnyVar6, dny dnyVar7, int i, char[] cArr) {
        this.h = i;
        this.f = dnyVar;
        this.d = dnyVar2;
        this.g = dnyVar3;
        this.b = dnyVar4;
        this.c = dnyVar5;
        this.a = dnyVar6;
        this.e = dnyVar7;
    }

    public azz(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, dny dnyVar5, dny dnyVar6, dny dnyVar7, int i, short[] sArr) {
        this.h = i;
        this.f = dnyVar;
        this.a = dnyVar2;
        this.d = dnyVar3;
        this.g = dnyVar4;
        this.b = dnyVar5;
        this.c = dnyVar6;
        this.e = dnyVar7;
    }

    @Override // defpackage.dny
    public final /* synthetic */ Object a() {
        switch (this.h) {
            case 0:
                return new azy(((dhr) this.a).a(), (bah) this.b.a(), ((bbn) this.c).a(), ((bff) this.d).a(), (azi) this.e.a(), ((axu) this.f).a(), (Optional) ((dhy) this.g).a, null, null, null);
            case 1:
                return new avi(((dhr) this.g).a(), (CarProjectionManager) this.b.a(), (bah) this.f.a(), (awo) ((dhy) this.c).a, (bbl) ((dhy) this.e).a, (avb) this.d.a(), (Executor) this.a.a());
            case 2:
                bwo a = ((bwp) this.f).a();
                Context a2 = ((dhr) this.d).a();
                dai daiVar = (dai) this.g.a();
                dgz b = dhw.b(this.b);
                dny dnyVar = this.c;
                return new bxb(a, a2, daiVar, b, dnyVar, this.e);
            default:
                return new cam(((bwp) this.f).a(), ((dhr) this.a).a(), (bvh) this.d.a(), (Executor) this.g.a(), dhw.b(this.b), ((cbt) this.c).a(), this.e);
        }
    }
}
