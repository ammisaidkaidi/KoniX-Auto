package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class btp implements dhx {
    private final dny a;

    public btp(dny dnyVar) {
        this.a = dnyVar;
    }

    @Override // defpackage.dny
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final coc a() {
        bwh bwhVar;
        coc cocVar = (coc) ((dhy) this.a).a;
        if (cocVar.d() && (bwhVar = (bwh) ((dny) cocVar.a()).a()) != null) {
            return new cof(bwhVar);
        }
        return cns.a;
    }
}
