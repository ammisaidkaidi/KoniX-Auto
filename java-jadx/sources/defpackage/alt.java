package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class alt implements Runnable {
    private final alu a;
    private final String b;

    public alt(alu aluVar, String str) {
        this.a = aluVar;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.a.d) {
            if (((alt) this.a.b.remove(this.b)) != null) {
                als alsVar = (als) this.a.c.remove(this.b);
                if (alsVar != null) {
                    alsVar.b(this.b);
                }
            } else {
                agr a = agr.a();
                String.format("Timer with %s is already marked as complete.", this.b);
                a.d(new Throwable[0]);
            }
        }
    }
}
