package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class daa extends cyl implements Runnable {
    private dag a;

    public daa(dag dagVar) {
        this.a = dagVar;
    }

    @Override // defpackage.cyp
    protected final String a() {
        dag dagVar = this.a;
        if (dagVar == null) {
            return null;
        }
        String obj = dagVar.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 11);
        sb.append("delegate=[");
        sb.append(obj);
        sb.append("]");
        return sb.toString();
    }

    @Override // defpackage.cyp
    protected final void c() {
        this.a = null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dag dagVar = this.a;
        if (dagVar != null) {
            d(dagVar);
        }
    }
}
