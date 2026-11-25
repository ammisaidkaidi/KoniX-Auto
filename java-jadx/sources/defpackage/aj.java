package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aj implements Serializable {
    private static final long serialVersionUID = 1;
    public final String a;
    public final ad b;
    public final ag c;
    public final ag d;

    public aj(String str, ad adVar, ag agVar, ag agVar2) {
        this.a = str;
        this.b = adVar;
        this.c = agVar;
        this.d = agVar2;
    }

    @Deprecated
    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    public final String toString() {
        String concat;
        String str = this.a;
        String obj = this.b.toString();
        ag agVar = this.c;
        String str2 = "";
        if (agVar == null) {
            concat = "";
        } else {
            String agVar2 = agVar.toString();
            concat = agVar2.length() != 0 ? " ".concat(agVar2) : new String(" ");
        }
        ag agVar3 = this.d;
        if (agVar3 != null) {
            String agVar4 = agVar3.toString();
            str2 = agVar4.length() != 0 ? " ".concat(agVar4) : new String(" ");
        }
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 2 + String.valueOf(obj).length() + String.valueOf(concat).length() + String.valueOf(str2).length());
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append(concat);
        sb.append(str2);
        return sb.toString();
    }
}
