package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bik {

    @Deprecated
    public static final bjy a;
    public static final String[] b;
    public static final List c;
    public static volatile int d;
    public static final bjq m;
    public final Context e;
    public final String f;
    public final EnumSet g;
    public final bii h;
    public final List i;
    public String j;
    public int k;
    final bkc l;

    static {
        bif bifVar = new bif();
        m = bifVar;
        a = new bjy("ClearcutLogger.API", bifVar, null);
        b = new String[0];
        c = new CopyOnWriteArrayList();
        d = -1;
    }

    public bik(Context context, String str) {
        this(context, str, bij.e, bkc.h(context), new biv(context));
    }

    public static String b(Iterable iterable) {
        return ex.x(iterable, ", ");
    }

    public static int[] d(ArrayList arrayList) {
        if (arrayList == null) {
            return null;
        }
        int[] iArr = new int[arrayList.size()];
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            iArr[i2] = ((Integer) arrayList.get(i)).intValue();
            i++;
            i2++;
        }
        return iArr;
    }

    public final bih a(der derVar) {
        derVar.getClass();
        return new bih(this, new bie(derVar));
    }

    public final boolean c() {
        return this.g.equals(bij.f);
    }

    public bik(Context context, String str, EnumSet enumSet, bkc bkcVar, bii biiVar) {
        this.i = new CopyOnWriteArrayList();
        this.k = 1;
        if (!enumSet.contains(bij.ACCOUNT_NAME)) {
            hr.f(true, "Upload account name cannot be used with a deidentified or pseudonymous logger.");
        }
        if (enumSet.equals(bij.g) || enumSet.equals(bij.e) || enumSet.equals(bij.f)) {
            this.e = context.getApplicationContext();
            this.f = context.getPackageName();
            this.j = str;
            this.g = enumSet;
            this.l = bkcVar;
            this.k = 1;
            this.h = biiVar;
            return;
        }
        throw new IllegalArgumentException("piiLevelSet must be one of ZWIEBACK_ONLY, NO_RESTRICTIONS, or PIILevel.DEIDENTIFIED");
    }
}
