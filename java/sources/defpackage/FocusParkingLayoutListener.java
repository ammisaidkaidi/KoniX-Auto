package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.ViewTreeObserver;
import com.android.car.ui.FocusParkingView;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FocusParkingLayoutListener implements ViewTreeObserver.OnGlobalLayoutListener {
    final /* synthetic */ RecyclerView a;
    final /* synthetic */ FocusParkingView b;

    public FocusParkingLayoutListener(FocusParkingView focusParkingView, RecyclerView recyclerView) {
        this.b = focusParkingView;
        this.a = recyclerView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        this.a.sendAccessibilityEvent(8);
        this.b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
}
