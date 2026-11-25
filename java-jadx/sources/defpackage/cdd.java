package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cdd implements dhx {
    private final dny a;
    private final dny b;
    private final dny c;
    private final dny d;
    private final dny e;

    public cdd(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, dny dnyVar5) {
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
        this.e = dnyVar5;
    }

    @Override // defpackage.dny
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final cdc a() {
        return new cdc(((dhr) this.a).a(), (coc) ((dhy) this.b).a, (coc) ((dhy) this.c).a, (coc) ((dhy) this.d).a, ((atg) this.e).b());
    }
}
