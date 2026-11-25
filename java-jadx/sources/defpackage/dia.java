package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dia implements dny {
    private static final Object a = new Object();
    private volatile dny b;
    private volatile Object c = a;

    private dia(dny dnyVar) {
        this.b = dnyVar;
    }

    public static dny b(dny dnyVar) {
        if ((dnyVar instanceof dia) || (dnyVar instanceof dhw)) {
            return dnyVar;
        }
        dnyVar.getClass();
        return new dia(dnyVar);
    }

    @Override // defpackage.dny
    public final Object a() {
        Object obj = this.c;
        if (obj != a) {
            return obj;
        }
        dny dnyVar = this.b;
        if (dnyVar == null) {
            return this.c;
        }
        Object a2 = dnyVar.a();
        this.c = a2;
        this.b = null;
        return a2;
    }
}
