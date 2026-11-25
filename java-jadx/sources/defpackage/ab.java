package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ab extends ac {
    private static final long serialVersionUID = 7766999779862263523L;

    public ab(ad adVar, ad adVar2) {
        super(adVar, adVar2);
    }

    @Override // defpackage.ad
    public final boolean a(ae aeVar) {
        return this.a.a(aeVar) && this.b.a(aeVar);
    }

    public final String toString() {
        String obj = this.a.toString();
        String obj2 = this.b.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 5 + String.valueOf(obj2).length());
        sb.append(obj);
        sb.append(" and ");
        sb.append(obj2);
        return sb.toString();
    }
}
