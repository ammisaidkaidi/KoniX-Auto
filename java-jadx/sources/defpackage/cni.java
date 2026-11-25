package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public class cni {
    private final vi a;
    public boolean b = false;

    public cni(vi viVar) {
        this.a = viVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SpanExtras<");
        for (cni cniVar = this; cniVar != null; cniVar = null) {
            for (int i = 0; i < cniVar.a.j; i++) {
                sb.append(this.a.i(i));
                sb.append("], ");
            }
        }
        sb.append(">");
        return sb.toString();
    }
}
