package defpackage;

import android.widget.Toast;
import com.google.android.apps.auto.aareceiver.ui.AndroidAutoHeadunitActivity;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class HeadunitActivityApCallback implements AccessPointStateListener {
    final /* synthetic */ ProjectionDevice a;
    final /* synthetic */ AndroidAutoHeadunitActivity b;

    public HeadunitActivityApCallback(AndroidAutoHeadunitActivity androidAutoHeadunitActivity, ProjectionDevice awoVar) {
        this.b = androidAutoHeadunitActivity;
        this.a = awoVar;
    }

    @Override // defpackage.AccessPointStateListener
    public final void a(int i) {
        ((ParameterizedLoggerApi) AndroidAutoHeadunitActivity.a.b().h("com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity$4", "onFailed", 701, "AndroidAutoHeadunitActivity.java")).o("Failed to create the hotspot. Killing activity. Reason: %d", i);
        Toast.makeText(this.b.getApplicationContext(), this.b.getString(R.string.start_ap_failed), 1).show();
        this.b.finish();
    }

    @Override // defpackage.AccessPointStateListener
    public final void b(ApConfiguration bdtVar) {
        this.b.q(ProjectionTransportType.WIRELESS, this.a);
    }

    @Override // defpackage.AccessPointStateListener
    public final /* synthetic */ void c() {
    }
}
