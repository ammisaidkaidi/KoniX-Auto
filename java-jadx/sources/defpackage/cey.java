package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import java.util.Locale;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cey implements dny {
    private final Context a;

    public cey(Context context) {
        this.a = context;
    }

    @Override // defpackage.dny
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final dgr a() {
        ddh ddhVar = (ddh) dgr.x.n();
        long j = Settings.Secure.getLong(this.a.getContentResolver(), "android_id", 0L);
        if (j != 0) {
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgr dgrVar = (dgr) ddhVar.b;
            dgrVar.a |= 1;
            dgrVar.b = j;
        }
        TelephonyManager telephonyManager = (TelephonyManager) this.a.getSystemService("phone");
        String simOperator = telephonyManager.getSimOperator();
        if (simOperator != null) {
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgr dgrVar2 = (dgr) ddhVar.b;
            dgrVar2.a |= 1024;
            dgrVar2.k = simOperator;
        }
        int simCarrierId = telephonyManager.getSimCarrierId();
        if (ddhVar.c) {
            ddhVar.k();
            ddhVar.c = false;
        }
        dgr dgrVar3 = (dgr) ddhVar.b;
        dgrVar3.a |= 268435456;
        dgrVar3.w = simCarrierId;
        try {
            PackageInfo packageInfo = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 0);
            if (packageInfo != null && packageInfo.versionName != null) {
                String str = packageInfo.versionName;
                if (ddhVar.c) {
                    ddhVar.k();
                    ddhVar.c = false;
                }
                dgr dgrVar4 = (dgr) ddhVar.b;
                str.getClass();
                dgrVar4.a |= 512;
                dgrVar4.j = str;
            }
            int i = Build.VERSION.SDK_INT;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgr dgrVar5 = (dgr) ddhVar.b;
            dgrVar5.a |= 8;
            dgrVar5.c = i;
            String str2 = Build.MODEL;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgr dgrVar6 = (dgr) ddhVar.b;
            str2.getClass();
            dgrVar6.a |= 16;
            dgrVar6.e = str2;
            String str3 = Build.PRODUCT;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgr dgrVar7 = (dgr) ddhVar.b;
            str3.getClass();
            dgrVar7.a |= 32;
            dgrVar7.f = str3;
            String str4 = Build.HARDWARE;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgr dgrVar8 = (dgr) ddhVar.b;
            str4.getClass();
            dgrVar8.a |= 64;
            dgrVar8.g = str4;
            String str5 = Build.DEVICE;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgr dgrVar9 = (dgr) ddhVar.b;
            str5.getClass();
            dgrVar9.a |= 128;
            dgrVar9.h = str5;
            String str6 = Build.ID;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgr dgrVar10 = (dgr) ddhVar.b;
            str6.getClass();
            dgrVar10.a |= 256;
            dgrVar10.i = str6;
            String str7 = Build.MANUFACTURER;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgr dgrVar11 = (dgr) ddhVar.b;
            str7.getClass();
            dgrVar11.a |= 8192;
            dgrVar11.n = str7;
            String str8 = Build.BRAND;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgr dgrVar12 = (dgr) ddhVar.b;
            str8.getClass();
            dgrVar12.a |= 16384;
            dgrVar12.o = str8;
            String str9 = Build.BOARD;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgr dgrVar13 = (dgr) ddhVar.b;
            str9.getClass();
            dgrVar13.a |= 32768;
            dgrVar13.p = str9;
            String str10 = Build.FINGERPRINT;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgr dgrVar14 = (dgr) ddhVar.b;
            str10.getClass();
            dgrVar14.a |= 131072;
            dgrVar14.u = str10;
            String str11 = Build.TYPE;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgr dgrVar15 = (dgr) ddhVar.b;
            str11.getClass();
            dgrVar15.a |= 33554432;
            dgrVar15.v = str11;
            String language = Locale.getDefault().getLanguage();
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgr dgrVar16 = (dgr) ddhVar.b;
            language.getClass();
            dgrVar16.a |= 2048;
            dgrVar16.l = language;
            String country = Locale.getDefault().getCountry();
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgr dgrVar17 = (dgr) ddhVar.b;
            country.getClass();
            dgrVar17.a |= 4096;
            dgrVar17.m = country;
            return (dgr) ddhVar.h();
        } catch (PackageManager.NameNotFoundException e) {
            throw new AssertionError("Can't find own package?");
        }
    }
}
