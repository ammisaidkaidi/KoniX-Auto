package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cof extends coc {
    private static final long serialVersionUID = 0;
    public final Object a;

    public cof(Object obj) {
        this.a = obj;
    }

    @Override // defpackage.coc
    public final Object a() {
        return this.a;
    }

    @Override // defpackage.coc
    public final Object b(Object obj) {
        obj.getClass();
        return this.a;
    }

    @Override // defpackage.coc
    public final Object c() {
        return this.a;
    }

    @Override // defpackage.coc
    public final boolean d() {
        return true;
    }

    @Override // defpackage.coc
    public final boolean equals(Object obj) {
        if (obj instanceof cof) {
            return this.a.equals(((cof) obj).a);
        }
        return false;
    }

    @Override // defpackage.coc
    public final int hashCode() {
        return this.a.hashCode() + 1502476572;
    }

    public final String toString() {
        String obj = this.a.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 13);
        sb.append("Optional.of(");
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
