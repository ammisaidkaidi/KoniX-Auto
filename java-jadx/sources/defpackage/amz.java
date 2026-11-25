package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class amz {
    public final amx a;
    public final amv b;

    public amz(int i, int i2, int i3, int i4) {
        this.a = new amx(i, i2);
        this.b = new amv(i3, i4);
    }

    public final amt a(int i, long j) {
        amv amvVar = this.b;
        amw amwVar = (amw) amvVar.get(Integer.valueOf(i));
        if (amwVar == null) {
            return null;
        }
        switch (amvVar.a) {
            case 2:
                if (j - amwVar.b >= amvVar.b) {
                    return null;
                }
                break;
            case 3:
                break;
            default:
                return null;
        }
        return amwVar.a;
    }
}
