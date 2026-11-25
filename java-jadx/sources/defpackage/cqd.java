package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cqd extends csu {
    private final cqh a;

    public cqd(cqh cqhVar, int i) {
        super(cqhVar.size(), i);
        this.a = cqhVar;
    }

    @Override // defpackage.csu
    protected final Object a(int i) {
        return this.a.get(i);
    }
}
