package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public class bfo extends tk implements dht {
    private volatile dhc a;
    private final Object b = new Object();
    public boolean c = false;

    public bfo() {
        j(new bfn(this));
    }

    @Override // defpackage.dht
    public final Object aT() {
        if (this.a == null) {
            synchronized (this.b) {
                if (this.a == null) {
                    this.a = new dhc(this);
                }
            }
        }
        return this.a.aT();
    }
}
