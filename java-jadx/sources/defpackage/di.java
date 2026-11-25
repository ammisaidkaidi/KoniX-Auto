package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class di implements Runnable {
    final /* synthetic */ dj a;
    final /* synthetic */ dm b;
    private final /* synthetic */ int c;

    public di(dm dmVar, dj djVar, int i) {
        this.c = i;
        this.b = dmVar;
        this.a = djVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.c) {
            case 0:
                this.b.b.remove(this.a);
                this.b.c.remove(this.a);
                break;
            default:
                if (this.b.b.contains(this.a)) {
                    dj djVar = this.a;
                    r.o(djVar.e, djVar.a.P);
                    break;
                }
                break;
        }
    }
}
