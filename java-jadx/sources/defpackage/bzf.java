package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bzf implements dhx {
    private final dny a;
    private final dny b;

    public bzf(dny dnyVar, dny dnyVar2) {
        this.a = dnyVar;
        this.b = dnyVar2;
    }

    @Override // defpackage.dny
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final bze a() {
        return new bze(this.a, ((dhr) this.b).a());
    }
}
