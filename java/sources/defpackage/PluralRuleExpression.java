package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PluralRuleExpression implements Serializable {
    private static final long serialVersionUID = 1;
    public final String a;
    public final DecimalPredicate b;
    public final PluralSampleListParser c;
    public final PluralSampleListParser d;

    public PluralRuleExpression(String str, DecimalPredicate adVar, PluralSampleListParser agVar, PluralSampleListParser agVar2) {
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
        PluralSampleListParser agVar = this.c;
        String str2 = "";
        if (agVar == null) {
            concat = "";
        } else {
            String agVar2 = agVar.toString();
            concat = agVar2.length() != 0 ? " ".concat(agVar2) : new String(" ");
        }
        PluralSampleListParser agVar3 = this.d;
        if (agVar3 != null) {
            String agVar4 = agVar3.toString();
            str2 = agVar4.length() != 0 ? " ".concat(agVar4) : new String(" ");
        }
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 2 + String.valueOf(obj).length() + String.valueOf(concat).length() + String.valueOf(str2).length());
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append(": ");
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append(concat);
        StaggeredGridLayoutParams.append(str2);
        return StaggeredGridLayoutParams.toString();
    }
}
