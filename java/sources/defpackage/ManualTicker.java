package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ManualTicker implements StopwatchTicker {
    volatile StopwatchTicker a;
    volatile boolean b;
    Object c;

    public ManualTicker(StopwatchTicker colVar) {
        colVar.getClass();
        this.a = colVar;
    }

    @Override // defpackage.StopwatchTicker
    public final Object a() {
        if (!this.b) {
            synchronized (this) {
                if (!this.b) {
                    StopwatchTicker colVar = this.a;
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
            StaggeredGridLayoutParams.append("<supplier that returned ");
            StaggeredGridLayoutParams.append(valueOf);
            StaggeredGridLayoutParams.append(">");
            obj = StaggeredGridLayoutParams.toString();
        }
        String obj2 = obj.toString();
        StringBuilder sb2 = new StringBuilder(obj2.length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(obj2);
        sb2.append(")");
        return sb2.toString();
    }
}
