package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class qe implements Runnable {
    final /* synthetic */ qf a;
    private final /* synthetic */ int b;

    public qe(qf qfVar, int i) {
        this.b = i;
        this.a = qfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                pf pfVar = this.a.e;
                if (pfVar != null && hs.F(pfVar) && this.a.e.getCount() > this.a.e.getChildCount()) {
                    this.a.e.getChildCount();
                    this.a.p.setInputMethodMode(2);
                    this.a.s();
                    break;
                }
                break;
            default:
                this.a.p();
                break;
        }
    }
}
