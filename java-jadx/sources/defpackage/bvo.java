package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bvo implements dhx {
    private final dny a;
    private final dny b;
    private final dny c;
    private final dny d;

    public bvo(dny dnyVar, dny dnyVar2, dny dnyVar3, dny dnyVar4) {
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
    }

    @Override // defpackage.dny
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final bvn a() {
        String str = (String) this.a.a();
        bwf a = ((bwg) this.b).a();
        return new bvn(str, a, this.d);
    }
}
