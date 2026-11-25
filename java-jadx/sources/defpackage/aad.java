package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aad implements Runnable {
    final zl a;
    private boolean b = false;
    private final zn c;

    public aad(zn znVar, zl zlVar) {
        this.c = znVar;
        this.a = zlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.b) {
            return;
        }
        this.c.c(this.a);
        this.b = true;
    }
}
