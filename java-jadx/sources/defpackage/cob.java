package defpackage;

import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cob {
    public coa a;
    private final String b;
    private final coa c;

    public cob(String str) {
        coa coaVar = new coa();
        this.c = coaVar;
        this.a = coaVar;
        str.getClass();
        this.b = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.b);
        sb.append('{');
        coa coaVar = this.c.b;
        String str = "";
        while (coaVar != null) {
            Object obj = coaVar.a;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                sb.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r3.length() - 1);
            }
            coaVar = coaVar.b;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}
