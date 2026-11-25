package defpackage;

import android.animation.ValueAnimator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class pg implements Runnable {
    final /* synthetic */ pk a;

    public pg(pk pkVar) {
        this.a = pkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        pk pkVar = this.a;
        switch (pkVar.q) {
            case 1:
                pkVar.p.cancel();
                break;
            case 2:
                break;
            default:
                return;
        }
        pkVar.q = 3;
        ValueAnimator valueAnimator = pkVar.p;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
        pkVar.p.setDuration(500L);
        pkVar.p.start();
    }
}
