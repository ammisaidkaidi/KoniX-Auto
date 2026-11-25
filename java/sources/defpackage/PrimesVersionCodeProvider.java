package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesVersionCodeProvider {
    private Integer a;

    public final int a(Context context) {
        if (this.a == null) {
            try {
                this.a = Integer.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException e) {
                this.a = -1;
            }
        }
        return this.a.intValue();
    }
}
