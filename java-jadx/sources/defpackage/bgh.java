package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bgh extends BroadcastReceiver {
    final /* synthetic */ bgi a;

    public bgh(bgi bgiVar) {
        this.a = bgiVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("com.google.android.projection.protocol.action.ACTION_HOTWORD_DOWNSTREAM".equals(intent.getAction())) {
            byte[] byteArrayExtra = intent.getByteArrayExtra("com.google.android.projection.protocol.extra.EXTRA_HOTWORD_DOWNSTREAM");
            if (byteArrayExtra == null) {
                ((csx) bgi.a.c().h("com/google/android/apps/auto/aareceiver/vec/HotwordManager$1", "onReceive", 60, "HotwordManager.java")).n("Result bytes not set in extra");
            } else {
                this.a.b.nativeSend(byteArrayExtra);
            }
        }
    }
}
