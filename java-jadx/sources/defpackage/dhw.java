package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dhw implements dny, dgz {
    private static final Object a = new Object();
    private volatile dny b;
    private volatile Object c = a;

    private dhw(dny dnyVar) {
        this.b = dnyVar;
    }

    public static dgz b(dny dnyVar) {
        if (dnyVar instanceof dgz) {
            return (dgz) dnyVar;
        }
        dnyVar.getClass();
        return new dhw(dnyVar);
    }

    public static dny c(dny dnyVar) {
        dnyVar.getClass();
        return dnyVar instanceof dhw ? dnyVar : new dhw(dnyVar);
    }

    @Override // defpackage.dny
    public final Object a() {
        Object obj = this.c;
        Object obj2 = a;
        if (obj == obj2) {
            synchronized (this) {
                obj = this.c;
                if (obj == obj2) {
                    obj = this.b.a();
                    Object obj3 = this.c;
                    if (obj3 != obj2 && obj3 != obj) {
                        String valueOf = String.valueOf(obj3);
                        String valueOf2 = String.valueOf(obj);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 118 + String.valueOf(valueOf2).length());
                        sb.append("Scoped provider was invoked recursively returning different results: ");
                        sb.append(valueOf);
                        sb.append(" & ");
                        sb.append(valueOf2);
                        sb.append(". This is likely due to a circular dependency.");
                        throw new IllegalStateException(sb.toString());
                    }
                    this.c = obj;
                    this.b = null;
                }
            }
        }
        return obj;
    }
}
