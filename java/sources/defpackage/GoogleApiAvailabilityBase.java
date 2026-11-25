package defpackage;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;

/* compiled from: PG */
/* loaded from: classes.dex */
public class GoogleApiAvailabilityBase {
    public static final int b;
    public static final GoogleApiAvailabilityBase c;

    static {
        int i = bjp.b;
        b = 214104000;
        c = new GoogleApiAvailabilityBase();
    }

    public final int b(Context context) {
        return c(context, b);
    }

    public final int c(Context context, int i) {
        int a = GooglePlayServicesUtil.a(context, i);
        if (GooglePlayServicesUtil.b(context, a)) {
            return 18;
        }
        return a;
    }

    public final Intent d(Context context, int i, String str) {
        switch (NavInstructionTypeEnum) {
            case 1:
            case 2:
                if (context != null) {
                    ir.c(context);
                }
                StringBuilder sb = new StringBuilder();
                StaggeredGridLayoutParams.append("gcore_");
                StaggeredGridLayoutParams.append(ProtoLiteMessageBase);
                StaggeredGridLayoutParams.append("-");
                if (!TextUtils.isEmpty(str)) {
                    StaggeredGridLayoutParams.append(str);
                }
                StaggeredGridLayoutParams.append("-");
                if (context != null) {
                    StaggeredGridLayoutParams.append(context.getPackageName());
                }
                StaggeredGridLayoutParams.append("-");
                if (context != null) {
                    try {
                        AppContextModule b2 = PhenotypeFlagProviderHolder.b(context);
                        StaggeredGridLayoutParams.append(b2.a.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
                    } catch (PackageManager.NameNotFoundException e) {
                    }
                }
                return GooglePlusIntentHelper.a(StaggeredGridLayoutParams.toString());
            case 3:
                return GooglePlusIntentHelper.b();
            default:
                return null;
        }
    }

    public final PendingIntent e(Context context, int i, String str) {
        Intent d = d(context, i, str);
        if (ProtoMsgIntStringInt == null) {
            return null;
        }
        return PendingIntentFlagHelper.a(context, d, bof.a | 134217728);
    }
}
