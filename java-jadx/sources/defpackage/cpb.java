package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cpb extends cpe {
    final /* synthetic */ cpi a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cpb(cpi cpiVar) {
        super(cpiVar);
        this.a = cpiVar;
    }

    @Override // defpackage.cpe
    public final /* bridge */ /* synthetic */ Object a(int i) {
        return new cpg(this.a, i);
    }
}
