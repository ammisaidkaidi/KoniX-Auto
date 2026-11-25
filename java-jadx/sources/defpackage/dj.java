package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dj extends dl {
    private final cx g;

    public dj(int i, int i2, cx cxVar, xv xvVar) {
        super(i, i2, cxVar.c, xvVar);
        this.g = cxVar;
    }

    @Override // defpackage.dl
    public final void a() {
        super.a();
        this.g.d();
    }

    @Override // defpackage.dl
    public final void b() {
        if (this.f == 2) {
            br brVar = this.g.c;
            View findFocus = brVar.P.findFocus();
            if (findFocus != null) {
                brVar.R(findFocus);
                if (cr.R(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("requestFocus: Saved focused view ");
                    sb.append(findFocus);
                    sb.append(" for Fragment ");
                    sb.append(brVar);
                }
            }
            View B = this.a.B();
            if (B.getParent() == null) {
                this.g.a();
                B.setAlpha(0.0f);
            }
            if (B.getAlpha() == 0.0f && B.getVisibility() == 0) {
                B.setVisibility(4);
            }
            bo boVar = brVar.S;
            B.setAlpha(boVar == null ? 1.0f : boVar.l);
        }
    }
}
