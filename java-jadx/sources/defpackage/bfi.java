package defpackage;

import android.view.SurfaceView;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class bfi extends bfq {
    private gy a;
    private final bfh b;
    public azy v;
    protected bgz w;
    protected View x;
    protected SurfaceView y;
    protected boolean z;

    public bfi() {
        caa.a.a();
        this.z = true;
        this.b = new bfh(this);
    }

    protected abstract SurfaceView l();

    protected abstract View m();

    protected abstract bhd n();

    public abstract ckb o();

    @Override // android.app.Activity
    protected void onDestroy() {
        bgz bgzVar;
        super.onDestroy();
        gy gyVar = this.a;
        if (gyVar != null) {
            gyVar.b();
        }
        if (!diz.a.a().a()) {
            azy azyVar = this.v;
            bbl bblVar = azyVar.i.h;
            if (bblVar != null) {
                bblVar.f();
            }
            azyVar.f = true;
        }
        if (!dkj.c() && (bgzVar = this.w) != null) {
            bgzVar.e();
        }
        s();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.z = true;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.z && this.w != null) {
            this.v.g(o(), 1);
        }
        this.z = false;
    }

    @Override // android.app.Activity
    protected final void onStop() {
        super.onStop();
        bgz bgzVar = this.w;
        if (bgzVar == null || !bgzVar.j()) {
            return;
        }
        this.v.g(o(), 2);
    }

    protected abstract void s();

    protected abstract bey u();

    protected final void v() {
        if (!dju.c() || m() == null) {
            return;
        }
        this.a = gy.a(m(), new bfg(this, 0));
    }

    protected final void w() {
        if (this.w == null) {
            this.w = new bgz(this.v, this.b, m(), l(), u(), n(), o());
        }
    }

    final void x() {
        s();
        bgz bgzVar = this.w;
        if (bgzVar != null) {
            bgzVar.e();
        }
        if (isFinishing()) {
            return;
        }
        finish();
    }
}
