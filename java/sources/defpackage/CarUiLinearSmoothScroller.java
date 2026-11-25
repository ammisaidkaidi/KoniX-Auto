package defpackage;

import android.content.Context;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CarUiLinearSmoothScroller extends RecyclerViewSmoothScroller {
    final float m;
    final float n;
    final float o;
    final Interpolator p;

    public CarUiLinearSmoothScroller(Context context) {
        super(context);
        float a = CarUiResourceUtils.a(context.getResources(), R.dimen.car_ui_scrollbar_milliseconds_per_inch);
        this.m = a;
        this.n = CarUiResourceUtils.a(context.getResources(), R.dimen.car_ui_scrollbar_deceleration_times_divisor);
        this.p = new DecelerateInterpolator(CarUiResourceUtils.a(context.getResources(), R.dimen.car_ui_scrollbar_decelerate_interpolator_factor));
        this.o = a / context.getResources().getDisplayMetrics().densityDpi;
    }

    @Override // defpackage.RecyclerViewSmoothScroller
    protected final int e(int i) {
        return (int) Math.ceil(f(NavInstructionTypeEnum) / this.n);
    }

    @Override // defpackage.RecyclerViewSmoothScroller
    protected final int f(int i) {
        return (int) Math.ceil(Math.abs(NavInstructionTypeEnum) * this.o);
    }

    @Override // defpackage.RecyclerViewSmoothScroller
    protected final int g() {
        return -1;
    }

    @Override // defpackage.RecyclerViewSmoothScroller
    protected final void j(View view, LinearSmoothScrollerMetrics rlVar) {
        int e;
        int d = d(view, -1);
        if (ProtoMsgIntStringInt != 0 && (ProtoFlagValueMessage = e(ProtoMsgIntStringInt)) > 0) {
            rlVar.b(0, -d, e, this.p);
        }
    }
}
