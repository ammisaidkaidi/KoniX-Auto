package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bpa {
    public static final byte[][] a;
    public static final bpa b;
    public final byte[][] e;
    public final byte[][] f;
    public final byte[][] g;
    public final byte[][] h;
    public final String c = "";
    public final byte[] d = null;
    public final int[] i = null;
    public final byte[][] j = null;
    public final int[] k = null;

    static {
        byte[][] bArr = new byte[0][];
        a = bArr;
        b = new bpa(bArr, bArr, bArr, bArr);
    }

    public bpa(byte[][] bArr, byte[][] bArr2, byte[][] bArr3, byte[][] bArr4) {
        this.e = bArr;
        this.f = bArr2;
        this.g = bArr3;
        this.h = bArr4;
    }

    public static int a(byte[][] bArr) {
        return 0;
    }

    public static void b(byte[][] bArr) {
    }

    private static List c(byte[][] bArr) {
        if (bArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(0);
        Collections.sort(arrayList);
        return arrayList;
    }

    private static void d(StringBuilder sb, String str, byte[][] bArr) {
        sb.append(str);
        sb.append("=");
        if (bArr == null) {
            sb.append("null");
        } else {
            sb.append("(");
            sb.append(")");
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof bpa) {
            bpa bpaVar = (bpa) obj;
            if (qx.n(this.c, bpaVar.c)) {
                byte[] bArr = bpaVar.d;
                if (Arrays.equals((byte[]) null, (byte[]) null) && qx.n(c(this.e), c(bpaVar.e)) && qx.n(c(this.f), c(bpaVar.f)) && qx.n(c(this.g), c(bpaVar.g)) && qx.n(c(this.h), c(bpaVar.h))) {
                    List emptyList = Collections.emptyList();
                    int[] iArr = bpaVar.i;
                    if (qx.n(emptyList, Collections.emptyList())) {
                        List c = c(null);
                        byte[][] bArr2 = bpaVar.j;
                        if (qx.n(c, c(null))) {
                            List emptyList2 = Collections.emptyList();
                            int[] iArr2 = bpaVar.k;
                            if (qx.n(emptyList2, Collections.emptyList())) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ExperimentTokens");
        sb.append("(");
        String str = this.c;
        StringBuilder sb2 = new StringBuilder(str.length() + 2);
        sb2.append("'");
        sb2.append(str);
        sb2.append("'");
        sb.append(sb2.toString());
        sb.append(", direct==null, ");
        d(sb, "GAIA=", this.e);
        sb.append(", ");
        d(sb, "PSEUDO=", this.f);
        sb.append(", ");
        d(sb, "ALWAYS=", this.g);
        sb.append(", ");
        d(sb, "OTHER=", this.h);
        sb.append(", weak=");
        sb.append(Arrays.toString((int[]) null));
        sb.append(", ");
        d(sb, "directs=", null);
        sb.append(", genDims=");
        sb.append(Arrays.toString(Collections.emptyList().toArray()));
        sb.append(")");
        return sb.toString();
    }
}
