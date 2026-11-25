package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class gf extends ge {
    private final Object a;

    public gf() {
        super(10);
        this.a = new Object();
    }

    @Override // defpackage.ge
    public final Object a() {
        Object a;
        synchronized (this.a) {
            a = super.a();
        }
        return a;
    }

    @Override // defpackage.ge
    public final boolean b(Object obj) {
        boolean b;
        synchronized (this.a) {
            b = super.b(obj);
        }
        return b;
    }
}
