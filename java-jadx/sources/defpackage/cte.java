package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cte extends cug {
    public Object[] a = new Object[8];
    public int b = 0;

    public final int a(ctt cttVar) {
        for (int i = 0; i < this.b; i++) {
            if (this.a[i + i].equals(cttVar)) {
                return i;
            }
        }
        return -1;
    }

    @Override // defpackage.cug
    public final int b() {
        return this.b;
    }

    @Override // defpackage.cug
    public final ctt c(int i) {
        if (i < this.b) {
            return (ctt) this.a[i + i];
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // defpackage.cug
    public final Object d(ctt cttVar) {
        int a = a(cttVar);
        if (a != -1) {
            return cttVar.d(this.a[a + a + 1]);
        }
        return null;
    }

    @Override // defpackage.cug
    public final Object e(int i) {
        if (i < this.b) {
            return this.a[i + i + 1];
        }
        throw new IndexOutOfBoundsException();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Metadata{");
        for (int i = 0; i < this.b; i++) {
            sb.append(" '");
            sb.append(c(i));
            sb.append("': ");
            sb.append(e(i));
        }
        sb.append(" }");
        return sb.toString();
    }
}
