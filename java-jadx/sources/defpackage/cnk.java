package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cnk implements czb {
    final /* synthetic */ cnj a;
    final /* synthetic */ czb b;

    public cnk(cnj cnjVar, czb czbVar) {
        this.a = cnjVar;
        this.b = czbVar;
    }

    @Override // defpackage.czb
    public final dag a() {
        cnj c = cnr.c(this.a);
        try {
            return this.b.a();
        } finally {
            cnr.c(c);
        }
    }

    public final String toString() {
        String obj = this.b.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 14);
        sb.append("propagating=[");
        sb.append(obj);
        sb.append("]");
        return sb.toString();
    }
}
