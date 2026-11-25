package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aax implements Runnable {
    final /* synthetic */ Object a;
    final /* synthetic */ aay b;

    public aax(aay aayVar, Object obj) {
        this.b = aayVar;
        this.a = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aay aayVar = this.b;
        Object obj = this.a;
        if (aayVar.f()) {
            aayVar.c();
        } else {
            aayVar.b(obj);
        }
        aayVar.f = 3;
    }
}
