package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public class bce extends jf implements dht {
    private volatile dhc m;
    private final Object n = new Object();
    public boolean l = false;

    public bce() {
        j(new bcd(this));
    }

    @Override // defpackage.dht
    public final Object aT() {
        if (this.m == null) {
            synchronized (this.n) {
                if (this.m == null) {
                    this.m = new dhc(this);
                }
            }
        }
        return this.m.aT();
    }
}
