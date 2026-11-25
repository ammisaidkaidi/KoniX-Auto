package defpackage;

import android.view.View;
import com.google.android.apps.auto.aareceiver.ui.ProjectionDeviceDisambiguationActivity;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bfz implements bag {
    final /* synthetic */ ProjectionDeviceDisambiguationActivity a;

    public bfz(ProjectionDeviceDisambiguationActivity projectionDeviceDisambiguationActivity) {
        this.a = projectionDeviceDisambiguationActivity;
    }

    @Override // defpackage.bag
    public final void f(awo awoVar) {
        this.a.b(awoVar);
    }

    @Override // defpackage.bag
    public final void g(awo awoVar) {
        ProjectionDeviceDisambiguationActivity projectionDeviceDisambiguationActivity = this.a;
        View view = (View) projectionDeviceDisambiguationActivity.c.remove(awoVar);
        if (view != null) {
            projectionDeviceDisambiguationActivity.b.removeView(view);
        }
    }

    @Override // defpackage.bag
    public final /* synthetic */ void h(bbl bblVar) {
    }
}
