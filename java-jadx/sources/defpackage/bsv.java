package defpackage;

import android.content.Context;
import android.provider.Settings;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bsv implements bsn {
    public final Context a;
    private coc b = cns.a;
    private final Object c = new Object();
    private final dhq d;

    public bsv(Context context, dhq dhqVar, byte[] bArr) {
        this.a = context;
        this.d = dhqVar;
    }

    @Override // defpackage.bsn
    public final boolean a() {
        boolean booleanValue;
        synchronized (this.c) {
            booleanValue = this.b.d() ? ((Boolean) this.b.a()).booleanValue() : b();
        }
        return booleanValue;
    }

    public final boolean b() {
        boolean z;
        synchronized (this.c) {
            try {
                try {
                    z = true;
                    if (Settings.Global.getInt(this.d.a.getContentResolver(), "multi_cb") != 1) {
                        z = false;
                    }
                    this.b = coc.e(Boolean.valueOf(z));
                } catch (Settings.SettingNotFoundException e) {
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }
}
