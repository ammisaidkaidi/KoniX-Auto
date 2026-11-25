package defpackage;

import android.text.TextUtils;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cdk {
    private static final coi d = coi.b('/').a();
    public static final cdj a = new cdi(1);
    public static final cdj b = new cdi(0);
    public static final cdj c = new cdi(2);

    public static List a(String str) {
        List e = d.e(str);
        cgt cgtVar = cgt.b;
        return e instanceof RandomAccess ? new crn(e, cgtVar) : new crp(e, cgtVar);
    }

    public static void b(cdj cdjVar, deq deqVar) {
        String a2 = cdjVar.a(deqVar);
        String b2 = cdjVar.b(deqVar);
        if (!TextUtils.isEmpty(a2) || TextUtils.isEmpty(b2)) {
            cdjVar.c(deqVar, null);
        } else {
            cdjVar.c(deqVar, dba.a(b2));
        }
        cdjVar.d(deqVar);
    }
}
