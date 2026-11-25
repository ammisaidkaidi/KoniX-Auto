package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentAnimListenerAdapter extends AnimatorListenerAdapter {
    final /* synthetic */ ViewGroup a;
    final /* synthetic */ View b;
    final /* synthetic */ boolean c;
    final /* synthetic */ SpecialEffectsController d;
    final /* synthetic */ FrameworkTransitionWrapper e;

    public FragmentAnimListenerAdapter(ViewGroup viewGroup, View view, boolean z, SpecialEffectsController dlVar, FrameworkTransitionWrapper beVar) {
        this.a = viewGroup;
        this.b = view;
        this.c = z;
        this.d = dlVar;
        this.e = beVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.a.endViewTransition(this.b);
        if (this.c) {
            r.o(this.d.e, this.b);
        }
        this.e.b();
        if (FragmentManagerImpl.R(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("Animator from operation ");
            StaggeredGridLayoutParams.append(this.d);
            StaggeredGridLayoutParams.append(" has ended.");
        }
    }
}
