package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.embedded.projection.R;
import com.google.android.gms.common.GooglePlayServicesIncorrectManifestValueException;
import com.google.android.gms.common.GooglePlayServicesMissingManifestValueException;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GooglePlayServicesUtil {
    public static final /* synthetic */ int b = 0;
    static final AtomicBoolean a = new AtomicBoolean();
    private static final AtomicBoolean c = new AtomicBoolean();

    @Deprecated
    public static int a(Context context, int i) {
        PackageInfo packageInfo;
        Bundle bundle;
        try {
            context.getResources().getString(R.string.common_google_play_services_unknown_issue);
        } catch (Throwable th) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !c.get()) {
            synchronized (bnl.a) {
                if (!bnl.b) {
                    bnl.b = true;
                    try {
                        bundle = PhenotypeFlagProviderHolder.b(context).a(context.getPackageName(), 128).metaData;
                    } catch (PackageManager.NameNotFoundException e) {
                        Log.wtf("MetadataValueReader", "This should never happen.", e);
                    }
                    if (bundle != null) {
                        bundle.getString("com.google.app.id");
                        bnl.c = bundle.getInt("com.google.android.gms.version");
                    }
                }
            }
            int i2 = bnl.c;
            if (i2 == 0) {
                throw new GooglePlayServicesMissingManifestValueException();
            }
            if (i2 != 214104000) {
                throw new GooglePlayServicesIncorrectManifestValueException(i2);
            }
        }
        ir.c(context);
        if (ir.a == null) {
            ir.a = Boolean.valueOf(!context.getPackageManager().hasSystemFeature("android.hardware.type.iot") ? context.getPackageManager().hasSystemFeature("android.hardware.type.embedded") : true);
        }
        boolean z = !ir.a.booleanValue();
        ThreadAndNullChecksUtil.e(true);
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        if (IcuMessageFormat) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException e2) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires the Google Play Store, but it is missing."));
                return 9;
            }
        } else {
            packageInfo = null;
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            ThreadAndNullChecksUtil.d(context);
            synchronized (GoogleSignatureVerifier.class) {
                if (bjq.a == null) {
                    GoogleCertificatesInitializer.a(context);
                    bjq.a = new GoogleSignatureVerifier(context);
                }
            }
            if (!GoogleSignatureVerifier.c(packageInfo2)) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but their signature is invalid."));
                return 9;
            }
            if (IcuMessageFormat) {
                ThreadAndNullChecksUtil.d(packageInfo);
                if (!GoogleSignatureVerifier.c(packageInfo)) {
                    Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature is invalid."));
                    return 9;
                }
            }
            if (IcuMessageFormat && packageInfo != null && !packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature doesn't match that of Google Play services."));
                return 9;
            }
            if (ConstraintLayoutStateParser.e(packageInfo2.versionCode) >= ConstraintLayoutStateParser.e(NavInstructionTypeEnum)) {
                ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
                if (applicationInfo == null) {
                    try {
                        applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                    } catch (PackageManager.NameNotFoundException e3) {
                        Log.wtf("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they're missing when getting application info."), e3);
                        return 1;
                    }
                }
                return !applicationInfo.enabled ? 3 : 0;
            }
            int i3 = packageInfo2.versionCode;
            StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 82);
            StaggeredGridLayoutParams.append("Google Play services out of date for ");
            StaggeredGridLayoutParams.append(packageName);
            StaggeredGridLayoutParams.append(".  Requires ");
            StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
            StaggeredGridLayoutParams.append(" but found ");
            StaggeredGridLayoutParams.append(i3);
            Log.w("GooglePlayServicesUtil", StaggeredGridLayoutParams.toString());
            return 2;
        } catch (PackageManager.NameNotFoundException e4) {
            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they are missing."));
            return 1;
        }
    }

    @Deprecated
    public static boolean b(Context context, int i) {
        if (NavInstructionTypeEnum != 1) {
            return false;
        }
        try {
            Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
            while (it.hasNext()) {
                if ("com.google.android.gms".equals(it.next().getAppPackageName())) {
                    return true;
                }
            }
            try {
                return context.getPackageManager().getApplicationInfo("com.google.android.gms", 8192).enabled;
            } catch (PackageManager.NameNotFoundException e) {
                return false;
            }
        } catch (Exception e2) {
        }
    }

    @Deprecated
    public static boolean c(int i) {
        switch (NavInstructionTypeEnum) {
            case 1:
            case 2:
            case 3:
            case 9:
                return true;
            default:
                return false;
        }
    }

    @Deprecated
    public static void d(Context context) {
        int c2 = GoogleApiAvailabilityBase.c.c(context, 8400000);
        if (c2 != 0) {
            Intent d = GoogleApiAvailabilityBase.c.d(context, c2, "e");
            StringBuilder sb = new StringBuilder(57);
            StaggeredGridLayoutParams.append("GooglePlayServices not available due to error ");
            StaggeredGridLayoutParams.append(c2);
            Log.e("GooglePlayServicesUtil", StaggeredGridLayoutParams.toString());
            if (ProtoMsgIntStringInt != null) {
                throw new GooglePlayServicesBaseException(ProtoMsgIntStringInt);
            }
            throw new GooglePlayServicesRepairableException();
        }
    }

    @Deprecated
    public static String e() {
        return ConnectionResultCodes.a(13);
    }
}
