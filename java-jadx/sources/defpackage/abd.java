package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class abd implements Runnable {
    final /* synthetic */ abe a;

    public abd(abe abeVar) {
        this.a = abeVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        abe abeVar = this.a;
        abeVar.f.b.remove(abeVar.g.a());
    }
}
