package defpackage;

import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ToStringHelper {
    public ToStringHelperValueHolder a;
    private final String b;
    private final ToStringHelperValueHolder c;

    public ToStringHelper(String str) {
        ToStringHelperValueHolder coaVar = new ToStringHelperValueHolder();
        this.c = coaVar;
        this.a = coaVar;
        str.getClass();
        this.b = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        StaggeredGridLayoutParams.append(this.b);
        StaggeredGridLayoutParams.append('{');
        ToStringHelperValueHolder coaVar = this.c.b;
        String str = "";
        while (coaVar != null) {
            Object obj = coaVar.a;
            StaggeredGridLayoutParams.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                StaggeredGridLayoutParams.append(obj);
            } else {
                StaggeredGridLayoutParams.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r3.length() - 1);
            }
            coaVar = coaVar.b;
            str = ", ";
        }
        StaggeredGridLayoutParams.append('}');
        return StaggeredGridLayoutParams.toString();
    }
}
