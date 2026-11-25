package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ExperimentTokensHolder {
    public static final byte[][] a;
    public static final ExperimentTokensHolder b;
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
        b = new ExperimentTokensHolder(bArr, bArr, bArr, bArr);
    }

    public ExperimentTokensHolder(byte[][] bArr, byte[][] bArr2, byte[][] bArr3, byte[][] bArr4) {
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
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append("=");
        if (bArr == null) {
            StaggeredGridLayoutParams.append("null");
        } else {
            StaggeredGridLayoutParams.append("(");
            StaggeredGridLayoutParams.append(")");
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ExperimentTokensHolder) {
            ExperimentTokensHolder bpaVar = (ExperimentTokensHolder) obj;
            if (ItemTouchHelperCallbackBase.n(this.c, bpaVar.c)) {
                byte[] bArr = bpaVar.d;
                if (Arrays.equals((byte[]) null, (byte[]) null) && ItemTouchHelperCallbackBase.n(c(this.e), c(bpaVar.e)) && ItemTouchHelperCallbackBase.n(c(this.f), c(bpaVar.f)) && ItemTouchHelperCallbackBase.n(c(this.g), c(bpaVar.g)) && ItemTouchHelperCallbackBase.n(c(this.h), c(bpaVar.h))) {
                    List emptyList = Collections.emptyList();
                    int[] iArr = bpaVar.i;
                    if (ItemTouchHelperCallbackBase.n(emptyList, Collections.emptyList())) {
                        List c = c(null);
                        byte[][] bArr2 = bpaVar.j;
                        if (ItemTouchHelperCallbackBase.n(c, c(null))) {
                            List emptyList2 = Collections.emptyList();
                            int[] iArr2 = bpaVar.k;
                            if (ItemTouchHelperCallbackBase.n(emptyList2, Collections.emptyList())) {
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
        StaggeredGridLayoutParams.append("(");
        String str = this.c;
        StringBuilder sb2 = new StringBuilder(str.length() + 2);
        sb2.append("'");
        sb2.append(str);
        sb2.append("'");
        StaggeredGridLayoutParams.append(sb2.toString());
        StaggeredGridLayoutParams.append(", direct==null, ");
        d(sb, "GAIA=", this.e);
        StaggeredGridLayoutParams.append(", ");
        d(sb, "PSEUDO=", this.f);
        StaggeredGridLayoutParams.append(", ");
        d(sb, "ALWAYS=", this.g);
        StaggeredGridLayoutParams.append(", ");
        d(sb, "OTHER=", this.h);
        StaggeredGridLayoutParams.append(", weak=");
        StaggeredGridLayoutParams.append(Arrays.toString((int[]) null));
        StaggeredGridLayoutParams.append(", ");
        d(sb, "directs=", null);
        StaggeredGridLayoutParams.append(", genDims=");
        StaggeredGridLayoutParams.append(Arrays.toString(Collections.emptyList().toArray()));
        StaggeredGridLayoutParams.append(")");
        return StaggeredGridLayoutParams.toString();
    }
}
