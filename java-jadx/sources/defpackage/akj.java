package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class akj {
    public String a;
    public int b;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof akj)) {
            return false;
        }
        akj akjVar = (akj) obj;
        if (this.b != akjVar.b) {
            return false;
        }
        return this.a.equals(akjVar.a);
    }

    public final int hashCode() {
        int hashCode = this.a.hashCode();
        int i = this.b;
        fv.B(i);
        return (hashCode * 31) + i;
    }
}
