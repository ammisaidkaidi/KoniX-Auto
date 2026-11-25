package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aic implements Runnable {
    final /* synthetic */ akk a;
    final /* synthetic */ aid b;

    public aic(aid aidVar, akk akkVar) {
        this.b = aidVar;
        this.a = akkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        agr a = agr.a();
        int i = aid.d;
        String.format("Scheduling work %s", this.a.b);
        a.d(new Throwable[0]);
        this.b.a.c(this.a);
    }
}
