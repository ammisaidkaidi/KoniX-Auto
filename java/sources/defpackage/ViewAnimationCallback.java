package defpackage;

import android.view.View;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ViewAnimationCallback implements PrimesLatchCallback {
    final /* synthetic */ View a;
    final /* synthetic */ ViewGroup b;
    final /* synthetic */ FrameworkTransitionWrapper c;
    final /* synthetic */ SpecialEffectsController d;

    public ViewAnimationCallback(View view, ViewGroup viewGroup, FrameworkTransitionWrapper beVar, SpecialEffectsController dlVar) {
        this.a = view;
        this.b = viewGroup;
        this.c = beVar;
        this.d = dlVar;
    }

    @Override // defpackage.PrimesLatchCallback
    public final void a() {
        this.a.clearAnimation();
        this.b.endViewTransition(this.a);
        this.c.b();
        if (FragmentManagerImpl.R(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("Animation from operation ");
            StaggeredGridLayoutParams.append(this.d);
            StaggeredGridLayoutParams.append(" has been cancelled.");
        }
    }
}
