package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cth extends cti {
    private final String b;
    private final String c;
    private final int d;
    private final String e;
    private int f = 0;

    public cth(String str, String str2, int i, String str3) {
        this.b = str;
        this.c = str2;
        this.d = i;
        this.e = str3;
    }

    @Override // defpackage.cti
    public final int a() {
        return (char) this.d;
    }

    @Override // defpackage.cti
    public final String b() {
        return this.b.replace('/', '.');
    }

    @Override // defpackage.cti
    public final String c() {
        return this.e;
    }

    @Override // defpackage.cti
    public final String d() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof cth) {
            cth cthVar = (cth) obj;
            if (this.b.equals(cthVar.b) && this.c.equals(cthVar.c) && this.d == cthVar.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f;
        if (i != 0) {
            return i;
        }
        int hashCode = ((((this.b.hashCode() + 4867) * 31) + this.c.hashCode()) * 31) + this.d;
        this.f = hashCode;
        return hashCode;
    }
}
