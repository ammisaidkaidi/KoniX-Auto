package defpackage;

import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public class BaseEncoding extends EncodingAlphabet {
    public final Base64Codec b;
    public final Character c;

    public BaseEncoding(Base64Codec cwzVar, Character ch) {
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
        if (obj instanceof BaseEncoding) {
            BaseEncoding cxdVar = (BaseEncoding) obj;
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
        StaggeredGridLayoutParams.append(this.b.a);
        if (8 % this.b.d != 0) {
            if (this.c == null) {
                StaggeredGridLayoutParams.append(".omitPadding()");
            } else {
                StaggeredGridLayoutParams.append(".withPadChar('");
                StaggeredGridLayoutParams.append(this.c);
                StaggeredGridLayoutParams.append("')");
            }
        }
        return StaggeredGridLayoutParams.toString();
    }

    public BaseEncoding(String str, String str2, Character ch) {
        this(new Base64Codec(str, str2.toCharArray()), ch);
    }
}
