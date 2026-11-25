package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dhm implements dht {
    private volatile Object a;
    private final Object b = new Object();
    private final br c;

    public dhm(br brVar) {
        this.c = brVar;
    }

    @Override // defpackage.dht
    public final Object aT() {
        if (this.a == null) {
            synchronized (this.b) {
                if (this.a == null) {
                    if (this.c.E() == null) {
                        throw new NullPointerException("Sting Fragments must be attached before creating the component.");
                    }
                    dpx.o(this.c.E() instanceof dht, "Sting Fragments must be attached to an @Sting Activity. Found: %s", this.c.E().getClass());
                    atf a = ((dhl) dpx.s(this.c.E(), dhl.class)).a();
                    a.a = this.c;
                    dpx.l(a.a, br.class);
                    this.a = new asu();
                }
            }
        }
        return this.a;
    }
}
