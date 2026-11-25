package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bh implements Runnable {
    final /* synthetic */ bm a;

    public bh(bm bmVar) {
        this.a = bmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        bm bmVar = this.a;
        bmVar.a.onDismiss(bmVar.c);
    }
}
