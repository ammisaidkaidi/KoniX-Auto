package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bxd implements dhx {
    private final dny a;
    private final dny b;
    private final dny c;

    public bxd(dny dnyVar, dny dnyVar2, dny dnyVar3) {
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
    }

    @Override // defpackage.dny
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final bxc a() {
        dhw.b(this.b);
        return new bxc(((dhr) this.c).a());
    }
}
