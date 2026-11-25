package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public class bfw extends tk implements dht {
    private volatile dhc b;
    private final Object c = new Object();
    public boolean a = false;

    public bfw() {
        j(new bfv(this));
    }

    @Override // defpackage.dht
    public final Object aT() {
        if (this.b == null) {
            synchronized (this.c) {
                if (this.b == null) {
                    this.b = new dhc(this);
                }
            }
        }
        return this.b.aT();
    }
}
