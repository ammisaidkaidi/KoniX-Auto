package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashSet;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dhq {
    public final Context a;

    public dhq(Context context) {
        this.a = context;
    }

    public dhq(Context context, byte[] bArr) {
        new ConcurrentHashMap();
        bvs.q(true, "Context cannot be null", new Object[0]);
        this.a = context.getApplicationContext();
    }

    public dhq(Context context, byte[] bArr, byte[] bArr2) {
        this.a = context;
    }

    public dhq(Context context, byte[] bArr, char[] cArr) {
        this.a = context;
    }

    private final void e(String str, boolean z) {
        this.a.getPackageManager().setComponentEnabledSetting(new ComponentName(this.a, str), true != z ? 2 : 1, 1);
    }

    private final cqw f() {
        cqu cquVar = new cqu();
        cst listIterator = axv.a.listIterator();
        while (listIterator.hasNext()) {
            String str = (String) listIterator.next();
            if (this.a.checkSelfPermission(str) == 0) {
                cquVar.d(str);
            }
        }
        return cquVar.f();
    }

    public final ApplicationInfo a(String str, int i) {
        return this.a.getPackageManager().getApplicationInfo(str, i);
    }

    public final void b(int i) {
        e("com.google.android.apps.auto.aareceiver.ui.ProjectionDeviceDisambiguationActivity.AvailableIcon", i == 1);
        e("com.google.android.apps.auto.aareceiver.ui.ProjectionDeviceDisambiguationActivity.UnavailableIcon", i == 2);
    }

    public final cqw c() {
        HashSet hashSet = new HashSet(axv.a);
        hashSet.removeAll(f());
        return cqw.m(hashSet);
    }

    public final boolean d() {
        return f().containsAll(axv.a);
    }
}
