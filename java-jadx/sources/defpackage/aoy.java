package defpackage;

import android.content.Context;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aoy extends rn {
    final float m;
    final float n;
    final float o;
    final Interpolator p;

    public aoy(Context context) {
        super(context);
        float a = aro.a(context.getResources(), R.dimen.car_ui_scrollbar_milliseconds_per_inch);
        this.m = a;
        this.n = aro.a(context.getResources(), R.dimen.car_ui_scrollbar_deceleration_times_divisor);
        this.p = new DecelerateInterpolator(aro.a(context.getResources(), R.dimen.car_ui_scrollbar_decelerate_interpolator_factor));
        this.o = a / context.getResources().getDisplayMetrics().densityDpi;
    }

    @Override // defpackage.rn
    protected final int e(int i) {
        return (int) Math.ceil(f(i) / this.n);
    }

    @Override // defpackage.rn
    protected final int f(int i) {
        return (int) Math.ceil(Math.abs(i) * this.o);
    }

    @Override // defpackage.rn
    protected final int g() {
        return -1;
    }

    @Override // defpackage.rn
    protected final void j(View view, rl rlVar) {
        int e;
        int d = d(view, -1);
        if (d != 0 && (e = e(d)) > 0) {
            rlVar.b(0, -d, e, this.p);
        }
    }
}
