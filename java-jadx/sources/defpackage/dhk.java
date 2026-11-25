package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dhk implements dht {
    private volatile Object a;
    private final Object b = new Object();
    private final atl c;

    public dhk(atl atlVar) {
        this.c = atlVar;
    }

    @Override // defpackage.dht
    public final Object aT() {
        if (this.a == null) {
            synchronized (this.b) {
                if (this.a == null) {
                    atl atlVar = this.c;
                    ate a = atj.a();
                    a.a = new dhq(atlVar.a);
                    dpx.l(a.a, dhq.class);
                    this.a = new atj(a.a);
                }
            }
        }
        return this.a;
    }
}
