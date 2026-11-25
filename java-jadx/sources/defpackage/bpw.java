package defpackage;

import android.text.TextUtils;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bpw {
    public static final String a;
    public static final String b;
    public static final String c;
    public static final String d;
    public static final String e;
    public static final String f;
    public final String g;
    public String h;
    public String i = null;
    public int j;
    public String k;
    public final String l;

    static {
        String join = TextUtils.join(", ", (Object[]) bpk.a.a());
        a = join;
        b = join.replace("committed", "1");
        String join2 = TextUtils.join(", ", (Object[]) bpi.a.a());
        c = join2;
        d = join2.replace("isCommitted", "1");
        String join3 = TextUtils.join(", ", (Object[]) bph.a.a());
        e = join3;
        f = join3.replace("isCommitted", "1");
    }

    public bpw(String str, String str2) {
        this.g = str;
        this.l = str2;
    }
}
