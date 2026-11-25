package defpackage;

import android.content.Intent;
import com.google.android.apps.auto.aareceiver.ui.AndroidAutoHeadunitActivity;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bey {
    public final /* synthetic */ AndroidAutoHeadunitActivity a;

    public bey(AndroidAutoHeadunitActivity androidAutoHeadunitActivity) {
        this.a = androidAutoHeadunitActivity;
    }

    public final void a() {
        this.a.sendBroadcast(new Intent("com.google.android.embedded.projection.action.FINISH_ERROR_ACTIVITY"));
        this.a.runOnUiThread(new bex(this, 0));
    }
}
