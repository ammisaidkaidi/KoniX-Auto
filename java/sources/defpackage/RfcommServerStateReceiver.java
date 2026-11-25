package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: PG */
/* loaded from: classes.dex */
final class RfcommServerStateReceiver extends BroadcastReceiver {
    final /* synthetic */ RfcommChannelStateHolder a;

    public RfcommServerStateReceiver(RfcommChannelStateHolder avkVar) {
        this.a = avkVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.a.b();
    }
}
