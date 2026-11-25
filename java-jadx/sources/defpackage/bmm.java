package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bmm extends bmf {
    final /* synthetic */ bmn g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bmm(bmn bmnVar, int i) {
        super(bmnVar, i, null);
        this.g = bmnVar;
    }

    @Override // defpackage.bmf
    protected final void a(biz bizVar) {
        this.g.f.a(bizVar);
        System.currentTimeMillis();
    }

    @Override // defpackage.bmf
    protected final boolean c() {
        this.g.f.a(biz.a);
        return true;
    }
}
