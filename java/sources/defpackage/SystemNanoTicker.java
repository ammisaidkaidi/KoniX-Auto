package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SystemNanoTicker implements Serializable, col {
    private static final long serialVersionUID = 0;
    final StopwatchTicker a;
    volatile transient boolean b;
    transient Object c;

    public SystemNanoTicker(StopwatchTicker colVar) {
        colVar.getClass();
        this.a = colVar;
    }

    @Override // defpackage.StopwatchTicker
    public final Object a() {
        if (!this.b) {
            synchronized (this) {
                if (!this.b) {
                    Object a = this.a.a();
                    this.c = a;
                    this.b = true;
                    return a;
                }
            }
        }
        return this.c;
    }

    public final String toString() {
        Object obj;
        if (this.b) {
            String valueOf = String.valueOf(this.c);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
            StaggeredGridLayoutParams.append("<supplier that returned ");
            StaggeredGridLayoutParams.append(valueOf);
            StaggeredGridLayoutParams.append(">");
            obj = StaggeredGridLayoutParams.toString();
        } else {
            obj = this.a;
        }
        String obj2 = obj.toString();
        StringBuilder sb2 = new StringBuilder(obj2.length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(obj2);
        sb2.append(")");
        return sb2.toString();
    }
}
