package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bws {
    public final Context a;
    public final String b;
    public final String c;
    public final String d;
    public final btk e;
    public final col f;
    public final col g;
    public final int h;

    public bws(Context context, coc cocVar, String str) {
        this.a = context;
        this.b = context.getPackageName();
        int i = bvk.b;
        String packageName = context.getPackageName();
        String b = bvk.b();
        if (b != null && packageName != null && b.startsWith(packageName)) {
            int length = packageName.length();
            b = b.length() == length ? null : b.substring(length + 1);
        }
        this.c = b;
        this.g = cocVar.d() ? ((bwh) cocVar.a()).a() : null;
        this.d = str;
        PackageManager packageManager = context.getPackageManager();
        this.h = true == packageManager.hasSystemFeature("android.hardware.type.automotive") ? 5 : packageManager.hasSystemFeature("android.hardware.type.watch") ? 3 : packageManager.hasSystemFeature("android.software.leanback") ? 4 : 2;
        this.e = new btk(context);
        this.f = ex.i(new col() { // from class: bwr
            @Override // defpackage.col
            public final Object a() {
                return Long.valueOf(bws.this.e.a().getTotalSpace() / 1024);
            }
        });
    }
}
