package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class byo implements dhx {
    private final dny a;
    private final dny b;

    public byo(dny dnyVar, dny dnyVar2) {
        this.a = dnyVar;
        this.b = dnyVar2;
    }

    @Override // defpackage.dny
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Boolean a() {
        coc cocVar = (coc) ((dhy) this.a).a;
        dny dnyVar = this.b;
        boolean z = false;
        if (cocVar.d() && ((Boolean) cocVar.a()).booleanValue() && ((Boolean) dnyVar.a()).booleanValue()) {
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
