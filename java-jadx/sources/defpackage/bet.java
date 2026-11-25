package defpackage;

import android.widget.Toast;
import com.google.android.apps.auto.aareceiver.ui.AndroidAutoHeadunitActivity;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bet implements bdr {
    final /* synthetic */ awo a;
    final /* synthetic */ AndroidAutoHeadunitActivity b;

    public bet(AndroidAutoHeadunitActivity androidAutoHeadunitActivity, awo awoVar) {
        this.b = androidAutoHeadunitActivity;
        this.a = awoVar;
    }

    @Override // defpackage.bdr
    public final void a(int i) {
        ((csx) AndroidAutoHeadunitActivity.a.b().h("com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity$4", "onFailed", 701, "AndroidAutoHeadunitActivity.java")).o("Failed to create the hotspot. Killing activity. Reason: %d", i);
        Toast.makeText(this.b.getApplicationContext(), this.b.getString(R.string.start_ap_failed), 1).show();
        this.b.finish();
    }

    @Override // defpackage.bdr
    public final void b(bdt bdtVar) {
        this.b.q(awp.WIRELESS, this.a);
    }

    @Override // defpackage.bdr
    public final /* synthetic */ void c() {
    }
}
