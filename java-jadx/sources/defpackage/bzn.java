package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bzn implements dhx {
    private final dny a;
    private final dny b;
    private final /* synthetic */ int c;

    public bzn(dny dnyVar, dny dnyVar2, int i) {
        this.c = i;
        this.a = dnyVar;
        this.b = dnyVar2;
    }

    public bzn(dny dnyVar, dny dnyVar2, int i, byte[] bArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    public bzn(dny dnyVar, dny dnyVar2, int i, char[] cArr) {
        this.c = i;
        this.b = dnyVar;
        this.a = dnyVar2;
    }

    @Override // defpackage.dny
    public final /* synthetic */ Object a() {
        switch (this.c) {
            case 0:
                ((atg) this.a).b();
                return cqw.o((bzm) this.b.a());
            case 1:
                return new byy((bvh) this.b.a(), (dai) this.a.a());
            case 2:
                ((atg) this.a).b();
                return cqw.o((bwq) this.b.a());
            case 3:
                return new cav((cau) this.b.a(), ((cax) this.a).a());
            default:
                Object o = cdh.c((coc) ((dhy) this.a).a) ? cqw.o(((cdd) this.b).a()) : csf.a;
                dpx.m(o);
                return o;
        }
    }
}
