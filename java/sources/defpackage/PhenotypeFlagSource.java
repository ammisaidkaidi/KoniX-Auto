package defpackage;

import android.content.Context;
import android.provider.Settings;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeFlagSource implements FlagSourceBaseInterface {
    public final Context a;
    private GuavaOptional b = cns.a;
    private final Object c = new Object();
    private final AppContextModule d;

    public PhenotypeFlagSource(Context context, AppContextModule dhqVar, byte[] bArr) {
        this.a = context;
        this.d = dhqVar;
    }

    @Override // defpackage.FlagSourceBaseInterface
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
                    this.b = GuavaOptional.e(Boolean.valueOf(IcuMessageFormat));
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
