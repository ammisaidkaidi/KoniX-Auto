package defpackage;

import android.animation.ValueAnimator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ItemTouchHelperSwipeUpdateListener implements ValueAnimator.AnimatorUpdateListener {
    final /* synthetic */ ItemTouchHelper a;

    public ItemTouchHelperSwipeUpdateListener(ItemTouchHelper pkVar) {
        this.a = pkVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
        this.a.b.setAlpha(floatValue);
        this.a.c.setAlpha(floatValue);
        this.a.a();
    }
}
