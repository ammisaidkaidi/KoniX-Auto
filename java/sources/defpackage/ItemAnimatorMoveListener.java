package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ItemAnimatorMoveListener extends AnimatorListenerAdapter {
    final /* synthetic */ RecyclerViewViewHolder a;
    final /* synthetic */ ViewPropertyAnimator b;
    final /* synthetic */ View c;
    final /* synthetic */ DefaultItemAnimator d;

    public ItemAnimatorMoveListener(DefaultItemAnimator qvVar, RecyclerViewViewHolder rrVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.d = qvVar;
        this.a = rrVar;
        this.b = viewPropertyAnimator;
        this.c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.b.setListener(null);
        this.c.setAlpha(1.0f);
        this.d.a(this.a);
        this.d.k.remove(this.a);
        this.d.g();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
