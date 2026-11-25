package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class cwd {
    public final int a;
    public final cty b;

    protected cwd(cty ctyVar, int i) {
        if (ctyVar == null) {
            throw new IllegalArgumentException("format options cannot be null");
        }
        if (i >= 0) {
            this.a = i;
            this.b = ctyVar;
        } else {
            StringBuilder sb = new StringBuilder(26);
            sb.append("invalid index: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    public abstract void a(cwe cweVar, Object obj);
}
