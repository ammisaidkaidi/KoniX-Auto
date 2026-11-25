package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
class bfq extends tk implements dht {
    private volatile dhc ez;
    private final Object eA = new Object();
    private boolean c = false;

    public bfq() {
        j(new bfp(this));
    }

    @Override // defpackage.dht
    public final Object aT() {
        if (this.ez == null) {
            synchronized (this.eA) {
                if (this.ez == null) {
                    this.ez = new dhc(this);
                }
            }
        }
        return this.ez.aT();
    }

    protected void y() {
        if (this.c) {
            return;
        }
        this.c = true;
        ((bfi) this).v = (azy) ((ass) aT()).a.z.a();
    }
}
