package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cgf extends BroadcastReceiver {
    public static volatile boolean b;
    public static final Object a = new Object();
    static final cej c = cej.a();

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("com.google.android.gms.phenotype.PACKAGE_NAME");
        if (stringExtra == null) {
            return;
        }
        for (Map.Entry entry : c.entrySet()) {
            if (((String) ((cod) entry.getKey()).a).equals(stringExtra)) {
                ((cfi) entry.getValue()).a.d();
            }
        }
    }
}
