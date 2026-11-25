package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ajz {
    public final String a;
    public final int b;

    public ajz(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ajz)) {
            return false;
        }
        ajz ajzVar = (ajz) obj;
        if (this.b != ajzVar.b) {
            return false;
        }
        return this.a.equals(ajzVar.a);
    }

    public final int hashCode() {
        return (this.a.hashCode() * 31) + this.b;
    }
}
