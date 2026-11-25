package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dhi implements dht {
    private final aaj a;
    private final Object b = new Object();
    private volatile ast c;

    public dhi(tk tkVar) {
        dhd dhdVar = new dhd(tkVar);
        aed ai = tkVar.ai();
        ai.getClass();
        this.a = new aaj(ai, dhdVar, null);
    }

    @Override // defpackage.dht
    public final /* bridge */ /* synthetic */ Object aT() {
        if (this.c == null) {
            synchronized (this.b) {
                if (this.c == null) {
                    this.c = ((dhf) this.a.a(dhf.class)).a;
                }
            }
        }
        return this.c;
    }
}
