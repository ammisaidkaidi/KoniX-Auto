package defpackage;

import android.view.View;
import com.google.android.apps.auto.aareceiver.ui.ProjectionDeviceDisambiguationActivity;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DisambiguationSessionListener implements ProjectionSessionLifecycleListener_bag {
    final /* synthetic */ ProjectionDeviceDisambiguationActivity a;

    public DisambiguationSessionListener(ProjectionDeviceDisambiguationActivity projectionDeviceDisambiguationActivity) {
        this.a = projectionDeviceDisambiguationActivity;
    }

    @Override // defpackage.ProjectionSessionLifecycleListener_bag
    public final void f(ProjectionDevice awoVar) {
        this.a.b(awoVar);
    }

    @Override // defpackage.ProjectionSessionLifecycleListener_bag
    public final void g(ProjectionDevice awoVar) {
        ProjectionDeviceDisambiguationActivity projectionDeviceDisambiguationActivity = this.a;
        View view = (View) projectionDeviceDisambiguationActivity.c.remove(awoVar);
        if (view != null) {
            projectionDeviceDisambiguationActivity.b.removeView(view);
        }
    }

    @Override // defpackage.ProjectionSessionLifecycleListener_bag
    public final /* synthetic */ void h(ProjectionSession bblVar) {
    }
}
