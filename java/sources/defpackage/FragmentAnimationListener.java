package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentAnimationListener implements Animation.AnimationListener {
    final /* synthetic */ SpecialEffectsController a;
    final /* synthetic */ ViewGroup b;
    final /* synthetic */ View c;
    final /* synthetic */ FrameworkTransitionWrapper d;

    public FragmentAnimationListener(SpecialEffectsController dlVar, ViewGroup viewGroup, View view, FrameworkTransitionWrapper beVar) {
        this.a = dlVar;
        this.b = viewGroup;
        this.c = view;
        this.d = beVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.b.post(new FragmentManagerPostedRunnable(this));
        if (FragmentManagerImpl.R(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("Animation from operation ");
            StaggeredGridLayoutParams.append(this.a);
            StaggeredGridLayoutParams.append(" has ended.");
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
        if (FragmentManagerImpl.R(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("Animation from operation ");
            StaggeredGridLayoutParams.append(this.a);
            StaggeredGridLayoutParams.append(" has reached onAnimationStart.");
        }
    }
}
