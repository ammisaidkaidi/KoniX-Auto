package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class caw implements dny {
    public final /* synthetic */ dny a;
    private final /* synthetic */ int b;

    public /* synthetic */ caw(dny dnyVar, int i) {
        this.b = i;
        this.a = dnyVar;
    }

    @Override // defpackage.dny
    public final Object a() {
        switch (this.b) {
            case 0:
                return (cbc) this.a.a();
            default:
                btp btpVar = (btp) this.a;
                if (!btpVar.a().d() || ((bwh) btpVar.a().a()).b() == null) {
                    return null;
                }
                dny b = ((bwh) btpVar.a().a()).b();
                b.getClass();
                return (dot) b.a();
        }
    }
}
