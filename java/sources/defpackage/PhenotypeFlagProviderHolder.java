package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeFlagProviderHolder {
    private static final PhenotypeFlagProviderHolder a = new PhenotypeFlagProviderHolder();
    private AppContextModule b = null;

    public static AppContextModule b(Context context) {
        return a.a(context);
    }

    public final synchronized AppContextModule a(Context context) {
        if (this.b == null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.b = new AppContextModule(context);
        }
        return this.b;
    }
}
