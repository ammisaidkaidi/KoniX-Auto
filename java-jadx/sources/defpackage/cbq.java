package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cbq implements dhx {
    private final dny a;
    private final dny b;

    public cbq(dny dnyVar, dny dnyVar2) {
        this.a = dnyVar;
        this.b = dnyVar2;
    }

    @Override // defpackage.dny
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final cbp a() {
        return new cbp(((dhr) this.a).a(), this.b);
    }
}
