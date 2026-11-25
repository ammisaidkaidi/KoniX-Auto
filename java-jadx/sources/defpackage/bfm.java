package defpackage;

import android.car.CarProjectionManager;
import com.google.android.apps.auto.aareceiver.ui.AndroidAutoHeadunitActivity;
import j$.util.Optional;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class bfm extends bfi {
    private boolean a = false;

    public bfm() {
        j(new bfl(this));
    }

    @Override // defpackage.bfq
    protected final void y() {
        if (this.a) {
            return;
        }
        this.a = true;
        AndroidAutoHeadunitActivity androidAutoHeadunitActivity = (AndroidAutoHeadunitActivity) this;
        ass assVar = (ass) aT();
        androidAutoHeadunitActivity.v = (azy) assVar.a.z.a();
        androidAutoHeadunitActivity.l = (CarProjectionManager) assVar.a.j.a();
        androidAutoHeadunitActivity.m = (bah) assVar.a.p.a();
        androidAutoHeadunitActivity.n = (awh) assVar.a.E.a();
        androidAutoHeadunitActivity.u = axu.c(assVar.a.a.a);
        androidAutoHeadunitActivity.o = assVar.a.d();
        androidAutoHeadunitActivity.p = (bcj) assVar.a.l.a();
        androidAutoHeadunitActivity.t = (bed) assVar.a.M.a();
        atj atjVar = assVar.a;
        androidAutoHeadunitActivity.q = ((bcj) atjVar.l.a()).d() ? Optional.of(((bhe) atjVar.N).a()) : Optional.empty();
        androidAutoHeadunitActivity.r = (bde) assVar.a.x.a();
        androidAutoHeadunitActivity.s = (ayf) assVar.a.t.a();
    }
}
