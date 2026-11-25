package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ctu implements ctj {
    private final ctj a;
    private final Object b;

    public ctu(ctj ctjVar, Object obj) {
        hf.u(ctjVar, "log site key");
        this.a = ctjVar;
        hf.u(obj, "log site qualifier");
        this.b = obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ctu)) {
            return false;
        }
        ctu ctuVar = (ctu) obj;
        return this.a.equals(ctuVar.a) && this.b.equals(ctuVar.b);
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    public final String toString() {
        String obj = this.a.toString();
        String obj2 = this.b.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 50 + obj2.length());
        sb.append("SpecializedLogSiteKey{ delegate='");
        sb.append(obj);
        sb.append("', qualifier='");
        sb.append(obj2);
        sb.append("' }");
        return sb.toString();
    }
}
