package defpackage;

import android.content.ComponentName;
import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ale {
    static {
        agr.b("PackageManagerHelper");
    }

    public static void a(Context context, Class cls, boolean z) {
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), true != z ? 2 : 1, 1);
            agr a = agr.a();
            Object[] objArr = new Object[2];
            objArr[0] = cls.getName();
            objArr[1] = true != z ? "disabled" : "enabled";
            String.format("%s %s", objArr);
            a.d(new Throwable[0]);
        } catch (Exception e) {
            agr a2 = agr.a();
            Object[] objArr2 = new Object[2];
            objArr2[0] = cls.getName();
            objArr2[1] = true == z ? "enabled" : "disabled";
            String.format("%s could not be %s", objArr2);
            a2.d(e);
        }
    }
}
