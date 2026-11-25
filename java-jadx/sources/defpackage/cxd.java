package defpackage;

import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public class cxd extends cxe {
    public final cwz b;
    public final Character c;

    public cxd(cwz cwzVar, Character ch) {
        char charValue;
        this.b = cwzVar;
        boolean z = true;
        if (ch != null && (charValue = ch.charValue()) < 128 && cwzVar.g[charValue] != -1) {
            z = false;
        }
        ex.o(z, "Padding character %s was already in alphabet", ch);
        this.c = ch;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof cxd) {
            cxd cxdVar = (cxd) obj;
            if (this.b.equals(cxdVar.b) && ew.t(this.c, cxdVar.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() ^ Arrays.hashCode(new Object[]{this.c});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        sb.append(this.b.a);
        if (8 % this.b.d != 0) {
            if (this.c == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(this.c);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    public cxd(String str, String str2, Character ch) {
        this(new cwz(str, str2.toCharArray()), ch);
    }
}
