package defpackage;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import java.io.IOException;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dbc {
    private static final dbb a = dbb.b;

    public static dbb a(PackageManager packageManager, String str) {
        b(packageManager);
        b(str);
        Intent intent = new Intent("com.google.android.build.data.Properties");
        intent.setPackage(str);
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 787072);
        if (queryIntentServices.isEmpty()) {
            return a;
        }
        if (queryIntentServices.size() > 1) {
            throw new IOException("Failed to resolve target AndroidBuildData");
        }
        int i = queryIntentServices.get(0).serviceInfo.metaData.getInt("com.google.android.build.data.properties");
        if (i == 0) {
            return a;
        }
        try {
            return (dbb) ddk.q(dbb.b, packageManager.getResourcesForApplication(str).openRawResource(i), dcz.a());
        } catch (PackageManager.NameNotFoundException e) {
            return a;
        }
    }

    private static void b(Object obj) {
        if (obj == null) {
            throw null;
        }
    }
}
