package defpackage;

import com.google.android.apps.auto.aareceiver.ui.ProjectionDeviceDisambiguationActivity;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bft implements tq {
    final /* synthetic */ bfu a;

    public bft(bfu bfuVar) {
        this.a = bfuVar;
    }

    @Override // defpackage.tq
    public final void a() {
        bfu bfuVar = this.a;
        if (bfuVar.a) {
            return;
        }
        bfuVar.a = true;
        Object aT = bfuVar.aT();
        ProjectionDeviceDisambiguationActivity projectionDeviceDisambiguationActivity = (ProjectionDeviceDisambiguationActivity) bfuVar;
        ass assVar = (ass) aT;
        projectionDeviceDisambiguationActivity.d = (bah) assVar.a.p.a();
        projectionDeviceDisambiguationActivity.e = (bcj) assVar.a.l.a();
    }
}
