package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ItemAnimatorChangeNewListener extends AnimatorListenerAdapter {
    final /* synthetic */ ItemAnimatorChangeInfo a;
    final /* synthetic */ ViewPropertyAnimator b;
    final /* synthetic */ View c;
    final /* synthetic */ DefaultItemAnimator d;

    public ItemAnimatorChangeNewListener(DefaultItemAnimator qvVar, ItemAnimatorChangeInfo paVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.d = qvVar;
        this.a = paVar;
        this.b = viewPropertyAnimator;
        this.c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.b.setListener(null);
        this.c.setAlpha(1.0f);
        this.c.setTranslationX(0.0f);
        this.c.setTranslationY(0.0f);
        this.d.a(this.a.b);
        this.d.l.remove(this.a.b);
        this.d.g();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        RecyclerViewViewHolder rrVar = this.a.b;
    }
}
