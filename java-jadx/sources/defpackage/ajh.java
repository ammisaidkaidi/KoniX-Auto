package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ajh extends BroadcastReceiver {
    final /* synthetic */ aji a;

    public ajh(aji ajiVar) {
        this.a = ajiVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent != null) {
            this.a.c(intent);
        }
    }
}
