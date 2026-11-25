package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PhenotypeCommitterRunnable implements Runnable {
    final /* synthetic */ PhenotypeFlagCommitter a;

    public PhenotypeCommitterRunnable(PhenotypeFlagCommitter boxVar) {
        this.a = boxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.a(3);
    }
}
