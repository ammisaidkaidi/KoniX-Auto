package defpackage;

import android.content.Context;
import android.content.Intent;
import com.google.android.projection.protocol.VendorExtensionBase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class HotwordVendorExtension extends VendorExtensionBase {
    private static final String[] a = {"com.google.android.googlequicksearchbox"};
    private final Context b;

    public HotwordVendorExtension(Context context) {
        this.b = context;
    }

    @Override // com.google.android.projection.protocol.VendorExtensionBase
    protected final String[] getPackageWhitelist() {
        return a;
    }

    @Override // com.google.android.projection.protocol.VendorExtensionBase
    protected final String getServiceName() {
        return "com.google.android.projection.protocol.HotwordVendorExtension";
    }

    @Override // com.google.android.projection.protocol.VendorExtensionBase
    protected final int onMessage(byte[] bArr) {
        this.b.sendBroadcast(new Intent().setAction("com.google.android.projection.protocol.action.ACTION_HOTWORD_UPSTREAM").putExtra("com.google.android.projection.protocol.extra.EXTRA_HOTWORD_UPSTREAM", bArr));
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }
}
