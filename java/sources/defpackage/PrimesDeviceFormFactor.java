package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesDeviceFormFactor {
    public final Context a;
    public final String b;
    public final String c;
    public final String d;
    public final DataDirProvider e;
    public final StopwatchTicker f;
    public final StopwatchTicker g;
    public final int h;

    public PrimesDeviceFormFactor(Context context, GuavaOptional cocVar, String str) {
        this.a = context;
        this.b = context.getPackageName();
        int i = bvk.b;
        String packageName = context.getPackageName();
        String b = ProcessNameReader.b();
        if (ProtoLiteMessageBase != null && packageName != null && b.startsWith(packageName)) {
            int length = packageName.length();
            b = b.length() == length ? null : b.substring(length + 1);
        }
        this.c = b;
        this.g = cocVar.d() ? ((MetricExtensionProviderBase) cocVar.a()).a() : null;
        this.d = str;
        PackageManager packageManager = context.getPackageManager();
        this.h = true == packageManager.hasSystemFeature("android.hardware.type.automotive") ? 5 : packageManager.hasSystemFeature("android.hardware.type.watch") ? 3 : packageManager.hasSystemFeature("android.software.leanback") ? 4 : 2;
        this.e = new DataDirProvider(context);
        this.f = ex.i(new StopwatchTicker() { // from class: bwr
            @Override // defpackage.StopwatchTicker
            public final Object a() {
                return Long.valueOf(PrimesDeviceFormFactor.this.e.a().getTotalSpace() / 1024);
            }
        });
    }
}
