package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.hardware.usb.UsbDevice;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bci implements bcf {
    private static final csz b = csz.g("com/google/android/apps/auto/aareceiver/settings/OemSettingsImpl");
    public final List a = new ArrayList();
    private final ContentResolver c;
    private bch d;
    private bch e;
    private final ContentObserver f;

    public bci(Context context) {
        bcg bcgVar = new bcg(this, new Handler(Looper.getMainLooper()));
        this.f = bcgVar;
        ContentResolver contentResolver = context.getContentResolver();
        this.c = contentResolver;
        this.d = new bch();
        this.e = new bch();
        contentResolver.registerContentObserver(Settings.Secure.getUriFor("com.android.car.projection.DISABLED"), false, bcgVar);
        e();
    }

    private static boolean f(bch bchVar, String str) {
        return !bchVar.a && (str == null || !bchVar.b.contains(ew.u(str)));
    }

    @Override // defpackage.bcf
    public final boolean a(UsbDevice usbDevice) {
        return f(this.d, CarCompat.getUsbSerialSafe(usbDevice));
    }

    @Override // defpackage.bcf
    public final boolean b(String str) {
        return f(this.e, str);
    }

    @Override // defpackage.bcf
    public final void c(bcl bclVar) {
        this.a.add(bclVar);
    }

    @Override // defpackage.bcf
    public final void d(bcl bclVar) {
        this.a.remove(bclVar);
    }

    public final boolean e() {
        bch bchVar;
        String string = Settings.Secure.getString(this.c, "com.android.car.projection.DISABLED");
        bch bchVar2 = new bch();
        bch bchVar3 = new bch();
        if (!TextUtils.isEmpty(string)) {
            for (String str : coi.b(';').c(string)) {
                List e = coi.b('/').e(str);
                if (e.size() < 3) {
                    ((csx) b.b().h("com/google/android/apps/auto/aareceiver/settings/OemSettingsImpl", "parseSettings", 131, "OemSettingsImpl.java")).t("Failed to parse item %s, invalid number of tokens in %s setting.", str, "com.android.car.projection.DISABLED");
                } else {
                    String trim = ((String) e.get(0)).trim();
                    String trim2 = ((String) e.get(1)).trim();
                    String u = ew.u(((String) e.get(2)).trim());
                    if ("*".equals(trim) || "android-auto".equals(trim)) {
                        if ("wireless".equals(trim2)) {
                            bchVar = bchVar2;
                        } else if ("usb".equals(trim2)) {
                            bchVar = bchVar3;
                        } else {
                            ((csx) b.b().h("com/google/android/apps/auto/aareceiver/settings/OemSettingsImpl", "parseSettings", 153, "OemSettingsImpl.java")).u("Unexpected transport: %s, expected one of (%s, %s)", trim2, "wireless", "usb");
                        }
                        if ("*".equals(u)) {
                            bchVar.a = true;
                        } else {
                            bchVar.b.add(u);
                        }
                    }
                }
            }
        }
        boolean z = (bchVar3.equals(this.d) && bchVar2.equals(this.e)) ? false : true;
        if (z) {
            this.d = bchVar3;
            this.e = bchVar2;
        }
        return z;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.d);
        String valueOf2 = String.valueOf(this.e);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34 + String.valueOf(valueOf2).length());
        sb.append("OemSettings { usb : ");
        sb.append(valueOf);
        sb.append(", wireless: ");
        sb.append(valueOf2);
        sb.append(" }");
        return sb.toString();
    }
}
