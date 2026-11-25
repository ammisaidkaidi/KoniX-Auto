package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bxl implements dhx {
    private final dny a;
    private final dny b;
    private final dny c;
    private final dny d;
    private final dny e;
    private final dny f;
    private final dny g;
    private final dny h;
    private final dny i;
    private final /* synthetic */ int j;

    public bxl(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, dny dnyVar5, dny dnyVar6, dny dnyVar7, dny dnyVar8, dny dnyVar9, int i) {
        this.j = i;
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
        this.e = dnyVar5;
        this.f = dnyVar6;
        this.g = dnyVar7;
        this.h = dnyVar8;
        this.i = dnyVar9;
    }

    public bxl(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, dny dnyVar5, dny dnyVar6, dny dnyVar7, dny dnyVar8, dny dnyVar9, int i, byte[] bArr) {
        this.j = i;
        this.h = dnyVar;
        this.b = dnyVar2;
        this.f = dnyVar3;
        this.c = dnyVar4;
        this.i = dnyVar5;
        this.g = dnyVar6;
        this.d = dnyVar7;
        this.e = dnyVar8;
        this.a = dnyVar9;
    }

    public bxl(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, dny dnyVar5, dny dnyVar6, dny dnyVar7, dny dnyVar8, dny dnyVar9, int i, char[] cArr) {
        this.j = i;
        this.e = dnyVar;
        this.h = dnyVar2;
        this.d = dnyVar3;
        this.a = dnyVar4;
        this.i = dnyVar5;
        this.g = dnyVar6;
        this.c = dnyVar7;
        this.f = dnyVar8;
        this.b = dnyVar9;
    }

    @Override // defpackage.dny
    public final /* synthetic */ Object a() {
        switch (this.j) {
            case 0:
                return new bxk(((bwp) this.a).a(), ((dhr) this.b).a(), (Executor) this.c.a(), dhw.b(this.d), (coc) ((dhy) this.e).a, (bvh) this.f.a(), ((cbw) this.g).a(), (coc) ((dhy) this.h).a, this.i);
            case 1:
                return new bvu(((bwp) this.h).a(), ((dhr) this.b).a(), (bvh) this.f.a(), (dai) this.c.a(), dhw.b(this.i), ((bwe) this.g).a(), ((bvo) this.d).a(), this.e, (Executor) this.a.a());
            default:
                return new bxu(((bwp) this.e).a(), ((dhr) this.h).a(), (bvh) this.d.a(), (Executor) this.a.a(), ((bxq) this.i).a(), this.g, dhw.b(this.c), this.f, this.b);
        }
    }
}
