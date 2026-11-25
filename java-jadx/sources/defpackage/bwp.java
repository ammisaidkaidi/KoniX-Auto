package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bwp implements dhx {
    private final dny a;
    private final dny b;
    private final dny c;
    private final dny d;
    private final dny e;
    private final dny f;

    public bwp(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4, dny dnyVar5, dny dnyVar6) {
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
        this.e = dnyVar5;
        this.f = dnyVar6;
    }

    @Override // defpackage.dny
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final bwo a() {
        return new bwo(this.a, this.b, this.c, this.d, this.e, this.f);
    }
}
