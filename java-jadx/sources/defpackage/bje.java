package defpackage;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;

/* compiled from: PG */
/* loaded from: classes.dex */
public class bje {
    public static final int b;
    public static final bje c;

    static {
        int i = bjp.b;
        b = 214104000;
        c = new bje();
    }

    public final int b(Context context) {
        return c(context, b);
    }

    public final int c(Context context, int i) {
        int a = bjp.a(context, i);
        if (bjp.b(context, a)) {
            return 18;
        }
        return a;
    }

    public final Intent d(Context context, int i, String str) {
        switch (i) {
            case 1:
            case 2:
                if (context != null) {
                    ir.c(context);
                }
                StringBuilder sb = new StringBuilder();
                sb.append("gcore_");
                sb.append(b);
                sb.append("-");
                if (!TextUtils.isEmpty(str)) {
                    sb.append(str);
                }
                sb.append("-");
                if (context != null) {
                    sb.append(context.getPackageName());
                }
                sb.append("-");
                if (context != null) {
                    try {
                        dhq b2 = boc.b(context);
                        sb.append(b2.a.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
                    } catch (PackageManager.NameNotFoundException e) {
                    }
                }
                return bnd.a(sb.toString());
            case 3:
                return bnd.b();
            default:
                return null;
        }
    }

    public final PendingIntent e(Context context, int i, String str) {
        Intent d = d(context, i, str);
        if (d == null) {
            return null;
        }
        return bof.a(context, d, bof.a | 134217728);
    }
}
