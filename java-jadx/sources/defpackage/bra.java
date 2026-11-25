package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bra implements Runnable {
    final /* synthetic */ brh a;
    final /* synthetic */ brb b;

    public bra(brb brbVar, brh brhVar) {
        this.b = brbVar;
        this.a = brhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.b.a) {
            brc brcVar = this.b.b;
            if (brcVar != null) {
                brcVar.a(this.a);
            }
        }
    }
}
