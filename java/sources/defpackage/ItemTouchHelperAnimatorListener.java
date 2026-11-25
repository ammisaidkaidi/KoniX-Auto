package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ItemTouchHelperAnimatorListener extends AnimatorListenerAdapter {
    final /* synthetic */ ItemTouchHelper a;
    private boolean b = false;

    public ItemTouchHelperAnimatorListener(ItemTouchHelper pkVar) {
        this.a = pkVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.b = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.b) {
            this.b = false;
            return;
        }
        if (((Float) this.a.p.getAnimatedValue()).floatValue() == 0.0f) {
            ItemTouchHelper pkVar = this.a;
            pkVar.q = 0;
            pkVar.b(0);
        } else {
            ItemTouchHelper pkVar2 = this.a;
            pkVar2.q = 2;
            pkVar2.a();
        }
    }
}
