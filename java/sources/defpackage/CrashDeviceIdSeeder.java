package defpackage;

import android.content.Context;
import android.provider.Settings;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CrashDeviceIdSeeder {
    static {
        TimeUnit.DAYS.toMillis(365L);
        TimeUnit.HOURS.toMillis(6L);
    }

    public CrashDeviceIdSeeder(Context context) {
        ProcessNameReader.b();
        Settings.Secure.getString(context.getContentResolver(), "android_id");
    }
}
