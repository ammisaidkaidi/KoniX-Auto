package defpackage;

import android.animation.ValueAnimator;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class hu implements ValueAnimator.AnimatorUpdateListener {
    final /* synthetic */ kf a;

    public hu(kf kfVar) {
        this.a = kfVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        ((View) this.a.a.c.getParent()).invalidate();
    }
}
