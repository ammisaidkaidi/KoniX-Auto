package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cnl implements czc {
    final /* synthetic */ cnj a;
    final /* synthetic */ czc b;

    public cnl(cnj cnjVar, czc czcVar) {
        this.a = cnjVar;
        this.b = czcVar;
    }

    @Override // defpackage.czc
    public final dag a(Object obj) {
        cnj c = cnr.c(this.a);
        try {
            return this.b.a(obj);
        } finally {
            cnr.c(c);
        }
    }

    public final String toString() {
        String valueOf = String.valueOf(this.b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14);
        sb.append("propagating=[");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }
}
