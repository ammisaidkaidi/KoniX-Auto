package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DefaultSpecialEffectsController extends SpecialEffectsController {
    private final FragmentStateManager g;

    public DefaultSpecialEffectsController(int i, int i2, FragmentStateManager cxVar, PrimesConditionLatch xvVar) {
        super(i, i2, cxVar.c, xvVar);
        this.g = cxVar;
    }

    @Override // defpackage.SpecialEffectsController
    public final void a() {
        super.a();
        this.g.d();
    }

    @Override // defpackage.SpecialEffectsController
    public final void b() {
        if (this.f == 2) {
            AndroidxFragment brVar = this.g.c;
            View findFocus = brVar.P.findFocus();
            if (findFocus != null) {
                brVar.R(findFocus);
                if (FragmentManagerImpl.R(2)) {
                    StringBuilder sb = new StringBuilder();
                    StaggeredGridLayoutParams.append("requestFocus: Saved focused view ");
                    StaggeredGridLayoutParams.append(findFocus);
                    StaggeredGridLayoutParams.append(" for Fragment ");
                    StaggeredGridLayoutParams.append(brVar);
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
            FragmentSavedStateHolder boVar = brVar.S;
            B.setAlpha(boVar == null ? 1.0f : boVar.l);
        }
    }
}
