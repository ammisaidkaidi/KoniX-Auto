package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class con implements col {
    volatile col a;
    volatile boolean b;
    Object c;

    public con(col colVar) {
        colVar.getClass();
        this.a = colVar;
    }

    @Override // defpackage.col
    public final Object a() {
        if (!this.b) {
            synchronized (this) {
                if (!this.b) {
                    col colVar = this.a;
                    colVar.getClass();
                    Object a = colVar.a();
                    this.c = a;
                    this.b = true;
                    this.a = null;
                    return a;
                }
            }
        }
        return this.c;
    }

    public final String toString() {
        Object obj = this.a;
        if (obj == null) {
            String valueOf = String.valueOf(this.c);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            obj = sb.toString();
        }
        String obj2 = obj.toString();
        StringBuilder sb2 = new StringBuilder(obj2.length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(obj2);
        sb2.append(")");
        return sb2.toString();
    }
}
