package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class blh implements Runnable {
    final /* synthetic */ bli a;

    public blh(bli bliVar) {
        this.a = bliVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        bjx bjxVar = this.a.a.b;
        bjxVar.e(String.valueOf(bjxVar.getClass().getName()).concat(" disconnecting because it was signed out."));
    }
}
